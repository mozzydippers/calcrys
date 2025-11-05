#include "../../include/battle.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/item.h"
#include "../../include/message.h"
#include "../../include/types.h"

static int GetKeyStoneVariantFromTrainerClass(int trainerClass)
{
    switch (trainerClass) {
    default:
        return ITEM_KEY_STONE;
        break;
    }
}

// Example use case:
// You are challenged by Mela of Team Star!
// You will need to change 730.txt as well
const u8 OrganizationTrainerClassList[] = {
    // TRAINERCLASS_EXECUTIVE_ARIANA,
    // TRAINERCLASS_EXECUTIVE_ARCHER,
    // TRAINERCLASS_EXECUTIVE_PROTON,
    // TRAINERCLASS_EXECUTIVE_PETREL,
    // TRAINERCLASS_ROCKET_BOSS,
};

// Example use case:
// You are challenged by the Team Star Grunt!
const u8 GruntTrainerClassList[] = {
    // TRAINERCLASS_TEAM_ROCKET,
    // TRAINERCLASS_TEAM_ROCKET_F,
};

static BOOL IsOrganizationTrainerClass(u8 trainerClass)
{
    for (u8 i = 0; i < NELEMS(OrganizationTrainerClassList); i++) {
        if (trainerClass == OrganizationTrainerClassList[i]) {
            return TRUE;
        }
    }
    return FALSE;
}

static BOOL IsGruntTrainerClass(u8 trainerClass)
{
    for (u8 i = 0; i < NELEMS(GruntTrainerClassList); i++) {
        if (trainerClass == GruntTrainerClassList[i]) {
            return TRUE;
        }
    }
    return FALSE;
}

void BattleSystem_BufferMessage(struct BattleSystem *bsys, MESSAGE_PARAM *msg)
{
    // debug_printf("In BattleSystem_BufferMessage (overlay)\n");

    BOOL isOrganizationTrainerClass = FALSE;
    BOOL isGruntTrainerClass = FALSE;

    switch (msg->msg_tag & TAG_NO_DIR_OFF) {
    case TAG_TRCLASS_TRNAME:
    case TAG_TRCLASS_TRNAME_NICKNAME:;
        Trainer *trainer = BattleSystem_GetTrainer(bsys, msg->msg_para[0]);
        isOrganizationTrainerClass = IsOrganizationTrainerClass(trainer->data.trainerClass);
        isGruntTrainerClass = IsGruntTrainerClass(trainer->data.trainerClass);
        break;
    default:
        break;
    }

    // https://github.com/pret/pokeplatinum/blob/main/include/constants/battle/message_tags.h#L7
    switch (msg->msg_tag & TAG_NO_DIR_OFF) {
    case TAG_NONE:
    case TAG_NONE_SIDE:
        break;
    case TAG_NICKNAME:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        break;
    case TAG_MOVE:
    case TAG_MOVE_SIDE:
        BattleMessage_BufferMove(bsys, 0, msg->msg_para[0]);
        break;
    case TAG_STAT:
        BattleMessage_BufferStat(bsys, 0, msg->msg_para[0]);
        break;
    case TAG_ITEM:
        BattleMessage_BufferItem(bsys, 0, msg->msg_para[0]);
        break;
    case TAG_NUMBER:
        BattleMessage_BufferNumber(bsys, 0, msg->msg_para[0]);
        break;
    case TAG_NUMBERS:
        BattleMessage_BufferNumbers(bsys, 0, msg->msg_para[0], msg->msg_keta);
        break;
    case TAG_TRNAME:
        BattleMessage_BufferTrainerName(bsys, 0, msg->msg_para[0]);
        break;
    case TAG_NICKNAME_NICKNAME:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferMove(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_ABILITY:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_STAT:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferStat(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_TYPE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferType(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_POKE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferPokemon(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_ITEM:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        if ((msg->msg_id >= BATTLE_MSG_OBTAINED_ITEM && (msg->msg_id - BATTLE_MSG_OBTAINED_ITEM) < 3)
            || (msg->msg_id >= BATTLE_MSG_PICKED_UP_ITEM && (msg->msg_id - BATTLE_MSG_PICKED_UP_ITEM) < 3)) { // get article added to each of these
            BufferItemNameWithIndefArticle(bsys->msgFormat, 1, msg->msg_para[1]);
        } else {
            BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
        }
        if ((msg->msg_id - BATTLE_MSG_MEGA_EVOLUTION) < 3) {
            Trainer *trainer = BattleSystem_GetTrainer(bsys, msg->msg_para[0]);
            BattleMessage_BufferItem(bsys, 2, GetKeyStoneVariantFromTrainerClass(trainer->data.trainerClass));
        }
        break;
    case TAG_NICKNAME_POFFIN: // unused
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferPoffin(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_NUM:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNumber(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_TRNAME:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_BOX:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferBoxName(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_MOVE_NICKNAME:
        BattleMessage_BufferMove(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_MOVE_MOVE:
        BattleMessage_BufferMove(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferMove(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_ABILITY_NICKNAME:
        BattleMessage_BufferAbility(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_ITEM_MOVE:
        BattleMessage_BufferItem(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferMove(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NUMBER_NUMBER:
        BattleMessage_BufferNumber(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNumber(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_TRNAME_TRNAME:
        BattleMessage_BufferTrainerName(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_TRNAME_NICKNAME:
        BattleMessage_BufferTrainerName(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_TRNAME_ITEM:
        BattleMessage_BufferTrainerName(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_TRNAME_NUM:
        BattleMessage_BufferTrainerName(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNumber(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_TRCLASS_TRNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->msg_para[0]);

        switch (msg->msg_id) {
        case 839: // You defeated\n{STRVAR_1 14, 0, 0} {STRVAR_1 3, 1, 0}!
            if (isOrganizationTrainerClass) {
                msg->msg_id = 1358; // You defeated\n{STRVAR_1 3, 1, 0} of {STRVAR_1 14, 0, 0}!
            } else if (isGruntTrainerClass) {
                msg->msg_id = 703; // You defeated\nthe {STRVAR_1 14, 0, 0} {STRVAR_1 3, 1, 0}!
            }
            break;
        case 969: // You are challenged by\n{STRVAR_1 14, 0, 0} {STRVAR_1 3, 1, 0}!\r
            if (isOrganizationTrainerClass) {
                msg->msg_id = 1354; // You are challenged by\nthe {STRVAR_1 14, 0, 0} {STRVAR_1 3, 1, 0}!\r
            } else if (isGruntTrainerClass) {
                msg->msg_id = 702; // You are challenged by\n the {STRVAR_1 14, 0, 0} {STRVAR_1 3, 1, 0}!\r
            }
            break;
        }
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_NICKNAME_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferMove(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_NICKNAME_ABILITY:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferAbility(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_NICKNAME_ITEM:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferItem(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_MOVE_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferMove(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferMove(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_MOVE_NUMBER:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferMove(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNumber(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_NICKNAME:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferMove(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_ITEM:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferItem(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_STAT:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferStat(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_TYPE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferType(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_STATUS:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferStatus(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_NUMBER:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNumber(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ITEM_NICKNAME:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ITEM_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferMove(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ITEM_STAT:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferStat(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ITEM_STATUS:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferStatus(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_BOX_BOX:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferBoxName(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferBoxName(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_ITEM_NICKNAME_FLAVOR:
        BattleMessage_BufferItem(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferFlavorPreference(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_TRNAME_NICKNAME_NICKNAME:
        BattleMessage_BufferTrainerName(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_TRCLASS_TRNAME_NICKNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);

        switch (msg->msg_id) {
        case 972: // {STRVAR_1 14, 0, 0} {STRVAR_1 3, 1, 0} sent\nout {STRVAR_1 1, 2, 0}!
            if (bsys->sp->printedTrainerSendOutMessage) {
                msg->msg_id = 1355; // {STRVAR_1 3, 1, 0} sent\nout {STRVAR_1 1, 2, 0}!
            } else {
                bsys->sp->printedTrainerSendOutMessage = TRUE;
                if (isOrganizationTrainerClass) {
                    msg->msg_id = 1356; // {STRVAR_1 3, 1, 0} of {STRVAR_1 14, 0, 0} sent\nout {STRVAR_1 1, 2, 0}!
                } else if (isGruntTrainerClass) {
                    bsys->sp->printedTrainerSendOutMessage = FALSE;
                    msg->msg_id = 1359; // The {STRVAR_1 14, 0, 0} {STRVAR_1 3, 1, 0} sent\nout {STRVAR_1 1, 2, 0}!
                }
            }
            break;
        case 989: // {STRVAR_1 14, 0, 0} {STRVAR_1 3, 1, 0}\nwithdrew {STRVAR_1 1, 2, 0}!
            if (isGruntTrainerClass) {
                msg->msg_id = 700; // The {STRVAR_1 14, 0, 0} {STRVAR_1 3, 1, 0}\nwithdrew {STRVAR_1 1, 2, 0}!
            } else {
                msg->msg_id = 1357; // {STRVAR_1 3, 1, 0}\nwithdrew {STRVAR_1 1, 2, 0}!
            }
            break;
        }
        break;
    case TAG_TRCLASS_TRNAME_ITEM:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferItem(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_NICKNAME_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferMove(bsys, 3, msg->msg_para[3]);
        break;
    case TAG_NICKNAME_ABILITY_NICKNAME_ABILITY:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferAbility(bsys, 3, msg->msg_para[3]);
        break;
    case TAG_NICKNAME_ABILITY_NICKNAME_STAT:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferStat(bsys, 3, msg->msg_para[3]);
        break;
    case TAG_NICKNAME_ITEM_NICKNAME_ITEM:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        if ((msg->msg_id - BATTLE_MSG_OBTAINED_ITEM_OBTAINED_ITEM) < 7) {
            BufferItemNameWithIndefArticle(bsys->msgFormat, 1, msg->msg_para[1]);
        } else {
            BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
        }
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        if ((msg->msg_id - BATTLE_MSG_OBTAINED_ITEM_OBTAINED_ITEM) < 7) {
            BufferItemNameWithIndefArticle(bsys->msgFormat, 3, msg->msg_para[3]);
        } else {
            BattleMessage_BufferItem(bsys, 3, msg->msg_para[3]);
        }
        break;
    case TAG_TRNAME_NICKNAME_TRNAME_NICKNAME:
        BattleMessage_BufferTrainerName(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferTrainerName(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferNickname(bsys, 3, msg->msg_para[3]);
        break;
    case TAG_TRCLASS_TRNAME_NICKNAME_NICKNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferNickname(bsys, 3, msg->msg_para[3]);
        break;
    case TAG_TRCLASS_TRNAME_NICKNAME_TRNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferTrainerName(bsys, 3, msg->msg_para[3]);
        break;
    case TAG_TRCLASS_TRNAME_TRCLASS_TRNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferTrainerClass(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferTrainerName(bsys, 3, msg->msg_para[3]);
        break;
    case TAG_TRCLASS_TRNAME_NICKNAME_TRCLASS_TRNAME_NICKNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferTrainerClass(bsys, 3, msg->msg_para[3]);
        BattleMessage_BufferTrainerName(bsys, 4, msg->msg_para[4]);
        BattleMessage_BufferNickname(bsys, 5, msg->msg_para[5]);
        break;
    default:
        GF_ASSERT(FALSE);
    }
}
