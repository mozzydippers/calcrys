#include "../../include/battle_input.h"

#include "../../include/constants/file.h"
#include "../../include/nitro.h"

#define COMMAND_HINT_SPRITE_TAG 22060
#define COMMAND_HINT_PAL_TAG    22061

static const OAMSpriteTemplate sBattleInfoHintTemplate = {
    240,
    108,
    0,
    0,
    100,
    0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    {
        COMMAND_HINT_SPRITE_TAG,
        COMMAND_HINT_PAL_TAG,
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
    u32 battleType = BattleTypeGet(battleSystem);

    return (battleType & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_BUG_CONTEST | BATTLE_TYPE_PAL_PARK | BATTLE_TYPE_CATCHING_DEMO)) == 0;
}

void BattleInfoHint_LoadResources(struct BI_PARAM *bip)
{
    void *csp;
    void *crp;
    void *pfd;

    if (!BattleInfoHint_IsSupportedBattleType(bip->bw)) {
        return;
    }

    csp = BattleWorkCATS_SYS_PTRGet(bip->bw);
    crp = BattleWorkCATS_RES_PTRGet(bip->bw);
    pfd = BattleWorkPfdGet(bip->bw);

    OAM_LoadResourcePlttWorkArc(pfd, FADE_SUB_OBJ, csp, crp, ARC_BATTLE_GFX, BATTLE_GFX_INFO_HINT_NCLR, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, COMMAND_HINT_PAL_TAG);
}

void BattleInfoHint_FreeResources(struct BI_PARAM *bip)
{
    void *crp;

    if (newBS.CommandHintOAM == NULL) {
        return;
    }

    crp = BattleWorkCATS_RES_PTRGet(bip->bw);

    OAM_FreeResourceChar(crp, COMMAND_HINT_SPRITE_TAG);
    OAM_FreeResourcePltt(crp, COMMAND_HINT_PAL_TAG);
    CATS_ActorPointerDelete_S(newBS.CommandHintOAM);
    newBS.CommandHintOAM = NULL;
}

void BattleInfoHint_LoadSprite(struct BI_PARAM *bip)
{
    void *csp;
    void *crp;

    if (newBS.CommandHintOAM != NULL || !BattleInfoHint_IsSupportedBattleType(bip->bw)) {
        return;
    }

    csp = BattleWorkCATS_SYS_PTRGet(bip->bw);
    crp = BattleWorkCATS_RES_PTRGet(bip->bw);

    OAM_LoadResourceCharArc(csp, crp, ARC_BATTLE_GFX, BATTLE_GFX_INFO_HINT_NCGR, 0, NNS_G2D_VRAM_TYPE_2DSUB, COMMAND_HINT_SPRITE_TAG);
    newBS.CommandHintOAM = OAM_ObjectAdd_S(csp, crp, &sBattleInfoHintTemplate);
    OAM_ObjectUpdate(newBS.CommandHintOAM->act);
}
