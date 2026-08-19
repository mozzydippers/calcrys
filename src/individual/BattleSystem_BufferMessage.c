#include "config.h"
#include "types.h"

#include "constants/ability.h"
#include "constants/battle_message_constants.h"
#include "constants/battle_script_constants.h"
#include "constants/file.h"
#include "constants/hold_item_effects.h"
#include "constants/item.h"
#include "constants/move_effects.h"
#include "constants/moves.h"
#include "constants/species.h"
#include "constants/system_control.h"

#include "battle.h"
#include "item.h"
#include "mega.h"
#include "message.h"
#include "pokemon.h"

static int GetKeyStoneVariantFromTrainerClass(int trainerClass)
{
    switch (trainerClass) {
    default:
        return ITEM_KEY_STONE;
        break;
    }
}

enum TrainerClassClassification {
    DEFAULT_TRAINER_CLASS, // You are challenged by Youngster Alan!
    ORGANIZATION_TRAINER_CLASS, // You are challenged by Mela of Team Star!
    THE_ORGANIZATION_TRAINER_CLASS, // You are challenged by Lebanne of the SBC!
    GRUNT_TRAINER_CLASS, // You are challenged by the Team Star Grunt!
    THE_TRAINER_CLASS, // You are challenged by Blanca the Artist!
    REPRESENTATIVE_TRAINER_CLASS, // You are challenged by the representative of the Lumiose Safety Group!
};

const u8 TrainerClassClassificationList[] = {
    [TRAINERCLASS_PKMN_TRAINER_ETHAN] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_TRAINER_LYRA] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_YOUNGSTER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LASS] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_CAMPER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PICNICKER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_BUG_CATCHER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_AROMA_LADY] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_TWINS] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_HIKER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_BATTLE_GIRL] = THE_TRAINER_CLASS,
    [TRAINERCLASS_FISHERMAN] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_CYCLIST_M] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_CYCLIST_F] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_BLACK_BELT] = THE_TRAINER_CLASS,
    [TRAINERCLASS_ARTIST] = THE_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_BREEDER_M] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_BREEDER_F] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_COWGIRL] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_JOGGER] = THE_TRAINER_CLASS,
    [TRAINERCLASS_POKEFAN_M] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_POKEFAN] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_POKE_KID] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_RIVAL] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_ACE_TRAINER_M] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_ACE_TRAINER_F] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_WAITRESS] = THE_TRAINER_CLASS,
    [TRAINERCLASS_VETERAN] = THE_TRAINER_CLASS,
    [TRAINERCLASS_NINJA_BOY] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_DRAGON_TAMER] = THE_TRAINER_CLASS,
    [TRAINERCLASS_BIRD_KEEPER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_JUGGLER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_RICH_BOY] = THE_TRAINER_CLASS,
    [TRAINERCLASS_LADY] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_GENTLEMAN] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_SOCIALITE] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_BEAUTY] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_COLLECTOR] = THE_TRAINER_CLASS,
    [TRAINERCLASS_POLICEMAN] = THE_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_RANGER_M] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_RANGER_F] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_SCIENTIST] = THE_TRAINER_CLASS,
    [TRAINERCLASS_SWIMMER_M] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_SWIMMER_F] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_TUBER_M] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_TUBER_F] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_SAILOR] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_KIMONO_GIRL] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_RUIN_MANIAC] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PSYCHIC_M] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PSYCHIC_F] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PI] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_GUITARIST] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_ACE_TRAINER_M_GS] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_ACE_TRAINER_F_GS] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_TEAM_ROCKET] = GRUNT_TRAINER_CLASS,
    [TRAINERCLASS_SKIER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_ROUGHNECK] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_CLOWN] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_WORKER] = THE_TRAINER_CLASS,
    [TRAINERCLASS_SCHOOL_KID_M] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_SCHOOL_KID_F] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_TEAM_ROCKET_F] = GRUNT_TRAINER_CLASS,
    [TRAINERCLASS_BURGLAR] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_FIREBREATHER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_BIKER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_FALKNER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_BUGSY] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_POKE_MANIAC] = THE_TRAINER_CLASS,
    [TRAINERCLASS_BIRD_KEEPER_GS] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_WHITNEY] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_RANCHER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_MORTY] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_PRYCE] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_JASMINE] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_CHUCK] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_CLAIR] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_TEACHER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_SUPER_NERD] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_SAGE] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PARASOL_LADY] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_WAITER] = THE_TRAINER_CLASS,
    [TRAINERCLASS_MEDIUM] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_CAMERAMAN] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_REPORTER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_IDOL] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_CHAMPION] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_ELITE_FOUR_WILL] = THE_ORGANIZATION_TRAINER_CLASS,
    [TRAINERCLASS_ELITE_FOUR_KAREN] = THE_ORGANIZATION_TRAINER_CLASS,
    [TRAINERCLASS_ELITE_FOUR_KOGA] = THE_ORGANIZATION_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_TRAINER_CHERYL] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_TRAINER_RILEY] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_TRAINER_MARLEY] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_TRAINER_BUCK] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_TRAINER_MIRA] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_TRAINER_FTR_LUCAS] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_TRAINER_FTR_DAWN] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_TOWER_TYCOON] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_BROCK] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_HALL_MATRON] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_FACTORY_HEAD] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_ARCADE_STAR] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_CASTLE_VALET] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_MISTY] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_LT_SURGE] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_ERIKA] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_JANINE] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_SABRINA] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_BLAINE] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_TRAINER_RED] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_LEADER_BLUE] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_ELDER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_ELITE_FOUR_BRUNO] = THE_ORGANIZATION_TRAINER_CLASS,
    [TRAINERCLASS_SCIENTIST_GS] = THE_TRAINER_CLASS,
    [TRAINERCLASS_EXECUTIVE_ARIANA] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_BOARDER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_EXECUTIVE_ARCHER] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_EXECUTIVE_PROTON] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_EXECUTIVE_PETREL] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PASSERBY] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_MYSTERY_MAN] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_DOUBLE_TEAM] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_YOUNG_COUPLE] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_TRAINER_LANCE] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_ROCKET_BOSS] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_TRAINER_LUCAS_DP] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_TRAINER_DAWN_DP] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_TRAINER_LUCAS_PT] = DEFAULT_TRAINER_CLASS,
    [TRAINERCLASS_PKMN_TRAINER_DAWN_PT] = DEFAULT_TRAINER_CLASS,
};

void BattleSystem_BufferMessage(struct BattleSystem *bsys, BattleMessage *msg)
{
    // debug_printf("In BattleSystem_BufferMessage (overlay)\n");
    int trainerMessageOffset = 0;

    switch (msg->tag & TAG_NO_DIR_OFF) {
    case TAG_TRCLASS_TRNAME:
    case TAG_TRCLASS_TRNAME_NICKNAME:;
        Trainer *trainer = BattleSystem_GetTrainer(bsys, msg->param[0]);
        trainerMessageOffset = TrainerClassClassificationList[trainer->data.trainerClass];
        break;
    default:
        break;
    }

    // https://github.com/pret/pokeplatinum/blob/main/include/constants/battle/message_tags.h#L7
    switch (msg->tag & TAG_NO_DIR_OFF) {
    case TAG_NONE:
    case TAG_NONE_SIDE:
        break;
    case TAG_NICKNAME:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        break;
    case TAG_MOVE:
    case TAG_MOVE_SIDE:
        BattleMessage_BufferMove(bsys, 0, msg->param[0]);
        break;
    case TAG_STAT:
        BattleMessage_BufferStat(bsys, 0, msg->param[0]);
        break;
    case TAG_ITEM:
        BattleMessage_BufferItem(bsys, 0, msg->param[0]);
        break;
    case TAG_NUMBER:
        BattleMessage_BufferNumber(bsys, 0, msg->param[0]);
        break;
    case TAG_NUMBERS:
        BattleMessage_BufferNumbers(bsys, 0, msg->param[0], msg->numDigits);
        break;
    case TAG_TRNAME:
        BattleMessage_BufferTrainerName(bsys, 0, msg->param[0]);
        break;
    case TAG_NICKNAME_NICKNAME:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->param[1]);
        break;
    case TAG_NICKNAME_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferMove(bsys, 1, msg->param[1]);
        break;
    case TAG_NICKNAME_ABILITY:
        if (msg->id == BATTLE_MSG_ABILITY_POPUP) {
            BattleMessage_BufferNicknameDoNotConsiderPrefix(bsys, 0, msg->param[0]);
        } else {
            BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        }
        BattleMessage_BufferAbility(bsys, 1, msg->param[1]);
        break;
    case TAG_NICKNAME_STAT:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferStat(bsys, 1, msg->param[1]);
        break;
    case TAG_NICKNAME_TYPE:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferType(bsys, 1, msg->param[1]);
        break;
    case TAG_NICKNAME_POKE:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferPokemon(bsys, 1, msg->param[1]);
        break;
    case TAG_NICKNAME_ITEM:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        if (((msg->id >= BATTLE_MSG_OBTAINED_ITEM) && (msg->id < (BATTLE_MSG_OBTAINED_ITEM + 3)))
            || ((msg->id >= BATTLE_MSG_HARVESTED_ITEM) && (msg->id < (BATTLE_MSG_HARVESTED_ITEM + 3)))
            || ((msg->id >= BATTLE_MSG_PICKED_UP_ITEM) && (msg->id < (BATTLE_MSG_PICKED_UP_ITEM + 3)))) { // get article added to each of these
            BufferItemNameWithIndefArticle(bsys->msgFormat, 1, msg->param[1]);
        } else {
            BattleMessage_BufferItem(bsys, 1, msg->param[1]);
        }
        if ((msg->id - BATTLE_MSG_MEGA_EVOLUTION) < 3) {
            Trainer *trainer = BattleSystem_GetTrainer(bsys, msg->param[0]);
            BattleMessage_BufferItem(bsys, 2, GetKeyStoneVariantFromTrainerClass(trainer->data.trainerClass));
        }
        break;
    case TAG_NICKNAME_POFFIN: // unused
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferPoffin(bsys, 1, msg->param[1]);
        break;
    case TAG_NICKNAME_NUM:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferNumber(bsys, 1, msg->param[1]);
        break;
    case TAG_NICKNAME_TRNAME:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->param[1]);
        break;
    case TAG_NICKNAME_BOX:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferBoxName(bsys, 1, msg->param[1]);
        break;
    case TAG_MOVE_NICKNAME:
        BattleMessage_BufferMove(bsys, 0, msg->param[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->param[1]);
        break;
    case TAG_MOVE_MOVE:
        BattleMessage_BufferMove(bsys, 0, msg->param[0]);
        BattleMessage_BufferMove(bsys, 1, msg->param[1]);
        break;
    case TAG_ABILITY_NICKNAME:
        BattleMessage_BufferAbility(bsys, 0, msg->param[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->param[1]);
        break;
    case TAG_ITEM_MOVE:
        BattleMessage_BufferItem(bsys, 0, msg->param[0]);
        BattleMessage_BufferMove(bsys, 1, msg->param[1]);
        break;
    case TAG_NUMBER_NUMBER:
        BattleMessage_BufferNumber(bsys, 0, msg->param[0]);
        BattleMessage_BufferNumber(bsys, 1, msg->param[1]);
        break;
    case TAG_TRNAME_TRNAME:
        BattleMessage_BufferTrainerName(bsys, 0, msg->param[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->param[1]);
        break;
    case TAG_TRNAME_NICKNAME:
        BattleMessage_BufferTrainerName(bsys, 0, msg->param[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->param[1]);
        break;
    case TAG_TRNAME_ITEM:
        BattleMessage_BufferTrainerName(bsys, 0, msg->param[0]);
        BattleMessage_BufferItem(bsys, 1, msg->param[1]);
        break;
    case TAG_TRNAME_NUM:
        BattleMessage_BufferTrainerName(bsys, 0, msg->param[0]);
        BattleMessage_BufferNumber(bsys, 1, msg->param[1]);
        break;
    case TAG_TRCLASS_TRNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->param[0]);

        switch (msg->id) {
        case BATTLE_MSG_OLD_DEFEAT_MESSAGE: // You defeated\n{STRVAR_1 14, 0, 0} {STRVAR_1 3, 1, 0}!
            if (trainerMessageOffset) {
                msg->id = BATTLE_MSG_NEW_DEFEAT_START - 1 + trainerMessageOffset;
            }
            break;
        case BATTLE_MSG_OLD_CHALLENEGE: // You are challenged by\n{STRVAR_1 14, 0, 0} {STRVAR_1 3, 1, 0}!\r
            if (trainerMessageOffset) {
                msg->id = BATTLE_MSG_NEW_CHALLENEGE_START - 1 + trainerMessageOffset;
            }
            break;
        }
        BattleMessage_BufferTrainerName(bsys, 1, msg->param[1]);
        break;
    case TAG_NICKNAME_NICKNAME_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->param[1]);
        BattleMessage_BufferMove(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_NICKNAME_ABILITY:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->param[1]);
        BattleMessage_BufferAbility(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_NICKNAME_ITEM:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->param[1]);
        BattleMessage_BufferItem(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_MOVE_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferMove(bsys, 1, msg->param[1]);
        BattleMessage_BufferMove(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_MOVE_NUMBER:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferMove(bsys, 1, msg->param[1]);
        BattleMessage_BufferNumber(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_ABILITY_NICKNAME:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->param[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_ABILITY_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->param[1]);
        BattleMessage_BufferMove(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_ABILITY_ITEM:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->param[1]);
        BattleMessage_BufferItem(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_ABILITY_STAT:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->param[1]);
        BattleMessage_BufferStat(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_ABILITY_TYPE:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->param[1]);
        BattleMessage_BufferType(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_ABILITY_STATUS:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->param[1]);
        BattleMessage_BufferStatus(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_ABILITY_NUMBER:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->param[1]);
        BattleMessage_BufferNumber(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_ITEM_NICKNAME:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferItem(bsys, 1, msg->param[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_ITEM_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferItem(bsys, 1, msg->param[1]);
        BattleMessage_BufferMove(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_ITEM_STAT:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferItem(bsys, 1, msg->param[1]);
        BattleMessage_BufferStat(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_ITEM_STATUS:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferItem(bsys, 1, msg->param[1]);
        BattleMessage_BufferStatus(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_BOX_BOX:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferBoxName(bsys, 1, msg->param[1]);
        BattleMessage_BufferBoxName(bsys, 2, msg->param[2]);
        break;
    case TAG_ITEM_NICKNAME_FLAVOR:
        BattleMessage_BufferItem(bsys, 0, msg->param[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->param[1]);
        BattleMessage_BufferFlavorPreference(bsys, 2, msg->param[2]);
        break;
    case TAG_TRNAME_NICKNAME_NICKNAME:
        BattleMessage_BufferTrainerName(bsys, 0, msg->param[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->param[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->param[2]);
        break;
    case TAG_TRCLASS_TRNAME_NICKNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->param[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->param[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->param[2]);

        switch (msg->id) {
        case BATTLE_MSG_OLD_SEND_OUT: // {STRVAR_1 14, 0, 0} {STRVAR_1 3, 1, 0} sent\nout {STRVAR_1 1, 2, 0}!
            if (bsys->sp->printedTrainerSendOutMessage && trainerMessageOffset != GRUNT_TRAINER_CLASS) {
                msg->id = BATTLE_MSG_NEW_SEND_OUT_START; // {STRVAR_1 3, 1, 0} sent\nout {STRVAR_1 1, 2, 0}!
            } else {
                bsys->sp->printedTrainerSendOutMessage = TRUE;
                if (trainerMessageOffset) {
                    msg->id = BATTLE_MSG_NEW_SEND_OUT_START + trainerMessageOffset;
                }
            }
            break;
        case BATTLE_MSG_OLD_WITHDRAW: // {STRVAR_1 14, 0, 0} {STRVAR_1 3, 1, 0}\nwithdrew {STRVAR_1 1, 2, 0}!
            if (trainerMessageOffset == GRUNT_TRAINER_CLASS) {
                msg->id = BATTLE_MSG_GRUNT_WITHDRAW; // The {STRVAR_1 14, 0, 0} {STRVAR_1 3, 1, 0}\nwithdrew {STRVAR_1 1, 2, 0}!
            } else if (trainerMessageOffset == REPRESENTATIVE_TRAINER_CLASS) {
                msg->id = BATTLE_MSG_REPRESENTATIVE_WITHDRAW; //
            } else {
                msg->id = BATTLE_MSG_NEW_WITHDRAW_START; // {STRVAR_1 3, 1, 0}\nwithdrew {STRVAR_1 1, 2, 0}!
            }
            break;
        }
        break;
    case TAG_TRCLASS_TRNAME_ITEM:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->param[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->param[1]);
        BattleMessage_BufferItem(bsys, 2, msg->param[2]);
        break;
    case TAG_NICKNAME_ABILITY_NICKNAME_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->param[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->param[2]);
        BattleMessage_BufferMove(bsys, 3, msg->param[3]);
        break;
    case TAG_NICKNAME_ABILITY_NICKNAME_ABILITY:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->param[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->param[2]);
        BattleMessage_BufferAbility(bsys, 3, msg->param[3]);
        break;
    case TAG_NICKNAME_ABILITY_NICKNAME_STAT:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->param[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->param[2]);
        BattleMessage_BufferStat(bsys, 3, msg->param[3]);
        break;
    case TAG_NICKNAME_ITEM_NICKNAME_ITEM:
        BattleMessage_BufferNickname(bsys, 0, msg->param[0]);
        if ((msg->id >= BATTLE_MSG_OBTAINED_ITEM_OBTAINED_ITEM) && (msg->id < BATTLE_MSG_OBTAINED_ITEM_OBTAINED_ITEM + 7)) {
            BufferItemNameWithIndefArticle(bsys->msgFormat, 1, msg->param[1]);
        } else {
            BattleMessage_BufferItem(bsys, 1, msg->param[1]);
        }
        BattleMessage_BufferNickname(bsys, 2, msg->param[2]);
        if ((msg->id >= BATTLE_MSG_OBTAINED_ITEM_OBTAINED_ITEM) && (msg->id < BATTLE_MSG_OBTAINED_ITEM_OBTAINED_ITEM + 7)) {
            BufferItemNameWithIndefArticle(bsys->msgFormat, 3, msg->param[3]);
        } else {
            BattleMessage_BufferItem(bsys, 3, msg->param[3]);
        }
        break;
    case TAG_TRNAME_NICKNAME_TRNAME_NICKNAME:
        BattleMessage_BufferTrainerName(bsys, 0, msg->param[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->param[1]);
        BattleMessage_BufferTrainerName(bsys, 2, msg->param[2]);
        BattleMessage_BufferNickname(bsys, 3, msg->param[3]);
        break;
    case TAG_TRCLASS_TRNAME_NICKNAME_NICKNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->param[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->param[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->param[2]);
        BattleMessage_BufferNickname(bsys, 3, msg->param[3]);
        break;
    case TAG_TRCLASS_TRNAME_NICKNAME_TRNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->param[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->param[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->param[2]);
        BattleMessage_BufferTrainerName(bsys, 3, msg->param[3]);
        break;
    case TAG_TRCLASS_TRNAME_TRCLASS_TRNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->param[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->param[1]);
        BattleMessage_BufferTrainerClass(bsys, 2, msg->param[2]);
        BattleMessage_BufferTrainerName(bsys, 3, msg->param[3]);
        break;
    case TAG_TRCLASS_TRNAME_NICKNAME_TRCLASS_TRNAME_NICKNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->param[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->param[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->param[2]);
        BattleMessage_BufferTrainerClass(bsys, 3, msg->param[3]);
        BattleMessage_BufferTrainerName(bsys, 4, msg->param[4]);
        BattleMessage_BufferNickname(bsys, 5, msg->param[5]);
        break;
    default:
        GF_ASSERT(FALSE);
    }
}
