#include "../include/battle.h"
#include "../include/battle_variations.h"
#include "../include/constants/file.h"
#include "../include/pokemon.h"
#include "../include/types.h"

// Pokemon generated will be illegal
void LONG_CALL SetupAndStartTotemBattle(void *taskManager, u32 *winFlag, u16 battleID)
{
    struct BATTLE_PARAM *setup;
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    SetScriptVar(RAID_ID_VARIABLE, battleID);

    struct TotemBattle battleData;

    ArchiveDataLoadOfs(&battleData, ARC_CODE_ADDONS, CODE_ADDON_TOTEMBATTLES, battleID * sizeof(struct TotemBattle), sizeof(struct TotemBattle));

    setup = BattleSetup_New(HEAPID_WORLD, BATTLE_TYPE_SINGLE);
    BattleSetup_InitFromFieldSystem(setup, fieldSystem);
    ov02_02247F30(fieldSystem, battleData.battleVariationBase.mainPokemon.species, battleData.battleVariationBase.mainPokemon.level, battleData.battleVariationBase.mainPokemon.forceShiny, setup);

    setup->battleSpecial |= BATTLE_SPECIAL_TOTEM;

    struct PartyPokemon *mon = Party_GetMonByIndex(setup->poke_party[BATTLER_ENEMY], 0);

    u32 personality = ChangePersonalityToNatureGenderAndAbility(42, battleData.battleVariationBase.mainPokemon.species, battleData.battleVariationBase.mainPokemon.nature, battleData.battleVariationBase.mainPokemon.gender, battleData.battleVariationBase.mainPokemon.abilitySlot, 0);

    SetMonPersonality(mon, personality);

    SetMonData(mon, MON_DATA_HELD_ITEM, &battleData.battleVariationBase.mainPokemon.heldItem);

    int maxPP;
    for (int i = 0; i < 4; i++) {
        SetMonData(mon, MON_DATA_MOVE1 + i, &battleData.battleVariationBase.mainPokemon.moves[i]);
        maxPP = GetMonData(mon, MON_DATA_MOVE1MAXPP + i, 0);
        SetMonData(mon, MON_DATA_MOVE1PP + i, &maxPP);
    }

    for (int i = 0; i < 6; i++) {
        SetMonData(mon, MON_DATA_HP_EV + i, &battleData.battleVariationBase.mainPokemon.basePoints[i]);
    }

    for (int i = 0; i < 6; i++) {
        SetMonData(mon, MON_DATA_HP_IV + i, &battleData.battleVariationBase.mainPokemon.potential[i]);
    }

    GameStats_Inc(Save_GameStats_Get(fieldSystem->savedata), 8);

    CallTask_StartEncounter(taskManager, setup, BattleSetup_GetWildTransitionEffect(setup), BattleSetup_GetWildBattleMusic(setup), winFlag);
}

BOOL LONG_CALL ScrCmd_BattleVariation(SCRIPTCONTEXT *ctx)
{
    // debug_printf("In ScrCmd_BattleVariation\n");
    u8 battleVariationType = ScriptReadByte(ctx);
    u16 raidID = ScriptReadHalfword(ctx);
    u32 *winFlag = FieldSysGetAttrAddr(ctx->fsys, SCRIPTENV_BATTLE_WIN_FLAG);

    switch (battleVariationType) {
    case BATTLE_VARIATION_TYPE_TOTEM:
        SetupAndStartTotemBattle(ctx->taskman, winFlag, raidID);
        break;
    case BATTLE_VARIATION_TYPE_MAX_RAID:
        break;
    case BATTLE_VARIATION_TYPE_TERA_RAID:
        break;
    default:
        break;
    }

    return TRUE;
}
