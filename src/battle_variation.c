#include "constants/battle_constants.h"

#include "../include/battle.h"
#include "../include/battle_variations.h"
#include "../include/constants/file.h"
#include "../include/overlay.h"
#include "../include/pokemon.h"
#include "../include/pokepic.h"
#include "../include/types.h"

#define POKEPIC_SCALE_NORMAL       0x100
#define RAID_POKEPIC_SCALE_PERCENT 160
#define PLTT_COLORS                16
#define RAID_TINT_RED              31
#define RAID_TINT_GREEN            16
#define RAID_TINT_BLUE             16
#define RAID_POKEPIC_AFFINE_SCALE  (POKEPIC_SCALE_NORMAL * RAID_POKEPIC_SCALE_PERCENT / 100)

ALIGN4 struct BattleSystem *gBattleSystem __attribute__((section(".data"))) = NULL;

static struct BattleVariationInfo sBattleVariationInfo = { 0 };

BOOL LONG_CALL IsRaidMonPokepic(const Pokepic *pokepic)
{
    if (!IsOverlayLoaded(OVERLAY_BATTLE_EXTENSION)) {
        return FALSE;
    }
    if (gBattleSystem == NULL || !(gBattleSystem->battleSpecial & BATTLE_SPECIAL_MAX_RAID)) {
        return FALSE;
    }
    return pokepic != NULL && gBattleSystem->pokepicManager != NULL && pokepic == &gBattleSystem->pokepicManager->pics[BATTLER_ENEMY];
}

void LONG_CALL Raid_ApplyMainAppearance(Pokepic *pokepic)
{
    if (!IsRaidMonPokepic(pokepic) || !pokepic->active) {
        return;
    }

    PokepicDrawParam *drawParam = &pokepic->drawParam;
    drawParam->affineWidth = RAID_POKEPIC_AFFINE_SCALE;
    drawParam->affineHeight = RAID_POKEPIC_AFFINE_SCALE;
    drawParam->visible = FALSE;
    drawParam->yOffset = -15;
    drawParam->diffuseR = RAID_TINT_RED;
    drawParam->diffuseG = RAID_TINT_GREEN;
    drawParam->diffuseB = RAID_TINT_BLUE;
}

void LONG_CALL Raid_ApplyManagedSpriteAppearance(ManagedSprite *managedSprite, Pokepic *pokepic)
{
    if (managedSprite != NULL && IsRaidMonPokepic(pokepic)) {
        float scale = (float)RAID_POKEPIC_AFFINE_SCALE / POKEPIC_SCALE_NORMAL;
        s16 x;
        s16 y;

        Raid_ApplyMainAppearance(pokepic);
        ManagedSprite_SetAffineOverwriteMode(managedSprite, 2);
        ManagedSprite_SetAffineScale(managedSprite, scale, scale);
        ManagedSprite_GetPositionXY(managedSprite, &x, &y);
        // why the fuck is it + 1?
        ManagedSprite_SetPositionXY(managedSprite, x + pokepic->drawParam.xOffset + 1, y + pokepic->drawParam.yOffset + 1);
    }
}

void LONG_CALL Raid_InitializeMainAppearance(Pokepic *pokepic)
{
    if (!IsRaidMonPokepic(pokepic) || !pokepic->active) {
        return;
    }

    pokepic->drawParam.xOffset = -25;
    Raid_ApplyMainAppearance(pokepic);
}

int LONG_CALL Raid_AdjustAnimationScale(Pokepic *pokepic, int scale)
{
    if (!IsRaidMonPokepic(pokepic)) {
        return scale;
    }

    return scale * RAID_POKEPIC_SCALE_PERCENT / 100;
}

int LONG_CALL Raid_AdjustAnimationX(Pokepic *pokepic, int x)
{
    if (!IsRaidMonPokepic(pokepic)) {
        return x;
    }

    return x - 25;
}

int LONG_CALL Raid_RestoreAnimationX(Pokepic *pokepic, int x)
{
    if (!IsRaidMonPokepic(pokepic)) {
        return x;
    }

    pokepic->drawParam.xOffset = 0;
    return x - 25;
}

static u16 Raid_TintColor(u16 color)
{
    u32 red = color & 0x1F;
    u32 green = (color >> 5) & 0x1F;
    u32 blue = (color >> 10) & 0x1F;

    red = (red * RAID_TINT_RED + 15) / 31;
    green = (green * RAID_TINT_GREEN + 15) / 31;
    blue = (blue * RAID_TINT_BLUE + 15) / 31;
    return red | (green << 5) | (blue << 10);
}

void LONG_CALL Raid_ApplyObjPaletteAppearance(void *paletteData, u16 palettePosition, Pokepic *pokepic)
{
    if (paletteData == NULL || !IsRaidMonPokepic(pokepic)) {
        return;
    }
    if ((palettePosition % PLTT_COLORS) != 0 || palettePosition > 256 - PLTT_COLORS) {
        return;
    }

    u16 *palette = PaletteData_GetUnfadedBuf(paletteData, 2) + palettePosition;
    for (u32 color = 1; color < PLTT_COLORS; color++) {
        palette[color] = Raid_TintColor(palette[color]);
    }

    PaletteData_LoadPalette(paletteData, palette, 2, palettePosition, PLTT_COLORS * sizeof(u16));
}

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
    ResetPartyPokemonAbility(mon);

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

    setup = (struct BATTLE_PARAM *)BattleSetup_New(HEAPID_WORLD, BATTLE_TYPE_WILD_MON);

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

    setup = (struct BATTLE_PARAM *)BattleSetup_New(HEAPID_WORLD, BATTLE_TYPE_DOUBLES);

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
    return (bsys->sp->battlemon[3].species == SPECIES_NONE) && (BattleTypeGet(bsys) & BATTLE_TYPE_DOUBLES);
}
