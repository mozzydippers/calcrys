#include "../../include/battle.h"
#include "../../include/battle_variations.h"
#include "../../include/config.h"
#include "../../include/constants/file.h"
#include "../../include/pokepic.h"
#include "../../include/sound.h"
#include "../../include/task.h"
#include "../../include/types.h"

#define POKEPIC_SCALE_NORMAL       0x100
#define RAID_POKEPIC_SCALE_PERCENT 160
#define PLTT_COLORS                16
#define RAID_TINT_RED              31
#define RAID_TINT_GREEN            16
#define RAID_TINT_BLUE             16
#define RAID_POKEPIC_AFFINE_SCALE  (POKEPIC_SCALE_NORMAL * RAID_POKEPIC_SCALE_PERCENT / 100)

u16 *LONG_CALL PaletteData_GetUnfadedBuf(void *paletteData, u32 bufferId);

typedef struct FaintingSequenceData {
    struct BattleSystem *battleSys;
    void *battlerData;
    void *monSprite;
    u8 padding_0C[0x58]; // moveAnim ?
    u8 command;
    u8 battler;
    u8 state;
    u8 face;
    u16 species;
    u8 gender;
    u8 form;
    u32 personality;
    u16 isSubstitute;
    u16 isTransformed;
} FaintingSequenceData;

#ifdef PLAY_MON_VICTORY_POSE
static BOOL ShouldPlayVictoryPoseForBattler(struct BattleSystem *battleSystem, struct BattleStruct *battleCtx, u32 battler)
{
    if (!IsBattlerSlotValid(battleSystem, battler)) {
        return FALSE;
    }

    return !(battleCtx->no_reshuffle_client & No2Bit(battler));
}
#endif // PLAY_MON_VICTORY_POSE

void Task_PlayFaintingSequence_WithVictoryPose(SysTask *task, void *data)
{
#ifdef PLAY_MON_VICTORY_POSE
    FaintingSequenceData *faintingSequenceData = data;
    // hijack the normal clean-up state to play the victory dance
    if (faintingSequenceData->state == 10) {
        struct BattleSystem *battleSystem = faintingSequenceData->battleSys;
        struct BattleStruct *battleCtx = battleSystem->sp;
        PokepicManager *monSpriteMan = BattleSystem_GetPokepicManager(battleSystem);
        void *monAnimMan = ov12_0223B750(battleSystem); // unk1C8 getter

        void *narc = NARC_New(ARC_SPRITE_OFFESTS, HEAPID_BATTLE_HEAP);

        if (IsClientEnemy(battleSystem, faintingSequenceData->battler)) {
            // victory pose for player side mons
            for (u32 i = BATTLER_PLAYER; i <= BATTLER_PLAYER2; i += 2) {
                if (ShouldPlayVictoryPoseForBattler(battleSystem, battleCtx, i)) {
                    Pokepic_StartAnim(&monSpriteMan->pics[i]);
                    sub_0207294C(
                        narc,
                        monAnimMan,
                        &monSpriteMan->pics[i],
                        battleCtx->battlemon[i].species,
                        0,
                        FALSE,
                        i);
                    PlayCry(battleCtx->battlemon[i].species, battleCtx->battlemon[i].form_no);
                }
            }
        } else {
            // victory pose for enemy side mons
            for (u32 i = BATTLER_ENEMY; i <= BATTLER_ENEMY2; i += 2) {
                if (ShouldPlayVictoryPoseForBattler(battleSystem, battleCtx, i)) {
                    Pokepic_StartAnim(&monSpriteMan->pics[i]);
                    sub_0207294C(
                        narc,
                        monAnimMan,
                        &monSpriteMan->pics[i],
                        battleCtx->battlemon[i].species,
                        2,
                        FALSE,
                        i);
                    PlayCry(battleCtx->battlemon[i].species, battleCtx->battlemon[i].form_no);
                }
            }
        }

        NARC_Delete(narc);
        faintingSequenceData->state++;
        // early return to avoid running the original task til the next frame
        return;
    }

    // if we reach our fake "11" state, decrement back to 10 before calling the original task for cleanup
    if (faintingSequenceData->state == 11) {
        struct BattleSystem *battleSystem = faintingSequenceData->battleSys;
        struct BattleStruct *battleCtx = battleSystem->sp;
        PokepicManager *monSpriteMan = BattleSystem_GetPokepicManager(battleSystem);
        void *monAnimMan = ov12_0223B750(battleSystem);

        BOOL side = IsClientEnemy(battleSystem, faintingSequenceData->battler);
        u32 firstBattler = side ? BATTLER_PLAYER : BATTLER_ENEMY;
        for (u32 i = firstBattler; i <= firstBattler + 2; i += 2) {
            if (ShouldPlayVictoryPoseForBattler(battleSystem, battleCtx, i)) {
                if (!sub_02017068(monAnimMan, i) || Pokepic_IsAnimFinished(&monSpriteMan->pics[i])) {
                    // if any pending tasks then don't run the original task yet
                    return;
                }
            }
        }

        faintingSequenceData->state--;
    }
#endif // PLAY_MON_VICTORY_POSE

    // run the original task
    ov12_022600F0(task, data);
}

BOOL IsRaidMonPokepic(const Pokepic *pokepic)
{
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
