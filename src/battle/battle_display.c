#include "../../include/battle.h"
#include "../../include/battle_variations.h"
#include "../../include/config.h"
#include "../../include/constants/file.h"
#include "../../include/pokepic.h"
#include "../../include/task.h"
#include "../../include/types.h"
#include "../../include/sound.h"

#define POKEPIC_SCALE_NORMAL 0x100
#define RAID_POKEPIC_SCALE_PERCENT 160
#define PLTT_COLORS 16

#define TINT_RATIO_MAX  8
#define TINT_RED        7
#define TINT_GREEN      0
#define TINT_BLUE       0
#define TINT_STRENGTH   5

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

static BOOL ShouldPlayVictoryPoseForBattler(struct BattleSystem *battleSystem, struct BattleStruct *battleCtx, u32 battler)
{
    if (!IsBattlerSlotValid(battleSystem, battler)) {
        return FALSE;
    }

    return !(battleCtx->no_reshuffle_client & No2Bit(battler));
}

void Task_PlayFaintingSequence_WithVictoryPose(SysTask *task, void *data)
{
    FaintingSequenceData *faintingSequenceData = data;

#ifdef PLAY_MON_VICTORY_POSE
    // hijack the normal clean-up state to play the victory dance
    if (faintingSequenceData->state == 10) {
        struct BattleSystem *battleSystem = faintingSequenceData->battleSys;
        struct BattleStruct *battleCtx = battleSystem->sp;
        PokepicManager *monSpriteMan = BattleSystem_GetPokepicManager(battleSystem);
        void *monAnimMan = ov12_0223B750(battleSystem); // unk1C8 getter

        void *narc = NARC_New(114, HEAPID_BATTLE_HEAP); // NARC_poketool_pokegra_otherpoke

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

        NARC_Delete(narc); // NARC_dtor
        faintingSequenceData->state++;
        // early return to avoid running the original task til the next frame
        return;
    }

    // if we reach our fake "11" state, decrement back to 10 before calling the original task for cleanup
    if (faintingSequenceData->state == 11) {
        struct BattleSystem *battleSystem = faintingSequenceData->battleSys;
        struct BattleStruct *battleCtx = battleSystem->sp;
        void *monAnimMan = ov12_0223B750(battleSystem);

        BOOL side = IsClientEnemy(battleSystem, faintingSequenceData->battler);
        u32 firstBattler = side ? BATTLER_PLAYER : BATTLER_ENEMY;
        for (u32 i = firstBattler; i <= firstBattler + 2; i += 2) {
            if (ShouldPlayVictoryPoseForBattler(battleSystem, battleCtx, i) && !sub_02017068(monAnimMan, i)) {
                // if any pending tasks then don't run the original task yet
                return;
            }
        }

        faintingSequenceData->state--;
    }
#endif // PLAY_MON_VICTORY_POSE

    // run the original task
    ov12_022600F0(task, data);
}

void LONG_CALL Raid_SyncManagedSpriteScale(ManagedSprite *managedSprite, Pokepic *sourcePokepic)
{
    VecFx32 *scale;

    if (managedSprite == NULL || sourcePokepic == NULL || !sourcePokepic->active) {
        return;
    }

    if (sourcePokepic->drawParam.affineWidth == POKEPIC_SCALE_NORMAL && sourcePokepic->drawParam.affineHeight == POKEPIC_SCALE_NORMAL) {
        return;
    }

    scale = (VecFx32 *)((u8 *)managedSprite->sprite + 0x18);
    scale->x = (sourcePokepic->drawParam.affineWidth << FX32_SHIFT) / POKEPIC_SCALE_NORMAL;
    scale->y = (sourcePokepic->drawParam.affineHeight << FX32_SHIFT) / POKEPIC_SCALE_NORMAL;
}

void LONG_CALL Raid_HideSlideInClone(ManagedSprite *managedSprite, Pokepic *sourcePokepic)
{
    if (managedSprite == NULL || sourcePokepic == NULL || !sourcePokepic->active) {
        return;
    }

    if (sourcePokepic->drawParam.affineWidth == POKEPIC_SCALE_NORMAL && sourcePokepic->drawParam.affineHeight == POKEPIC_SCALE_NORMAL) {
        return;
    }

    if (managedSprite->sprite == NULL) {
        return;
    }

    Sprite_SetDrawFlag(managedSprite->sprite, FALSE);
}

void LONG_CALL Raid_ScaleSpriteForBattler(Pokepic *pokepic, struct BattleSystem *battleSystem, int battler)
{
    if (battleSystem == NULL || pokepic == NULL || !pokepic->active) {
        return;
    }
    if (!(battleSystem->battleSpecial & BATTLE_SPECIAL_MAX_RAID)) {
        return;
    }
    if (battler != BATTLER_ENEMY) {
        return;
    }

    PokepicDrawParam *drawParam = &pokepic->drawParam;
    drawParam->visible = FALSE;
    drawParam->affineWidth = POKEPIC_SCALE_NORMAL * RAID_POKEPIC_SCALE_PERCENT / 100;
    drawParam->affineHeight = POKEPIC_SCALE_NORMAL * RAID_POKEPIC_SCALE_PERCENT / 100;
    drawParam->xOffset = -25;
    drawParam->yOffset = -15;
}

void LONG_CALL Raid_ScaleSpriteForEnemy(struct BattleSystem *battleSystem)
{
    PokepicManager *monSpriteMan = BattleSystem_GetPokepicManager(battleSystem);
    Pokepic *pokepic = &monSpriteMan->pics[BATTLER_ENEMY];
    Raid_ScaleSpriteForBattler(pokepic, battleSystem, BATTLER_ENEMY);
}

void LONG_CALL Raid_ApplyTintSlideIn(void *paletteData, u16 palettePosition, Pokepic *sourcePokepic)
{
    if (paletteData == NULL || sourcePokepic == NULL || !sourcePokepic->active) {
        return;
    }
    if (gBattleSystem == NULL ||!(gBattleSystem->battleSpecial & BATTLE_SPECIAL_MAX_RAID)) {
        return;
    }

    u16 *palette = PaletteData_GetUnfadedBuf(paletteData, 2) + palettePosition;
    Raid_TintPalette(palette);

    PaletteData_LoadPalette(paletteData, palette, 2, palettePosition, PLTT_COLORS * sizeof(u16));
}
