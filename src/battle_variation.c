#include "../include/battle.h"
#include "../include/battle_variations.h"
#include "../include/constants/file.h"
#include "../include/pokemon.h"
#include "../include/types.h"

static struct BattleVariationInfo sBattleVariationInfo = { 0 };

// Pokemon generated will be illegal
struct PartyPokemon *InitialiseBattleVariationEnemy(void *taskManager, struct BattleSetup *setup, struct BattleVariationBase *battleVariationBase)
{
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);

    BattleSetup_InitFromFieldSystem(setup, fieldSystem);
    ov02_02247F30(fieldSystem, battleVariationBase->mainPokemon.species, battleVariationBase->mainPokemon.level, battleVariationBase->mainPokemon.forceShiny, setup);

    struct PartyPokemon *mon = Party_GetMonByIndex(setup->party[BATTLER_ENEMY], 0);

    if (!battleVariationBase->mainPokemon.forceShiny) {
        u32 personality = ChangePersonalityToNatureGenderAndAbility(42, battleVariationBase->mainPokemon.species, battleVariationBase->mainPokemon.nature, battleVariationBase->mainPokemon.gender, battleVariationBase->mainPokemon.abilitySlot, 0);

        SetMonPersonality(mon, personality);
    } else {
        SET_MON_NATURE_OVERRIDE(mon, battleVariationBase->mainPokemon.nature);
    }

    SetMonData(mon, MON_DATA_HELD_ITEM, &battleVariationBase->mainPokemon.heldItem);

    int maxPP;
    for (int i = 0; i < 4; i++) {
        SetMonData(mon, MON_DATA_MOVE1 + i, &battleVariationBase->mainPokemon.moves[i]);
        maxPP = GetMonData(mon, MON_DATA_MOVE1MAXPP + i, 0);
        SetMonData(mon, MON_DATA_MOVE1PP + i, &maxPP);
    }

    for (int i = 0; i < 6; i++) {
        SetMonData(mon, MON_DATA_HP_EV + i, &battleVariationBase->mainPokemon.basePoints[i]);
    }

    for (int i = 0; i < 6; i++) {
        SetMonData(mon, MON_DATA_HP_IV + i, &battleVariationBase->mainPokemon.potential[i]);
    }

    RecalcPartyPokemonStats(mon);

    GameStats_Inc(Save_GameStats_Get(fieldSystem->savedata), 8);

    return mon;
}

void ApplyRaidMultipliers(struct PartyPokemon *mon, u8 multipliers[6])
{
    int originalValue = 0, multiplier = 0, newValue = 0;

    originalValue = GetMonData(mon, MON_DATA_MAXHP, 0);
    multiplier = multipliers[0];

    newValue = originalValue * multiplier;
    if (newValue > 0) {
        sBattleVariationInfo.originalHP = originalValue;
        SetMonData(mon, MON_DATA_MAXHP, &newValue);
        SetMonData(mon, MON_DATA_HP, &newValue);
    }

    for (int i = 0; i < 5; i++) {
        originalValue = GetMonData(mon, MON_DATA_ATTACK + i, 0);
        multiplier = multipliers[i + 1];
        newValue = originalValue * multiplier;
        if (newValue > 0) {
            SetMonData(mon, MON_DATA_ATTACK + i, &newValue);
        }
    }
}

void LONG_CALL SetupAndStartTotemBattle(void *taskManager, u32 *winFlag, u16 battleID)
{
    struct BATTLE_PARAM *setup;

    struct TotemBattle battleData;

    ReadFromNarcMemberByIdPair(&battleData, ARC_CODE_ADDONS, CODE_ADDON_TOTEMBATTLES, battleID * sizeof(struct TotemBattle), sizeof(struct TotemBattle));

    setup = (struct BATTLE_PARAM *)BattleSetup_New(HEAPID_WORLD, BATTLE_TYPE_SINGLE);

    setup->battleSpecial |= (BATTLE_SPECIAL_TOTEM | BATTLE_SPECIAL_NO_RUNNING);

    InitialiseBattleVariationEnemy(taskManager, (struct BattleSetup *)setup, &battleData.battleVariationBase);

    CallTask_StartEncounter(taskManager, (struct BattleSetup *)setup, BattleSetup_GetWildTransitionEffect((struct BattleSetup *)setup), BattleSetup_GetWildBattleMusic((struct BattleSetup *)setup), winFlag);
}

// Pokemon generated will be illegal
void LONG_CALL SetupAndStartMaxRaid(void *taskManager, u32 *winFlag, u16 raidID)
{
    struct BATTLE_PARAM *setup;

    struct MaxRaidBattle battleData;

    ReadFromNarcMemberByIdPair(&battleData, ARC_CODE_ADDONS, CODE_ADDON_MAXRAIDBATTLES, raidID * sizeof(struct MaxRaidBattle), sizeof(struct MaxRaidBattle));

    setup = (struct BATTLE_PARAM *)BattleSetup_New(HEAPID_WORLD, BATTLE_TYPE_DOUBLE);

    setup->battleSpecial |= (BATTLE_SPECIAL_MAX_RAID | BATTLE_SPECIAL_NO_RUNNING);

    struct PartyPokemon *mon = InitialiseBattleVariationEnemy(taskManager, (struct BattleSetup *)setup, &battleData.battleVariationBase);

    ApplyRaidMultipliers(mon, battleData.multipliers);

    CallTask_StartEncounter(taskManager, (struct BattleSetup *)setup, BattleSetup_GetWildTransitionEffect((struct BattleSetup *)setup), BattleSetup_GetWildBattleMusic((struct BattleSetup *)setup), winFlag);
}

BOOL LONG_CALL ScrCmd_BattleVariation(SCRIPTCONTEXT *ctx)
{
    // debug_printf("In ScrCmd_BattleVariation\n");
    u8 battleVariationType = ScriptReadByte(ctx);
    u16 raidID = ScriptReadHalfword(ctx);
    u32 *winFlag = FieldSysGetAttrAddr(ctx->fsys, SCRIPTENV_BATTLE_WIN_FLAG);

    sBattleVariationInfo.battleVariationType = battleVariationType;
    sBattleVariationInfo.slot = raidID;

    switch (battleVariationType) {
    case BATTLE_VARIATION_TYPE_TOTEM:
        SetupAndStartTotemBattle(ctx->taskman, winFlag, raidID);
        break;
    case BATTLE_VARIATION_TYPE_MAX_RAID:
        SetupAndStartMaxRaid(ctx->taskman, winFlag, raidID);
        break;
    case BATTLE_VARIATION_TYPE_TERA_RAID:
        break;
    default:
        break;
    }

    return TRUE;
}

struct BattleVariationInfo *LONG_CALL GetBattleVariationInfo()
{
    return &sBattleVariationInfo;
}

void LONG_CALL ClearBattleVariationInfo()
{
    sBattleVariationInfo.battleVariationType = 0;
    sBattleVariationInfo.slot = 0;
}

BOOL LONG_CALL IsWildDoubleBattleWithOneOpponent(struct BattleSystem *bsys)
{
    return (bsys->sp->battlemon[3].species == SPECIES_NONE) && (BattleTypeGet(bsys) & BATTLE_TYPE_DOUBLE);
}
