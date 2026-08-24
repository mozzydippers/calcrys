#include "config.h"
#include "debug.h"
#include "types.h"

#include "constants/ability.h"
#include "constants/battle_script_constants.h"
#include "constants/file.h"
#include "constants/hold_item_effects.h"
#include "constants/item.h"
#include "constants/move_effects.h"
#include "constants/moves.h"
#include "constants/species.h"

#include "battle.h"
#include "pokemon.h"
#include "sound.h"

void AnimScrCmd_ChangePermanentBattleBackground(ANIM_CMD_STRUCT *animCmdStruct);

ALIGN4 const anim_scr_cmd_func gNewAnimScrTable[] = {
    [0x58 - NUM_VANILLA_ANIM_SCRIPT_COMMANDS] = AnimScrCmd_ChangePermanentBattleBackground,
};

anim_scr_cmd_func GrabAnimScriptCommand(u32 command)
{
    if (command >= NUM_VANILLA_ANIM_SCRIPT_COMMANDS) {
        return gNewAnimScrTable[command - NUM_VANILLA_ANIM_SCRIPT_COMMANDS];
    }
    return gAnimScrTable[command];
}

void AnimScrCmd_ChangePermanentBattleBackground(ANIM_CMD_STRUCT *animCmdStruct)
{
    u32 bg, terrain;
    struct BattleSystem *bw = gBattleSystem;
    animCmdStruct->animScriptPtr++;

    bg = *(animCmdStruct->animScriptPtr);
    animCmdStruct->animScriptPtr++;

    terrain = *(animCmdStruct->animScriptPtr);
    animCmdStruct->animScriptPtr++;

    if (bg == -1u) {
        bg = bw->sp->original_bgId;
    }
    if (terrain == -1u) {
        terrain = bw->sp->original_terrain;
    }
    LoadDifferentBattleBackground(bw, bg, terrain);
}

// if the form is nonzero, then ensure the PlayCry command just plays the cry itself and return
BOOL AnimCmd_PlayCryEdit(u32 client)
{
    struct BattleStruct *sp = gBattleSystem->sp;
    u32 form = sp->battlemon[client].form_no;
    if (form) {
        PlayCry(sp->battlemon[client].species, form);
    }
    return form != 0;
}

#ifdef DEBUG_BATTLE_SCENARIOS
BOOL LONG_CALL CheckTrainerMessage(struct BattleSystem *battleSystem UNUSED, struct BattleStruct *ctx UNUSED)
{
    return FALSE;
}
#else
BOOL LONG_CALL CheckTrainerMessage(struct BattleSystem *battleSystem, struct BattleStruct *ctx)
{
    int state = BattleTypeGet(battleSystem); // note: this should be battleType for the following three if statements, but it won't match if an additional variable is used
    int trainerIndex;

    if (state & 0x84) {
        return FALSE;
    }

    if (!(state & BATTLE_TYPE_TRAINER)) {
        return FALSE;
    }

    if (state & BATTLE_TYPE_DOUBLES) {
        return FALSE;
    }

    trainerIndex = BattleWork_GetTrainerIndex(battleSystem, 1);
    state = 0;

    do {
        switch (state) {
        case 0:
            if (ctx->battlemon[1].hit_count == 1 && !(ctx->server_status_flag2 & BATTLE_STATUS2_FIRST_DAMAGE_MESSAGE) && TrainerMessageWithIdPairExists(trainerIndex, 13, HEAPID_BATTLE_HEAP)) {
                ctx->server_status_flag2 |= BATTLE_STATUS2_FIRST_DAMAGE_MESSAGE;
                ctx->msg_work = TEXT_HIT_POKEMON_FIRST_TIME;
                return TRUE;
            }
            state++;
            break;
        case 1:
            if (!(ctx->battlemon[1].message_flag & 2) && ctx->battlemon[1].hp <= ctx->battlemon[1].maxhp / 2 && TrainerMessageWithIdPairExists(trainerIndex, 14, HEAPID_BATTLE_HEAP)) {
                ctx->battlemon[1].message_flag |= 2;
                ctx->msg_work = TEXT_CURRENT_MON_CRITICAL;
                return TRUE;
            }
            state++;
            break;
        case 2:
            if (!(ctx->battlemon[1].message_flag & 3)) {
                int i;
                int aliveMons;
                struct Party *party;
                struct PartyPokemon *mon;

                party = BattleWorkPokePartyGet(battleSystem, 1);
                aliveMons = 0;

                for (i = 0; i < Party_GetCount(party); i++) {
                    mon = Party_GetMonByIndex(party, i);
                    if (GetMonData(mon, MON_DATA_HP, NULL)) {
                        aliveMons++;
                    }
                }
                if (aliveMons == 1 && TrainerMessageWithIdPairExists(trainerIndex, 15, HEAPID_BATTLE_HEAP)) {
                    ctx->battlemon[1].message_flag |= 3;
                    ctx->msg_work = TEXT_LAST_MON_SENT_OUT;
                    return TRUE;
                }
            }
            state++;
            break;
        case 3:
            if (!(ctx->battlemon[1].message_flag & 4)) {
                int i;
                int aliveMons;
                struct Party *party;
                struct PartyPokemon *mon;

                party = BattleWorkPokePartyGet(battleSystem, 1);
                aliveMons = 0;

                for (i = 0; i < Party_GetCount(party); i++) {
                    mon = Party_GetMonByIndex(party, i);
                    if (GetMonData(mon, MON_DATA_HP, NULL)) {
                        aliveMons++;
                    }
                }
                if (aliveMons == 1 && (ctx->battlemon[1].hp <= ctx->battlemon[1].maxhp / 2) && TrainerMessageWithIdPairExists(trainerIndex, 16, HEAPID_BATTLE_HEAP)) {
                    ctx->battlemon[1].message_flag |= 4;
                    ctx->msg_work = 16;
                    return TRUE;
                }
            }
            state++;
            break;
        case 4:
            break;
        }
    } while (state != 4);

    return FALSE;
}
#endif // DEBUG_BATTLE_SCENARIOS
