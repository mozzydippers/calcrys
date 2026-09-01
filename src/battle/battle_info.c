#include "../../include/battle_info.h"

#include "../../include/battle.h"
#include "../../include/battle_controller_player.h"
#include "../../include/battle_input.h"
#include "../../include/config.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/file.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/sndseq.h"
#include "../../include/nitro.h"
#include "../../include/overlay.h"
#include "../../include/sound.h"
#include "../../include/system.h"
#include "../../include/types.h"

#define COMMAND_HINT_SPRITE_TAG 22060

static BattleInfoMenuTemplate sBattleInfoPageTemplate = {
    .unk_00 = 28,
    .paletteId = 246,
    .unk_04_val2 = { 0xFFFF, 0xFFFF, 2, 3 },
    .priority = { 2, 1, 3, 0 },
    .touchscreenRect = NULL,
    .touchInput = NULL,
    .unk_1C = NULL,
    .funcCursor = NULL,
    .funcSaveCursorPos = NULL,
    .funcCreateMenuObjects = NULL,
    .funcTouchCallback = NULL,
};

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

typedef BOOL (*BattleInfoOverlayEntry)(struct BattleSystem *bsys, struct BattleStruct *ctx, BattleInput *battleInput);

extern BattleInfoMenuTemplate sBattleMenuTemplates[];

BOOL LONG_CALL BattleInfo_CanOpenFromSelection(BattleInput *battleInput, struct BattleStruct *ctx, int battlerId)
{
    int otherBattlerId;

    if (battleInput == NULL || ctx == NULL) {
        return FALSE;
    }

    if (ctx->server_seq_no != CONTROLLER_COMMAND_SELECTION_SCREEN_INPUT) {
        return FALSE;
    }

    if (ctx->battleInfoActive || ctx->battleInfoApp != NULL) {
        return FALSE;
    }

    if (ctx->com_seq_no[battlerId] != SSI_STATE_1) {
        return FALSE;
    }

    if (battleInput->menu.main.battlerId != battlerId) {
        return FALSE;
    }

    if (battleInput->isTouchDisabled == TRUE) {
        return FALSE;
    }

    if (BattleInput_CheckFeedbackDone(battleInput) == FALSE) {
        return FALSE;
    }

    switch (battleInput->curMenuId) {
    case BATTLE_MENU_MAIN_INITIAL_ID:
    case BATTLE_MENU_MAIN_ID:
    case BATTLE_MENU_3_ID:
    case BATTLE_MENU_4_ID:
    case BATTLE_MENU_7_ID:
    case BATTLE_MENU_8_ID:
    case BATTLE_MENU_19_ID:
    case BATTLE_MENU_20_ID:
        break;
    default:
        return FALSE;
    }

    for (otherBattlerId = 0; otherBattlerId < CLIENT_MAX; otherBattlerId++) {
        if (otherBattlerId == battlerId) {
            continue;
        }

        if (ctx->com_seq_no[otherBattlerId] == SSI_STATE_7
            || ctx->com_seq_no[otherBattlerId] == SSI_STATE_8
            || ctx->com_seq_no[otherBattlerId] == SSI_STATE_9
            || ctx->com_seq_no[otherBattlerId] == SSI_STATE_10) {
            return FALSE;
        }
    }

    return TRUE;
}

void LONG_CALL BattleInfo_UpdateOverlayLifetime(struct BattleStruct *ctx)
{
    if (ctx == NULL) {
        return;
    }

    if (IsOverlayLoaded(OVERLAY_BATTLEINFO_PAGE) && !ctx->battleInfoActive && ctx->battleInfoApp == NULL) {
        UnloadOverlayByID(OVERLAY_BATTLEINFO_PAGE);
    }
}

BOOL LONG_CALL BattleInfo_Launch(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId)
{
    BattleInfoOverlayEntry entry;
    BattleInput *battleInput;
    BOOL opened;

    if (bsys == NULL || ctx == NULL) {
        return FALSE;
    }

    battleInput = ov12_0223A900(bsys);
    if (!BattleInfo_CanOpenFromSelection(battleInput, ctx, battlerId)) {
        return FALSE;
    }

    BattleInfo_UpdateOverlayLifetime(ctx);

    if (!IsOverlayLoaded(OVERLAY_BATTLEINFO_PAGE) && !HandleLoadOverlay(OVERLAY_BATTLEINFO_PAGE, 2)) {
        return FALSE;
    }

    entry = (BattleInfoOverlayEntry)BATTLE_INFO_OVERLAY_ENTRY_ADDR;
    opened = entry(bsys, ctx, battleInput);
    ctx->battleInfoActive = opened;
    if (!opened) {
        BattleInfo_UpdateOverlayLifetime(ctx);
    }

    return opened;
}

BOOL LONG_CALL BattleInfo_TryOpenFromInput(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId)
{
    return BattleInfo_Launch(bsys, ctx, battlerId);
}

BattleInfoMenuTemplate *BattleInfo_GetPageConfigById(int pageId)
{
    if (pageId == BATTLE_INFO_PAGE_ID) {
        return &sBattleInfoPageTemplate;
    }

    if (pageId >= 0 && pageId < BATTLE_INFO_NATIVE_PAGE_COUNT) {
        return &sBattleMenuTemplates[pageId];
    }

    return &sBattleMenuTemplates[BATTLE_INFO_SOURCE_PAGE_ID];
}

BOOL BattleInput_IsMainCommandMenu(int menuId)
{
    switch (menuId) {
    case BATTLE_MENU_MAIN_INITIAL_ID:
    case BATTLE_MENU_MAIN_ID:
    case BATTLE_MENU_3_ID:
    case BATTLE_MENU_4_ID:
    case BATTLE_MENU_19_ID:
    case BATTLE_MENU_20_ID:
        return TRUE;
    default:
        return FALSE;
    }
}

void BattleInput_RestoreNativeMenuBgChars(BattleInput *battleInput, int menuId)
{
    u32 battleType;
    int bgTilesId;

    if (battleInput == NULL || battleInput->battleSystem == NULL) {
        return;
    }

    if (menuId < 0 || menuId >= BATTLE_INFO_NATIVE_PAGE_COUNT) {
        return;
    }

    battleType = BattleSystem_GetBattleType(battleInput->battleSystem);
    bgTilesId = (battleType & BATTLE_TYPE_FRONTIER) ? BATTLE_INFO_FRONTIER_MENU_NCGR : BATTLE_INFO_NATIVE_MENU_NCGR;

    GfGfxLoader_LoadCharData(
        BATTLE_INFO_NATIVE_MENU_GFX_NARC,
        bgTilesId,
        BattleSystem_GetBgConfig(battleInput->battleSystem),
        GF_BG_LYR_SUB_0,
        0,
        0x6000,
        TRUE,
        HEAPID_BATTLE_HEAP);
}

void LONG_CALL BattleInput_ChangeMenu(NARC *narc0 UNUSED, NARC *narc1, BattleInput *battleInput, int menuId, int a4, BattleInputMenu *a5)
{
    const BattleMenuTemplate *menuTemplate, *prevMenuTemplate;
    BOOL restoringFromBattleInfoPage;

    if (a5 != NULL) {
        memcpy(&battleInput->menu, a5, sizeof(BattleInputMenu));
    }

    battleInput->isTouchDisabled = FALSE;

    BgConfig *bgConfig = BattleSystem_GetBgConfig(battleInput->battleSystem);
    void *spriteSystem = BattleSystem_GetSpriteSystem(battleInput->battleSystem);
    void *spriteManager = BattleSystem_GetSpriteManager(battleInput->battleSystem);

    if (battleInput->curMenuId == BATTLE_MENU_NONE) {
        a4 = 1;
        prevMenuTemplate = NULL;
    } else {
        prevMenuTemplate = BattleInfo_GetPageConfigById(battleInput->curMenuId);
    }

    restoringFromBattleInfoPage = (battleInput->curMenuId == BATTLE_INFO_PAGE_ID && menuId != BATTLE_INFO_PAGE_ID);
    if (restoringFromBattleInfoPage) {
        BattleInput_RestoreNativeMenuBgChars(battleInput, menuId);
    }

    menuTemplate = BattleInfo_GetPageConfigById(menuId);

    PaletteData_LoadPalette(BattleSystem_GetPaletteData(battleInput->battleSystem), battleInput->paletteBuffer, PLTTBUF_SUB_BG, 0, 0x200);

    for (int i = 0; i < 4; i++) {
        if ((menuTemplate->unk_04_val2[i] != 0xffff) && ((a4 == 1) || (menuTemplate->unk_04_val2[i] != prevMenuTemplate->unk_04_val2[i]))) {
            BG_LoadScreenTilemapData(bgConfig, 4 + i, battleInput->screenBuffer[menuTemplate->unk_04_val2[i]], 0x800);
            ScheduleBgTilemapBufferTransfer(bgConfig, 4 + i);
        }
    }

    SpriteSystem_LoadPaletteBufferFromOpenNarc(BattleSystem_GetPaletteData(battleInput->battleSystem), PLTTBUF_SUB_OBJ, spriteSystem, spriteManager, narc1, 72, 0, 7, NNS_G2D_VRAM_TYPE_2DSUB, 20023);

    battleInput->curMenuId = menuId;

    // G2S_SetBlendAlpha
    reg_G2S_DB_BLDCNT = (u16)(GX_BLEND_PLANEMASK_BG1 | (15 << 8) | (1 << 6));
    reg_G2S_DB_BLDALPHA = (u16)(8 | (12 << 8));
    BattleInput_FreePersistentResources(battleInput);

    if (menuTemplate->funcCreateMenuObjects != NULL) {
        menuTemplate->funcCreateMenuObjects(battleInput, menuId, a4);
    }

    SysTask_CreateOnVWaitQueue(ov12_02269830, battleInput, 10);
}

void ov12_02269830(SysTask *task, void *data)
{
    BattleInput *battleInput = data;
    const BattleMenuTemplate *menu;
    int i;

    menu = BattleInfo_GetPageConfigById(battleInput->curMenuId);

    for (i = 0; i < 4; i++) {
        if (menu->unk_04_val2[i] == 0xffff) {
            ToggleBgLayer(GF_BG_LYR_SUB_0 + i, GF_PLANE_TOGGLE_OFF);
        } else {
            ToggleBgLayer(GF_BG_LYR_SUB_0 + i, GF_PLANE_TOGGLE_ON);
        }
    }

    for (i = 0; i < 4; i++) {
        SetBgPriority(GF_BG_LYR_SUB_0 + i, (u8)menu->priority[i]);
    }

    DestroySysTask(task);
}

int LONG_CALL BattleInput_CheckTouch(BattleInput *battleInput)
{
    int ret, rectHit, paletteId;
    int keyPressed = 0;
    struct BattleStruct *ctx;
    int battlerId;

    GF_ASSERT(battleInput->curMenuId != BATTLE_MENU_NONE);

    const BattleMenuTemplate *menuTemplate = BattleInfo_GetPageConfigById(battleInput->curMenuId);

    if ((menuTemplate->touchscreenRect == NULL) || (battleInput->isTouchDisabled == TRUE)) {
        return TOUCH_MENU_NO_INPUT;
    }

    ctx = BattleSystem_GetBattleContext(battleInput->battleSystem);
    battlerId = battleInput->menu.main.battlerId;
    if (ctx != NULL
        && battlerId >= 0
        && battlerId < CLIENT_MAX
        && BattleInput_IsMainCommandMenu(battleInput->curMenuId)
        && (ctx->server_seq_no != CONTROLLER_COMMAND_SELECTION_SCREEN_INPUT || ctx->com_seq_no[battlerId] != SSI_STATE_1)) {
        return TOUCH_MENU_NO_INPUT;
    }

    if (battleInput->feedbackTask != NULL) {
        return TOUCH_MENU_NO_INPUT;
    }

    GF_ASSERT(menuTemplate->touchInput != NULL);

    if (BattleSystem_GetBattleType(battleInput->battleSystem) & BATTLE_TYPE_TUTORIAL) {
        rectHit = BattleInput_CatchingTutorialMain(battleInput);
    } else {
        rectHit = TouchscreenHitbox_FindRectAtTouchNew(menuTemplate->touchscreenRect);

        if (rectHit == TOUCH_MENU_NO_INPUT) {
            rectHit = BattleInput_CheckCursorInput(battleInput);
            keyPressed++;
        }
    }

    if (rectHit == TOUCH_MENU_NO_INPUT) {
        ret = TOUCH_MENU_NO_INPUT;
        paletteId = 0xff;
    } else {
        ret = menuTemplate->touchInput[rectHit];
        paletteId = menuTemplate->unk_1C[rectHit];
    }

    if (menuTemplate->funcTouchCallback != NULL) {
        ret = menuTemplate->funcTouchCallback(battleInput, ret, paletteId);

        if (ret != TOUCH_MENU_NO_INPUT) {
            if (menuTemplate->funcSaveCursorPos != NULL) {
                menuTemplate->funcSaveCursorPos(battleInput, rectHit);
            }

            memset(&battleInput->menuCursor, 0, sizeof(BattleMenuCursor));
            BattleCursor_Disable(battleInput->cursor);

            if (keyPressed > 0) {
                battleInput->keyPressed = 1;
            } else {
                battleInput->keyPressed = 0;
            }
        }
    }

    return ret;
}

int BattleInput_CheckCursorInput(BattleInput *battleInput)
{
    BattleMenuCursor *cursor;
    const BattleMenuTemplate *menu;
    struct BattleStruct *ctx;

    cursor = &battleInput->menuCursor;
    menu = BattleInfo_GetPageConfigById(battleInput->curMenuId);

    if ((gSystem.newKeys & PAD_BUTTON_X) != 0) {
        ctx = BattleSystem_GetBattleContext(battleInput->battleSystem);
        if (ctx != NULL && BattleInfo_TryOpenFromInput(battleInput->battleSystem, ctx, battleInput->menu.main.battlerId)) {
            return TOUCH_MENU_NO_INPUT;
        }
    }

    if (menu->funcCursor == NULL) {
        return TOUCH_MENU_NO_INPUT;
    }

    if (cursor->enabled == FALSE) {
        if ((battleInput->keyPressed == TRUE) || (gSystem.newKeys & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_BUTTON_X | PAD_BUTTON_Y | PAD_KEY_RIGHT | PAD_KEY_LEFT | PAD_KEY_UP | PAD_KEY_DOWN))) {
            if (battleInput->keyPressed == FALSE) {
                PlaySE(SEQ_SE_DP_SELECT);
            }

            cursor->enabled = TRUE;
            battleInput->keyPressed = FALSE;
            menu->funcCursor(battleInput, TRUE);
        }

        return TOUCH_MENU_NO_INPUT;
    }

    return menu->funcCursor(battleInput, FALSE);
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
    if (newBS.CommandHintOAM != NULL || (BattleTypeGet(bip->bw) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_BUG_CONTEST | BATTLE_TYPE_PAL_PARK | BATTLE_TYPE_TUTORIAL))) {
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
