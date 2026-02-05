#include "../../include/battle.h"
#include "../../include/battle_controller_player.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/battle_variations.h"

void overrideItemUsage(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    MESSAGE_PARAM mp;
    int battlerId;
    u32 fight_type = BattleTypeGet(bsys);
    u32 battleVariation = bsys->battleSpecial;

    for (battlerId = 0; battlerId < bsys->maxBattlers; battlerId++)
    {
        if (ctx->playerActions[battlerId][0] == CONTROLLER_COMMAND_ITEM_INPUT && ctx->com_seq_no[battlerId] == 7)
        {
#ifdef DISABLE_ITEMS_IN_TRAINER_BATTLE
            if ((fight_type & BATTLE_TYPE_TRAINER) || (battleVariation & BATTLE_SPECIAL_NO_ITEMS))
#else
            if (battleVariation & BATTLE_SPECIAL_NO_ITEMS)
#endif
            {
                mp.msg_id = BATTLE_MSG_ITEMS_CANT_BE_USED_HERE; //msg.id  = msg_0197_00593; // Items can't be used here
                mp.msg_tag = TAG_NONE;
                ov12_022639B8(bsys, battlerId, mp);
                ctx->com_seq_no[battlerId] = SSI_STATE_15;
                ctx->ret_seq_no[battlerId] = SSI_STATE_SELECT_COMMAND_INIT;
            }
        }

        if (ctx->playerActions[battlerId][0] == CONTROLLER_COMMAND_RUN_INPUT && ctx->com_seq_no[battlerId] == 11)
        {
            if (battleVariation & BATTLE_SPECIAL_NO_ITEMS)
            {
                mp.msg_id = 779; // empty message
                mp.msg_tag = TAG_NONE;
                ctx->com_seq_no[battlerId] = SSI_STATE_15;
                ctx->ret_seq_no[battlerId] = SSI_STATE_SELECT_COMMAND_INIT;
            }
        }
    }
}

BOOL LONG_CALL BattleContext_Main(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    if (!ctx->fight_end_flag)
    {
        if (BattleSystem_GetBattleOutcomeFlags(bsys) && !(BattleSystem_GetBattleOutcomeFlags(bsys) & 0x40))
        {
            ctx->server_seq_no = CONTROLLER_COMMAND_42;
        }
    }

    sPlayerBattleCommands[ctx->server_seq_no](bsys, ctx);

    overrideItemUsage(bsys, ctx);

    if (ctx->server_seq_no == CONTROLLER_COMMAND_45)
    {
        return TRUE;
    }
    return FALSE;
}
