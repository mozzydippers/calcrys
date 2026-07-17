#include "../../include/battle_input.h"
#include "../../include/constants/file.h"
#include "../../include/nitro.h"

#define COMMAND_HINT_SPRITE_TAG 22060

void LONG_CALL Sprite_SetPalIndexRespectVramOffset(void *sprite, int index);

static const OAMSpriteTemplate sBattleInfoHintTemplate = {
    240,
    108,
    -1,
    0,
    100,
    0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    {
        COMMAND_HINT_SPRITE_TAG,
        20023,
        22052,
        22053,
        CLACT_U_HEADER_DATA_NONE,
        CLACT_U_HEADER_DATA_NONE,
    },
    1,
    0,
};

static BOOL BattleInfoHint_IsSupportedBattleType(BattleSystem *battleSystem)
{
    return (BattleTypeGet(battleSystem) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_BUG_CONTEST | BATTLE_TYPE_PAL_PARK | BATTLE_TYPE_CATCHING_DEMO)) == 0;
}

void BattleInfoHint_FreeResources(struct BI_PARAM *bip)
{
    void *crp = BattleWorkCATS_RES_PTRGet(bip->bw);

    if (newBS.CommandHintOAM != NULL) {
        CATS_ActorPointerDelete_S(newBS.CommandHintOAM);
        newBS.CommandHintOAM = NULL;
        OAM_FreeResourceChar(crp, COMMAND_HINT_SPRITE_TAG);
    }
}

void BattleInfoHint_LoadSprite(struct BI_PARAM *bip)
{
    if (newBS.CommandHintOAM != NULL || !BattleInfoHint_IsSupportedBattleType(bip->bw)) {
        return;
    }

    void *csp = BattleWorkCATS_SYS_PTRGet(bip->bw);
    void *crp = BattleWorkCATS_RES_PTRGet(bip->bw);

    if (OAM_LoadResourceCharArc(csp, crp, ARC_BATTLE_GFX, BATTLE_GFX_INFO_HINT_NCGR, 0, NNS_G2D_VRAM_TYPE_2DSUB, COMMAND_HINT_SPRITE_TAG)) {
        newBS.CommandHintOAM = OAM_ObjectAdd_S(csp, crp, &sBattleInfoHintTemplate);
        if (newBS.CommandHintOAM != NULL) {
            // info hint reuses palette 6
            Sprite_SetPalIndexRespectVramOffset(newBS.CommandHintOAM->act, 6);
            OAM_ObjectUpdate(newBS.CommandHintOAM->act);
        } else {
            OAM_FreeResourceChar(crp, COMMAND_HINT_SPRITE_TAG);
        }
    }
}
