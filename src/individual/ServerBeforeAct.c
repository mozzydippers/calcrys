
#include "config.h"
#include "types.h"

#include "constants/ability.h"
#include "constants/battle_script_constants.h"
#include "constants/file.h"
#include "constants/item.h"
#include "constants/move_effects.h"
#include "constants/moves.h"
#include "constants/species.h"
#include "constants/system_control.h"

#include "battle.h"
#include "dynamax.h"
#include "item.h"
#include "mega.h"
#include "overlay.h"
#include "pokemon.h"
#include "tera.h"
#include "z_moves.h"
#ifdef DEBUG_BATTLE_SCENARIOS
#include "test_battle.h"
#endif

static BOOL MegaEvolutionOrUltraBurst(struct BattleSystem *bsys, struct BattleStruct *ctx);
static BOOL Dynamax(struct BattleSystem *bsys, struct BattleStruct *ctx);
static BOOL Terastallize(struct BattleSystem *bsys, struct BattleStruct *ctx);
static BOOL AICheckCanUseZMove(struct BattleStruct *ctx, int client);
static BOOL IsInPowerSpot();
static BOOL AICheckCanDynamax(struct BattleSystem *bsys, struct BattleStruct *ctx, int client);
static BOOL AICheckCanTerastallize(struct BattleSystem *bsys, struct BattleStruct *ctx, int client);

/********************************************************************************************************************/
/********************************************************************************************************************/
//                                                寶可夢出招式之前要發生的事情
/********************************************************************************************************************/
/********************************************************************************************************************/

// https://victoryroadvgc.com/2018/09/04/priority-bracket-analysis/
// https://bulbapedia.bulbagarden.net/wiki/Priority
// https://github.com/pret/pokeplatinum/blob/1422848525cf1ce0cc89348f3b63fec8d086596a/src/battle/battle_controller.c#L707
// Custap Berry message
// https://youtu.be/EdCQVBqlRe4?t=337
// reset stuff -> random speed roll -> Quick Claw / Custap Berry / O-Powers -> Switching (handle Mega Evolving a mon then use Pursuit if needed) / Rotating / Using iterms / Running / Focus Punch / Beak Blast / Shell Trap / Mega Evolution / Dynamaxing -> Terastallizing

/**
 *  @brief actions that take precedence over all moves
 *         loads in battle sub script and queues it up by setting server_seq_no to 22
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
void __attribute__((section(".init"))) ServerBeforeActInternal(struct BattleSystem *bw, struct BattleStruct *sp)
{
    int ret;
    int client_no;
    int client_set_max;
    int tempSequenceNumber = sp->server_seq_no;
    int tempMoveStatusFlag = sp->waza_status_flag;
    int script;
    int command;

#ifdef DEBUG_BEFORE_MOVE_LOGIC
    debug_printf("In ServerBeforeActInternal\n");
#endif

    ret = 0;
    u32 flag = FALSE;
    client_set_max = BattleWorkClientSetMaxGet(bw);

    // debug_printf("In ServerBeforeAct\n");
    // debug_printf("%d\n", sp->sba_seq_no);

    do {
        // Here we recalculate the execution order without considering who has already performed
        // their action because this function takes place before anyone has performed an action
        BattleControllerPlayer_CalcExecutionOrder(bw, sp);

        switch (sp->sba_seq_no) {
        case SBA_RESET_DEFIANT: {
            // debug_printf("In SBA_RESET_DEFIANT\n");
#ifdef DEBUG_BATTLE_SCENARIOS
            debug_printf("--- Turn %d ---\n", sp->total_turn);
#endif

            CalcPriorityAndQuickClawCustapBerry(bw, sp);

            for (client_no = 0; client_no < client_set_max; client_no++) {
                sp->oneSelfFlag[client_no].defiant_flag = 0;
            }
            sp->sba_work = 0;
            sp->sba_seq_no++;
            break;
        }
        case SBA_RESET_FURY_CUTTER: {
            // debug_printf("In SBA_RESET_FURY_CUTTER\n");

            for (client_no = 0; client_no < client_set_max; client_no++) {
                if (((sp->battlemon[client_no].condition & 7) != 0) || (GetBattlerSelectedMove(sp, client_no) != MOVE_FURY_CUTTER) || (ST_CheckIfInTruant(sp, client_no) != FALSE) || (sp->oneTurnFlag[client_no].struggle_flag != 0)) {
                    sp->battlemon[client_no].moveeffect.furyCutterCount = 0;
                }
            }
            sp->sba_seq_no++;
            break;
        }
        case SBA_RANDOM_SPEED_ROLL: {
            // debug_printf("In SBA_RANDOM_SPEED_ROLL\n");

            for (client_no = 0; client_no < CLIENT_MAX; client_no++) {
                sp->agi_rand[client_no] = BattleRand(bw);
            }
            sp->sba_seq_no++;
            break;
        }
        // TODO: Check correctness, probably need to move checks out of CalcSpeed
        case SBA_QUICK_CLAW_CUSTAP_BERRY_O_POWER_ACTIVATION: {
            // debug_printf("In SBA_QUICK_CLAW_CUSTAP_BERRY_O_POWER_ACTIVATION\n");

            ServerSenseiCheck(bw, sp); /// 先制之爪/釋陀果效果 80143E4h
            sp->sba_seq_no++;
            return;
        }
        case SBA_SET_GIMMICK_REQUEST_STATUS: {
            // debug_printf("In SBA_SET_GIMMICK_REQUEST_STATUS\n");

            for (client_no = 0; client_no < client_set_max; client_no++) {
#ifdef DEBUG_BATTLE_SCENARIOS
                newBS.playerWantMega = No2Bit(client_no);
#endif
                newBS.needZMove[client_no] = FALSE;
                newBS.needDynamax[client_no] = FALSE;
                flag = FALSE;
                if (sp->playerActions[0][3] != SELECT_ESCAPE_COMMAND && sp->playerActions[2][3] != SELECT_ESCAPE_COMMAND) {
                    // player requests mega
                    if (!(client_no & 1) && (newBS.playerWantMega & No2Bit(client_no)) != 0) {
                        if (CheckCanMega(sp, client_no)) {
                            sp->battlemon[client_no].canMega = 1;
                            flag = TRUE;
                        }

                        if (IS_DYNAMAXED(sp, client_no)) {
                            newBS.SideMaxMoveBaseMove[client_no] = GetBattlerSelectedMove(sp, client_no);
                        }
                    } else if ((client_no & 1) != 0 || (client_no == 2 && (bw->trainerId[client_no] != 0))) {
                        // ai requests mega
                        if (BattleTypeGet(bw) & (BATTLE_TYPE_TRAINER | BATTLE_TYPE_FRONTIER)) {
                            if (CheckCanMega(sp, client_no)) {
                                sp->battlemon[client_no].canMega = 1;
                                flag = TRUE;
                            } else if (AICheckCanUseZMove(sp, client_no)) {
                                newBS.needZMove[client_no] = TRUE;
                                newBS.SideZMoveBaseMove[client_no] = GetBattlerSelectedMove(sp, client_no);
                            } else if (AICheckCanDynamax(bw, sp, client_no)) {
                                newBS.needDynamax[client_no] = TRUE;
                                newBS.SideMaxMoveBaseMove[client_no] = GetBattlerSelectedMove(sp, client_no);
                            } else if (AICheckCanTerastallize(bw, sp, client_no)) {
                                newBS.needTerastallize[client_no] = TRUE;
                            }
                        }
                        // TODO: handle changing moves properly
                        if (IS_DYNAMAXED(sp, client_no)) {
                            newBS.SideMaxMoveBaseMove[client_no] = GetBattlerSelectedMove(sp, client_no);
                        }

                        if (flag) {
                            // 應該沒需要在這裡處理
                            // sp->battlemon[client_no].form_no = GrabMegaTargetForm(sp->battlemon[client_no].species, sp->battlemon[client_no].item);
                            // BattleFormChange(client_no, sp->battlemon[client_no].form_no, bw, sp, FALSE);
                            sp->battlemon[client_no].canMega = 1;
                            newBS.needMega[client_no] = MEGA_NEED;
                            if (!DoesSideHave2Battlers(bw, client_no)) {
                                int ally = BATTLER_ALLY(client_no);
                                newBS.SideMega[ally] = TRUE;
                            }
                        }
                    }
                }
            }

            sp->sba_seq_no++;
            break;
        }
        case SBA_ESCAPING: {
            // debug_printf("In SBA_ESCAPING\n");

            // TODO: this line allows handling Ball Fetch after using a ball
            script = SwitchInAbilityCheck(bw, sp);

            if (script) {
                // debug_printf("Detour SwitchInAbilityCheck\n");
                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, script);
                sp->next_server_seq_no = sp->server_seq_no;
                sp->server_seq_no = 22;
                return;
            }

            if (sp->sba_work >= client_set_max) {
                sp->sba_seq_no++;
                sp->sba_work = 0;
                break;
            }

            client_no = sp->executionOrder[sp->sba_work];

            sp->sba_work++;

            command = sp->playerActions[client_no][3];

            switch (command) {
            case SELECT_ESCAPE_COMMAND:
                // Try escaping first, then handle Mega Evolution
                // 先逃走，然後才處理超級進化

                // debug_printf("client %d: SELECT_ESCAPE_COMMAND\n", client_no);
                if ((BattleTypeGet(bw) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_BUG_CONTEST | BATTLE_TYPE_PAL_PARK)) == 0) {
                    BattleControllerPlayer_RunInput(bw, sp);
                    sp->next_server_seq_no = tempSequenceNumber;
                    sp->waza_status_flag = tempMoveStatusFlag;
                    sp->playerActions[client_no][3] = CONTROLLER_COMMAND_40;
                    sp->playerActions[client_no][0] = CONTROLLER_COMMAND_40;
                }
                return;
            default:
                break;
            }

            break;
        }
        case SBA_SWITCHING: {
            // debug_printf("In SBA_SWITCHING\n");

            // TODO: this line allows handling Ball Fetch after using a ball
            script = SwitchInAbilityCheck(bw, sp);

            if (script) {
                // debug_printf("Detour SwitchInAbilityCheck\n");
                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, script);
                sp->next_server_seq_no = sp->server_seq_no;
                sp->server_seq_no = 22;
                return;
            }

            if (sp->sba_work >= client_set_max) {
                sp->sba_seq_no++;
                sp->sba_work = 0;
                break;
            }

            client_no = sp->executionOrder[sp->sba_work];

            sp->sba_work++;

            command = sp->playerActions[client_no][3];

            switch (command) {
            case SELECT_POKEMON_COMMAND:
                // Try switching first, then handle Mega Evolution
                // 先切換，然後才處理超級進化

                // debug_printf("client %d: SELECT_POKEMON_COMMAND\n", client_no);
                if ((BattleTypeGet(bw) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_BUG_CONTEST | BATTLE_TYPE_PAL_PARK)) == 0) {
                    BattleControllerPlayer_PokemonInput(bw, sp);
                    sp->next_server_seq_no = tempSequenceNumber;
                    sp->waza_status_flag = tempMoveStatusFlag;
                    sp->playerActions[client_no][3] = CONTROLLER_COMMAND_40;
                    sp->playerActions[client_no][0] = CONTROLLER_COMMAND_40;
                }
                return;
            default:
                break;
            }

            break;
        }
        case SBA_ROTATING: {
            // debug_printf("In SBA_ROTATING\n");

            sp->sba_seq_no++;
            break;
        }
        case SBA_USING_ITEM: {
            // debug_printf("In SBA_USING_ITEM\n");

            // TODO: this line allows handling Ball Fetch after using a ball
            script = SwitchInAbilityCheck(bw, sp);

            if (script) {
                // debug_printf("Detour SwitchInAbilityCheck\n");
                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, script);
                sp->next_server_seq_no = sp->server_seq_no;
                sp->server_seq_no = 22;
                return;
            }

            if (sp->sba_work >= client_set_max) {
                sp->sba_seq_no++;
                sp->sba_work = 0;
                break;
            }

            client_no = sp->executionOrder[sp->sba_work];

            sp->sba_work++;

            command = sp->playerActions[client_no][3];

            switch (command) {
            case SELECT_ITEM_COMMAND:
                // Use item first, then handle Mega Evolution
                // 先使用道具，然後才處理超級進化

                // debug_printf("client %d: SELECT_ITEM_COMMAND\n", client_no);
                if ((BattleTypeGet(bw) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_BUG_CONTEST | BATTLE_TYPE_PAL_PARK)) == 0) {
                    BattleControllerPlayer_ItemInput(bw, sp);
                    sp->next_server_seq_no = tempSequenceNumber;
                    sp->waza_status_flag = tempMoveStatusFlag;
                    // CONTROLLER_COMMAND_40 makes the client not take an action, taken from BtlCmd_TryPursuit
                    // 參考 BtlCmd_TryPursuit ，令寶可夢不會行動
                    sp->playerActions[client_no][3] = CONTROLLER_COMMAND_40;
                    sp->playerActions[client_no][0] = CONTROLLER_COMMAND_40;
                }
                return;
            default:
                break;
            }

            break;
        }
        case SBA_MEGA_EVOLUTION_ULTRA_BURST: {
            // debug_printf("In SBA_MEGA_EVOLUTION_ULTRA_BURST\n");

            // 超級進化/究極爆發
            if (MegaEvolutionOrUltraBurst(bw, sp)) {
                return;
            }

            sp->sba_seq_no++;
            break;
        }
        // TODO
        case SBA_DYNAMAXING: {
            // debug_printf("In SBA_DYNAMAXING\n");

            // 極巨化
            if (Dynamax(bw, sp)) {
                return;
            }
            sp->sba_seq_no++;
            break;
        }
        // TODO
        case SBA_TERASTALLIZING: {
            // debug_printf("In SBA_TERASTALLIZING\n");

            // 太晶化
            if (Terastallize(bw, sp)) {
                return;
            }

            sp->sba_seq_no++;
            break;
        }
        // TODO: Implement moves
        case SBA_FOCUS_PUNCH_BEAK_BLAST_SHELL_TRAP: {
            // debug_printf("In SBA_FOCUS_PUNCH_BEAK_BLAST_SHELL_TRAP\n");
            while (sp->sba_work < client_set_max) {
                client_no = sp->executionOrder[sp->sba_work];
                if (sp->no_reshuffle_client & No2Bit(client_no)) {
                    sp->sba_work++;
                    continue;
                }
                sp->sba_work++;

                // 真氣拳
                if (((sp->battlemon[client_no].condition & 7) == 0) && (GetBattlerSelectedMove(sp, client_no) == MOVE_FOCUS_PUNCH) && (ST_CheckIfInTruant(sp, client_no) == FALSE) && (sp->oneTurnFlag[client_no].struggle_flag == 0)) {
                    SCIO_BlankMessage(bw);
                    sp->battlerIdTemp = client_no;
                    // decomp doesn't have this???
                    // sp->battlemon[client_no].form_no = 1; // ?
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, BATTLE_SUBSCRIPT_TIGHTEN_FOCUS);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    sp->oneTurnFlag[client_no].pendingFocusPunchFlag = TRUE;
                    return;
                }

                // 鳥嘴加農炮
                // TODO

                // 陷阱甲殼
                // TODO
            }
            sp->sba_work = 0;
            sp->sba_seq_no++;
            break;
        }
        case SBA_RAGE: {
            // debug_printf("In SBA_RAGE\n");
            for (client_no = 0; client_no < client_set_max; client_no++) {
                if ((sp->battlemon[client_no].condition2 & STATUS2_RAGE) && (GetBattlerSelectedMove(sp, client_no) != MOVE_RAGE)) {
                    sp->battlemon[client_no].condition2 &= ~STATUS2_RAGE;
                }
            }
            sp->sba_seq_no++;
            break;
        }
        case SBA_END: {
            // debug_printf("In SBA_END\n");
            sp->sba_seq_no = 0;
            ret = 2;
            break;
        }
        }
    } while (ret == 0);
    if (ret == 2) {
        sp->server_seq_no = CONTROLLER_COMMAND_8;
    }
}

/**
 *  @brief handle mega evolutions if queued up
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
static BOOL MegaEvolutionOrUltraBurst(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    int client_no, i;
    int client_set_max;

    client_set_max = BattleWorkClientSetMaxGet(bsys);
    for (i = 0; i < client_set_max; i++) {
        client_no = ctx->turnOrder[i];
        if (newBS.needMega[client_no] == MEGA_NEED && ctx->battlemon[client_no].hp) {
            if (client_no == 0) {
                newBS.PlayerMegaed = TRUE;
            }

            if (!DoesSideHave2Battlers(bsys, client_no)) {
                if (client_no == 0 || client_no == 2) {
                    newBS.PlayerMegaed = TRUE;
                }
            }

            if (IS_CLIENT_IN_ILLUSION(bsys, client_no)) {
                gIllusionStruct.dontRemoveIllusion = TRUE;
            }

            int form = ctx->battlemon[client_no].form_no;
            ctx->battlemon[client_no].form_no = GrabMegaTargetForm(ctx->battlemon[client_no].species, ctx->battlemon[client_no].item, form);

            // https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-9458017
            ctx->battlemon[client_no].condition2 &= ~STATUS2_DESTINY_BOND;

            BattleFormChange(client_no, ctx->battlemon[client_no].form_no, bsys, ctx, TRUE);

            newBS.needMega[client_no] = MEGA_CHECK_APPER;
            ctx->battlerIdTemp = client_no;
            if (CheckCanSpeciesMegaEvolveByMove(ctx, client_no)) {
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, BATTLE_SUBSCRIPT_HANDLE_MOVE_MEGA_EVOLUTION);
            } else {
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, BATTLE_SUBSCRIPT_HANDLE_MEGA_EVOLUTION); // load sequence 297 and execute
            }
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        if (newBS.needMega[client_no] == MEGA_CHECK_APPER && ctx->battlemon[client_no].hp) {
            newBS.needMega[client_no] = MEGA_NO_NEED;

            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        newBS.needMega[client_no] = MEGA_NO_NEED;
    }
    return FALSE;
}

// TODO: Does not handle limiting in doubles yet
static BOOL Dynamax(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    int client_no, i;
    int client_set_max;

    client_set_max = BattleWorkClientSetMaxGet(bsys);
    for (i = 0; i < client_set_max; i++) {
        client_no = ctx->turnOrder[i];
        if (newBS.needDynamax[client_no] && newBS.SideDynamax[client_no] == FALSE && ctx->battlemon[client_no].hp) {
            // TODO: fix this faulty check
            if (BattleTypeGet(bsys) & BATTLE_TYPE_MULTI) {
                if (client_no == 0 || (client_no == 2 && ctx->battlemon[client_no].id_no == ctx->battlemon[0].id_no)) {
                    newBS.SideDynamax[0] = TRUE;
                    newBS.SideDynamax[2] = TRUE;
                }
            } else if (client_no == 0 || client_no == 2) {
                newBS.SideDynamax[0] = TRUE;
                newBS.SideDynamax[2] = TRUE;
            } else {
                newBS.SideDynamax[client_no] = TRUE;
            }

            newBS.needDynamax[client_no] = FALSE;

            // https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-9458017
            ctx->battlemon[client_no].condition2 &= ~STATUS2_DESTINY_BOND;

            ctx->battlerIdTemp = client_no;

            struct PartyPokemon *mon = BattleWorkPokemonParamGet(bsys, client_no, ctx->sel_mons_no[client_no]);
            BOOL hasGigantamaxFactor = GetMonData(mon, MON_DATA_CAN_GIGANTAMAX, NULL);

            if (hasGigantamaxFactor) {
                ctx->battlemon[client_no].form_no = GetDynamaxedState(ctx->battlemon[client_no].species, ctx->battlemon[client_no].form_no, hasGigantamaxFactor);
                BattleFormChange(client_no, ctx->battlemon[client_no].form_no, bsys, ctx, FALSE);
            }

            // Might need to move this elsewhere later?
            ctx->isDynamaxedArray[client_no][ctx->sel_mons_no[client_no]] = TRUE;

            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, BATTLE_SUBSCRIPT_DYNAMAX);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
    }
    return FALSE;
}

// TODO: Does not handle limiting in doubles yet
static BOOL Terastallize(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    int client_no, i;
    int client_set_max;

    client_set_max = BattleWorkClientSetMaxGet(bsys);
    for (i = 0; i < client_set_max; i++) {
        client_no = ctx->turnOrder[i];
        if (newBS.needTerastallize[client_no] && newBS.sideTerastallize[client_no] == FALSE && ctx->battlemon[client_no].hp) {
            // TODO: fix this faulty check
            if (BattleTypeGet(bsys) & BATTLE_TYPE_MULTI) {
                if (client_no == 0 || (client_no == 2 && ctx->battlemon[client_no].id_no == ctx->battlemon[0].id_no)) {
                    newBS.sideTerastallize[0] = TRUE;
                    newBS.sideTerastallize[2] = TRUE;
                }
            } else if (client_no == 0 || client_no == 2) {
                newBS.sideTerastallize[0] = TRUE;
                newBS.sideTerastallize[2] = TRUE;
            } else {
                newBS.sideTerastallize[client_no] = TRUE;
            }

            newBS.needTerastallize[client_no] = FALSE;

            // https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-9458017
            ctx->battlemon[client_no].condition2 &= ~STATUS2_DESTINY_BOND;

            ctx->battlerIdTemp = client_no;

            if (ctx->battlemon[client_no].species == SPECIES_OGERPON) {
                GetOgerponTerastallizedFormPic(GetTeraType(bsys, ctx, client_no));
                // https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-9838633
                BOOL abilityRefresh = TRUE;
                if (AbilityFailSkillSwap(ctx->battlemon[client_no].ability)) {
                    abilityRefresh = FALSE;
                }
                ctx->battlemon[client_no].form_no = GetTerastallizedState(ctx->battlemon[client_no].species, ctx->battlemon[client_no].form_no);
                BattleFormChange(client_no, ctx->battlemon[client_no].form_no, bsys, ctx, abilityRefresh);
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, BATTLE_SUBSCRIPT_TERASTALLIZE);

            } else if (ctx->battlemon[client_no].species == SPECIES_TERAPAGOS) {
                ctx->battlemon[client_no].form_no = GetTerastallizedState(ctx->battlemon[client_no].species, ctx->battlemon[client_no].form_no);
                BattleFormChange(client_no, ctx->battlemon[client_no].form_no, bsys, ctx, TRUE);
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, BATTLE_SUBSCRIPT_TERASTALLIZE);
            } else {
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, BATTLE_SUBSCRIPT_TERASTALLIZE);
            }

            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
    }
    return FALSE;
}

BOOL AICheckCanUseZMove(struct BattleStruct *ctx, int client)
{
#ifdef DEBUG_Z_MOVE_LOGIC
    debug_printf("In AICheckCanUseZMove\n");
#endif

    int species = ctx->battlemon[client].species;

    int form = ctx->battlemon[client].form_no;

    int item = ctx->battlemon[client].item;

    int command = ctx->playerActions[client][3];

    int moveID = GetBattlerSelectedMove(ctx, client);

    struct BattleMove move = ctx->moveTbl[moveID];

    if (newBS.SideZMove[client]) {
        return FALSE;
    }

    if (ctx->playerActions[client][3] != SELECT_FIGHT_COMMAND) {
        return FALSE;
    }

    // No known data for Gen 8+ moves
    if (command == SELECT_FIGHT_COMMAND) {
        if (moveID >= MOVE_ZIPPY_ZAP) {
            return FALSE;
        }

        if (MoveIsZMove(moveID) || moveID == MOVE_STRUGGLE) {
            return FALSE;
        }

        BOOL canUseZMove = FALSE;
        if ((move.type == TYPE_NORMAL && item == ITEM_NORMALIUM_Z_HELD)
            || (move.type == TYPE_FIGHTING && item == ITEM_FIGHTINIUM_Z_HELD)
            || (move.type == TYPE_FLYING && item == ITEM_FLYINIUM_Z_HELD)
            || (move.type == TYPE_POISON && item == ITEM_POISONIUM_Z_HELD)
            || (move.type == TYPE_GROUND && item == ITEM_GROUNDIUM_Z_HELD)
            || (move.type == TYPE_ROCK && item == ITEM_ROCKIUM_Z_HELD)
            || (move.type == TYPE_BUG && item == ITEM_BUGINIUM_Z_HELD)
            || (move.type == TYPE_GHOST && item == ITEM_GHOSTIUM_Z_HELD)
            || (move.type == TYPE_STEEL && item == ITEM_STEELIUM_Z_HELD)
            || (move.type == TYPE_FIRE && item == ITEM_FIRIUM_Z_HELD)
            || (move.type == TYPE_WATER && item == ITEM_WATERIUM_Z_HELD)
            || (move.type == TYPE_GRASS && item == ITEM_GRASSIUM_Z_HELD)
            || (move.type == TYPE_ELECTRIC && item == ITEM_ELECTRIUM_Z_HELD)
            || (move.type == TYPE_PSYCHIC && item == ITEM_PSYCHIUM_Z_HELD)
            || (move.type == TYPE_ICE && item == ITEM_ICIUM_Z_HELD)
            || (move.type == TYPE_DRAGON && item == ITEM_DRAGONIUM_Z_HELD)
            || (move.type == TYPE_DARK && item == ITEM_DARKINIUM_Z_HELD)
            || (move.type == TYPE_FAIRY && item == ITEM_FAIRIUM_Z_HELD)
            // Only regular Pikachu can use Catastropika
            || (moveID == MOVE_VOLT_TACKLE && item == ITEM_PIKANIUM_Z_HELD && species == SPECIES_PIKACHU && form == 0)
            || (moveID == MOVE_THUNDERBOLT && item == ITEM_PIKASHUNIUM_Z_HELD && species == SPECIES_PIKACHU && form >= 7 && form <= 14)
            || (moveID == MOVE_THUNDERBOLT && item == ITEM_ALORAICHIUM_Z_HELD && species == SPECIES_RAICHU && form == 1)
            || (moveID == MOVE_LAST_RESORT && item == ITEM_EEVIUM_Z_HELD && species == SPECIES_EEVEE)
            || (moveID == MOVE_GIGA_IMPACT && item == ITEM_SNORLIUM_Z_HELD && species == SPECIES_SNORLAX)
            || (moveID == MOVE_PSYCHIC && item == ITEM_MEWNIUM_Z_HELD && species == SPECIES_MEW)
            || (moveID == MOVE_SPIRIT_SHACKLE && item == ITEM_DECIDIUM_Z_HELD && species == SPECIES_DECIDUEYE)
            || (moveID == MOVE_DARKEST_LARIAT && item == ITEM_INCINIUM_Z_HELD && species == SPECIES_INCINEROAR)
            || (moveID == MOVE_SPARKLING_ARIA && item == ITEM_PRIMARIUM_Z_HELD && species == SPECIES_PRIMARINA)
            || (moveID == MOVE_PLAY_ROUGH && item == ITEM_MIMIKIUM_Z_ITEM && species == SPECIES_MIMIKYU)
            || (moveID == MOVE_CLANGING_SCALES && item == ITEM_KOMMONIUM_Z_ITEM && species == SPECIES_KOMMO_O)
            || (moveID == MOVE_NATURES_MADNESS && item == ITEM_TAPUNIUM_Z_HELD
                && (species == SPECIES_TAPU_KOKO || species == SPECIES_TAPU_LELE || species == SPECIES_TAPU_BULU || species == SPECIES_TAPU_FINI))
            || (moveID == MOVE_SUNSTEEL_STRIKE && item == ITEM_SOLGANIUM_Z_ITEM
                && (species == SPECIES_SOLGALEO || (species == SPECIES_NECROZMA && form == 1)))
            || (moveID == MOVE_MOONGEIST_BEAM && item == ITEM_LUNALIUM_Z_ITEM
                && (species == SPECIES_LUNALA || (species == SPECIES_NECROZMA && form == 2)))
            || (moveID == MOVE_PHOTON_GEYSER && item == ITEM_ULTRANECROZIUM_Z_ITEM && (species == SPECIES_NECROZMA && (form == 3 || form == 4)))
            || (moveID == MOVE_SPECTRAL_THIEF && item == ITEM_MARSHADIUM_Z_HELD && species == SPECIES_MARSHADOW)) {
            canUseZMove = TRUE;
        }

        // For AI only
        if (move.power && canUseZMove) {
            return TRUE;
        }
    }
    return FALSE;
}

BOOL IsInPowerSpot()
{
    return TRUE;
}

BOOL AICheckCanDynamax(struct BattleSystem *bsys, struct BattleStruct *ctx, int client)
{
#ifdef DEBUG_DYNAMAX_LOGIC
    debug_printf("In AICheckCanDynamax\n");
#endif

    int species = ctx->battlemon[client].species;

    int command = ctx->playerActions[client][3];

    int moveID = GetBattlerSelectedMove(ctx, client);

#ifndef DEBUG_BATTLE_SCENARIOS
    struct BattleMove move = ctx->moveTbl[moveID];
    BOOL canDynamax = FALSE;
#endif

    if (newBS.SideDynamax[client]) {
#ifdef DEBUG_DYNAMAX_LOGIC
        debug_printf("Already Dynamaxed\n");
#endif
        return FALSE;
    }

    if (command != SELECT_FIGHT_COMMAND) {
#ifdef DEBUG_DYNAMAX_LOGIC
        debug_printf("Not attacking\n");
#endif
        return FALSE;
    }

    // No known data for Gen 9+ moves
    if (moveID >= MOVE_TERA_BLAST) {
#ifdef DEBUG_DYNAMAX_LOGIC
        debug_printf("Gen 9+ move\n");
#endif
        return FALSE;
    }

    if (IS_CLIENT_IN_ILLUSION_NO_ABILITY(bsys, client)) {
        struct PartyPokemon *illusionMon = Battle_GetClientPartyMon(bsys, client, gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(ctx, client)]);

        u32 illusionSpecies = GetMonData(illusionMon, MON_DATA_SPECIES, NULL);

        if (illusionSpecies == SPECIES_ZACIAN || illusionSpecies == SPECIES_ZAMAZENTA || illusionSpecies == SPECIES_ETERNATUS) {
#ifdef DEBUG_DYNAMAX_LOGIC
            debug_printf("Illusioned as species that cannot Dynamax\n");
#endif
            return FALSE;
        }
    }

    if (IsInPowerSpot() && species != SPECIES_ZACIAN && species != SPECIES_ZAMAZENTA && species != SPECIES_ETERNATUS) {
#ifdef DEBUG_DYNAMAX_LOGIC
        debug_printf("Can Dynamax\n");
#endif
#ifndef DEBUG_BATTLE_SCENARIOS
        canDynamax = TRUE;
#endif
    } else {
#ifdef DEBUG_DYNAMAX_LOGIC
        debug_printf("Not in Power Spot or species cannot Dynamax\n");
#endif
    }

#ifdef DEBUG_BATTLE_SCENARIOS
    struct TestBattleScenario *scenario = TestBattle_GetCurrentScenario();
    if (scenario->opponentDynamax) {
        return TRUE;
    }
#else
    // For AI only
    if (move.power && canDynamax) {
        struct PartyPokemon *mon = BattleWorkPokemonParamGet(bsys, client, ctx->sel_mons_no[client]);
        BOOL hasGigantamaxFactor = GetMonData(mon, MON_DATA_CAN_GIGANTAMAX, NULL);
#ifdef DEBUG_DYNAMAX_LOGIC
        debug_printf("Return %d\n", hasGigantamaxFactor);
#endif
        // return FALSE;
        return hasGigantamaxFactor;
    }
#endif

    return FALSE;
}

BOOL AICheckCanTerastallize(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int client)
{
#ifdef DEBUG_TERASTALLIZATION_LOGIC
    debug_printf("In AICheckCanTerastallize\n");
#endif

    int species = ctx->battlemon[client].species;

    int command = ctx->playerActions[client][3];

    if (newBS.sideTerastallize[client]) {
        return FALSE;
    }

    if (ctx->playerActions[client][3] != SELECT_FIGHT_COMMAND) {
        return FALSE;
    }

    if (command == SELECT_FIGHT_COMMAND) {
        if ((ctx->battlemon[client].condition2 & STATUS2_TRANSFORM) && (species == SPECIES_OGERPON || species == SPECIES_TERAPAGOS)) {
            return FALSE;
        }

#ifdef DEBUG_BATTLE_SCENARIOS
        struct TestBattleScenario *scenario = TestBattle_GetCurrentScenario();
        if (scenario->opponentTerastallize) {
            return TRUE;
        }
#else
        // For AI only
        if (species == SPECIES_OGERPON || species == SPECIES_TERAPAGOS) {
            return TRUE;
        }
#endif
    }
    return FALSE;
}
