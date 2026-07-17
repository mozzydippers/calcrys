#include "../../include/battle.h"
#include "../../include/battle_input.h"
#include "../../include/constants/buttons.h"
#include "../../include/constants/file.h"
#include "../../include/constants/item.h"
#include "../../include/constants/moves.h"
#include "../../include/message.h"
#include "../../include/nitro.h"
#include "../../include/pokemon.h"
#include "../../include/sprite.h"
#include "../../include/system.h"
#include "../../include/task.h"
#include "../../include/window.h"

#define BATTLE_INFO_EOS                    0xFFFF
#define BATTLE_INFO_CHAR_SPACE             0x01DE
#define BATTLE_INFO_CHAR_x                 0x015C
#define BATTLE_INFO_CHAR_PLUS              0x01BD
#define BATTLE_INFO_CHAR_MINUS             0x01BE
#define BATTLE_INFO_CHAR_0                 0x0121
#define BATTLE_INFO_TEXT_SLOT_STAT_BASE    3
#define BATTLE_INFO_TEXT_SLOT_MOVE_BASE    12
#define BATTLE_INFO_TEXT_SLOT_STATUS_BASE  16
#define BATTLE_INFO_TEXT_SLOT_COUNT        25
#define BATTLE_INFO_MOVES_WINDOW_X         18
#define BATTLE_INFO_MOVES_WINDOW_Y         1
#define BATTLE_INFO_MOVES_WINDOW_Y_PX      2
#define BATTLE_INFO_TOP_ROW_GAP_PX         12
#define BATTLE_INFO_STATUS_WINDOW_X        18
#define BATTLE_INFO_STATUS_WINDOW_Y        9
#define BATTLE_INFO_STATUS_WINDOW_Y_PX     -6
#define BATTLE_INFO_STAT_WINDOW_Y_PX       -6
#define BATTLE_INFO_STATUS_ROW_GAP         2
#define BATTLE_INFO_STATUS_ROW_GAP_PX      12
#define BATTLE_INFO_STAT_ROW_GAP_PX        12
#define BATTLE_INFO_STATUS_ROW_MAX         7
#define BATTLE_INFO_PANEL_BG_LAYER         4
#define BATTLE_INFO_PAGE_ID                21
#define BATTLE_INFO_BUTTON_W_TILES         5
#define BATTLE_INFO_BUTTON_H_TILES         5
#define BATTLE_INFO_FOOTER_BUTTON_GFX_NARC 71
#define BATTLE_INFO_FOOTER_BUTTON_NSCR     20
#define BATTLE_INFO_FOOTER_BUTTON_NCGR     22
#define BATTLE_INFO_FOOTER_BUTTON_NCLR     23
#define BATTLE_INFO_FOOTER_BUTTON_TILE_MAX 160
#define BATTLE_INFO_FOOTER_BUTTON_PAL_BANK 11
#define BATTLE_INFO_SHELL_PAL_BANK         10
#define BATTLE_INFO_SUB_BG_PLTTBUF         1
#define BATTLE_INFO_SUB_BG_SCR_BASE        ((u16 *)(0x06200000 + (14 * 0x800)))
#define BATTLE_INFO_FOOTER_BG_SCR_BASE     ((u16 *)(0x06200000 + (15 * 0x800)))
#define BATTLE_INFO_SUB_BG_SCREEN_0_BASE   ((u16 *)(0x06200000 + (12 * 0x800)))
#define BATTLE_INFO_SUB_BG_SCREEN_1_BASE   ((u16 *)(0x06200000 + (13 * 0x800)))
#define BATTLE_INFO_SUB_BG_SCREEN_2_BASE   ((u16 *)(0x06200000 + (14 * 0x800)))
#define BATTLE_INFO_SUB_BG_SCREEN_3_BASE   ((u16 *)(0x06200000 + (15 * 0x800)))
#define BATTLE_INFO_SUB_BG_TILE_LIMIT      0x300
#define BATTLE_INFO_BG_W_TILES             32
#define BATTLE_INFO_BG_H_TILES             24
#define BATTLE_INFO_BG_TILEMAP_ENTRIES     1024
#define BATTLE_INFO_FOOTER_BG_ID           7
#define BATTLE_INFO_FOOTER_BG_PRIORITY     1
#define BATTLE_INFO_SHELL_TILE_MAX         64
#define BATTLE_INFO_SHELL_TILEMAP_TILE_MAX (BATTLE_INFO_BG_W_TILES * BATTLE_INFO_BG_H_TILES)
#define BATTLE_INFO_FOOTER_TILE_BYTES      ((BATTLE_INFO_FOOTER_BUTTON_TILE_MAX + 1) * 32)
#define BATTLE_INFO_SHELL_TILE_BYTES       (BATTLE_INFO_SHELL_TILE_MAX * 32)
#define PLTTBUF_SUB_BG_F                   (1 << 1)
#define PLTTBUF_SUB_OBJ_F                  (1 << 3)
#define BATTLE_INFO_FADE_BUFFERS           (PLTTBUF_SUB_BG_F | PLTTBUF_SUB_OBJ_F)
#define BATTLE_INFO_FADE_PALETTES          0xFFFF
#define BATTLE_INFO_FADE_WAIT              -8

typedef struct NNSG2dCharacterData {
    u16 H;
    u16 W;
    u32 pixelFmt;
    u32 mappingType;
    u32 characterFmt;
    u32 szByte;
    void *pRawData;
} NNSG2dCharacterData;

typedef struct NNSG2dPaletteData {
    u32 fmt;
    BOOL bExtendedPlt;
    u32 szByte;
    void *pRawData;
} NNSG2dPaletteData;

typedef struct BattleInfoTextObjTemplate {
    void *fontSystem;
    struct Window *window;
    void *spriteList;
    void *plttResourceProxy;
    void *sprite;
    u32 offset;
    int x;
    int y;
    int unk_20;
    int unk_24;
    int vram;
    int heapID;
} BattleInfoTextObjTemplate;

void *LONG_CALL BattleSystem_GetBattleContext(struct BattleSystem *bsys);
void *LONG_CALL BattleSystem_GetPaletteData(struct BattleSystem *bsys);
void LONG_CALL NARC_Delete(NARC *narc);
void LONG_CALL ToggleBgLayer(u8 bgId, u8 toggle);
struct PartyPokemon *LONG_CALL BattleSystem_GetPartyMon(struct BattleSystem *bsys, int battlerId, int slot);
int LONG_CALL ov12_022581D4(struct BattleSystem *bsys, void *battleCtx, int a2, int battlerId);
void LONG_CALL BufferAbilityName(MessageFormat *msgFmt, u32 fieldno, u32 abilityId);
void LONG_CALL BufferStatName(MessageFormat *msgFmt, u32 fieldno, u32 statId);
MessageFormat *LONG_CALL MessageFormat_New_Custom(u32 nstr, u32 len, u32 heapId);
void LONG_CALL MessageFormat_Delete(MessageFormat *messageFormat);
String *LONG_CALL GetMoveName(u32 move, u32 heapId);
void *LONG_CALL sub_02013534(int num, int heapId);
void LONG_CALL sub_020135AC(void *manager);
void *LONG_CALL sub_020135D8(const void *textObjTemplate);
void LONG_CALL sub_02013660(void *textObj);
int LONG_CALL sub_02013688(struct Window *window, int vramType, int a2);
void LONG_CALL sub_020138E0(void *textObj, int a1);
BOOL LONG_CALL sub_02021AC8(u32 size, BOOL atEnd, int vramType, void *transfer);
void LONG_CALL sub_02021B5C(void *transfer);
int LONG_CALL FontID_String_GetWidth(int fontId, String *string, int letterSpacing);
u8 LONG_CALL AddTextPrinterParameterizedWithColorAndSpacing(struct Window *window, int fontId, String *string, u32 x, u32 y, u32 textSpeed, u32 color, u32 letterSpacing, u32 lineSpacing, void *callback);
int LONG_CALL TouchscreenHitbox_FindRectAtTouchNew(const void *hitboxes);
void LONG_CALL BattleInput_EnableBallGauge(BattleInput *battleInput);
void LONG_CALL BattleInput_DisableBallGauge(BattleInput *battleInput);
void LONG_CALL BattleCursor_Disable(void *cursor);
void *LONG_CALL BattleSystem_GetSpriteSystem(struct BattleSystem *battleSystem);
void *LONG_CALL BattleSystem_GetSpriteManager(struct BattleSystem *battleSystem);
void *LONG_CALL BattleSystem_GetBgConfig(struct BattleSystem *battleSystem);
void *LONG_CALL SpriteManager_GetSpriteList(void *spriteManager);
void *LONG_CALL SpriteManager_FindPlttResourceProxy(void *spriteManager, int id);
void *LONG_CALL GfGfxLoader_GetCharData(u32 narcId, s32 memberNo, BOOL isCompressed, NNSG2dCharacterData **ppCharData, u32 heapId);
void *LONG_CALL GfGfxLoader_GetScrnData(u32 narcId, s32 memberNo, BOOL isCompressed, NNSG2dScreenData **ppScrnData, u32 heapId);
void *LONG_CALL GfGfxLoader_GetPlttData(u32 narcId, s32 memberNo, NNSG2dPaletteData **ppPlttData, u32 heapId);
void LONG_CALL BG_LoadCharTilesData(void *bgl, u8 bgId, const void *data, u32 size, u32 tileStart);
u16 *LONG_CALL PaletteData_GetUnfadedBuf(void *data, u32 bufferID);
void LONG_CALL PaletteData_LoadPalette(void *data, const u16 *src, u32 bufferID, u16 offset, u16 size);
u8 LONG_CALL PaletteData_BeginPaletteFade(void *data, u16 toSelect, u16 opaqueBit, s8 wait, u8 cur, u8 end, u16 nextRGB);
u16 LONG_CALL PaletteData_GetSelectedBuffersBitmask(void *data);
void LONG_CALL InitWindow(void *window);
void LONG_CALL AddTextWindowTopLeftCorner(void *bgConfig, void *window, u8 width, u8 height, u16 baseTile, u8 paletteNum);
void LONG_CALL RemoveWindow(void *window);
void LONG_CALL sub_020776B8(void *spriteSystem, void *spriteManager, int vramType, int type, int tag);
void LONG_CALL sub_020777A4(void *spriteManager, int tag);
ManagedSprite *LONG_CALL sub_020777C8(void *spriteSystem, void *spriteManager, int type, void *spriteTemplate);
void LONG_CALL thunk_ManagedSprite_DeleteAndFreeResources(ManagedSprite *managedSprite);

typedef struct BattleInfoTextSlot {
    void *textObj;
    UnkStruct_02021AC8 transfer;
    u16 fontLength;
} BattleInfoTextSlot;

typedef struct BattleInfoTaskData {
    struct BattleSystem *bsys;
    u16 state;
    u16 timer;
    s16 cycleDirection;
} BattleInfoTaskData;

typedef struct BattleInfoFocusEntry {
    u8 battlerId;
    u8 partySlot;
} BattleInfoFocusEntry;

typedef struct BattleInfoApp {
    u8 cycleCooldown;
    u8 battlerId;
    u8 partySlot;
    u8 returnMenuId;
    struct BattleStruct *ctx;
    BattleInput *bip;
    void *fontSystem;
    MessageFormat *msgFormat;
    BattleInputMainMenu returnMenu;
    BattleInfoTaskData taskData;
    u8 shellReady;
    u8 footerReady;
    u16 shellTileBase;
    u16 footerTileBase;
    u16 shellTileCount;
    u8 footerTileCount;
    s8 pressedButton;
    u16 shellPaletteBackup[16];
    u16 footerPaletteBackup[16];
    u16 shellTilemapBackup[BATTLE_INFO_SHELL_TILEMAP_TILE_MAX];
    u16 footerTilemapBackup[BATTLE_INFO_BG_TILEMAP_ENTRIES];
    u16 footerStates[BATTLE_INFO_TOUCH_TOTAL][2][BATTLE_INFO_BUTTON_W_TILES * BATTLE_INFO_BUTTON_H_TILES];
    CATS_ACT_PTR icon;
    ManagedSprite *typeIcons[2];
    BattleInfoTextSlot textSlots[BATTLE_INFO_TEXT_SLOT_COUNT];
} BattleInfoApp;

#define BATTLE_INFO_ICON_CHAR_TAG      20536
#define BATTLE_INFO_ICON_PLTT_TAG      20522
#define BATTLE_INFO_ICON_CELL_TAG      20521
#define BATTLE_INFO_ICON_CELL_ANIM_TAG 20521
#define BATTLE_INFO_TYPE_ICON_CHAR_TAG 20525

static const ManagedSpriteTemplate sBattleInfoTypeIconTemplate = {
    .x = 0,
    .y = 0,
    .z = 0,
    .animation = 0,
    .drawPriority = 100,
    .pal = 0,
    .vram = NNS_G2D_VRAM_TYPE_2DSUB,
    .resIdList = { BATTLE_INFO_TYPE_ICON_CHAR_TAG, 20020, 20017, 20017, -1, -1 },
    .bgPriority = 1,
    .vramTransfer = 0,
};

static const OAMSpriteTemplate sBattleInfoIconTemplate = {
    26,
    112,
    0,
    0,
    100,
    0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    {
        BATTLE_INFO_ICON_CHAR_TAG,
        BATTLE_INFO_ICON_PLTT_TAG,
        BATTLE_INFO_ICON_CELL_TAG,
        BATTLE_INFO_ICON_CELL_ANIM_TAG,
        CLACT_U_HEADER_DATA_NONE,
        CLACT_U_HEADER_DATA_NONE,
    },
    1,
    0,
};

static const TouchscreenHitbox sBattleInfoFooterTouchscreenRects[] = {
    { .rect = { .top = 152, .bottom = 191, .left = 8, .right = 56 } },
    { .rect = { .top = 152, .bottom = 191, .left = 56, .right = 104 } },
    { .rect = { .top = 152, .bottom = 191, .left = 200, .right = 248 } },
    { .rect = { .top = TOUCHSCREEN_RECTLIST_END, .bottom = 0, .left = 0, .right = 0 } },
};

static void BattleInfo_CreatePageObjects(BattleInfoApp *app, BattleInput *battleInput);
static BOOL BattleInfo_ChangeToClientPage(BattleInput *battleInput, int menuId, const BattleInputMenu *menuState);
static void *BattleInfo_GetTextSlot(BattleInfoApp *app, int slot);
static u16 BattleInfo_DigitChar(u32 digit);
static void BattleInfo_ResetTextSlot(BattleInfoApp *app, BattleInput *battleInput, int slot);
static BOOL BattleInfo_StartApp(struct BattleSystem *bsys, struct BattleStruct *ctx, BattleInput *battleInput);
static BOOL BattleInfo_IsSelectionOwnerStateValid(BattleInfoApp *app);
static void BattleInfo_ClosePageContents(BattleInfoApp *app, BattleInput *battleInput);
static void BattleInfo_StopTask(SysTask *task, BattleInfoApp *app, BattleInput *battleInput);
static int BattleInfo_CheckTouchAction();
static BOOL BattleInfo_LoadShellPanels(BattleInfoApp *app, BattleInput *battleInput);
static BOOL BattleInfo_LoadFooterButtonResources(BattleInfoApp *app, BattleInput *battleInput);
static void BattleInfo_CreateShellPanels(BattleInfoApp *app, BattleInput *battleInput);
static void BattleInfo_DestroyShellPanels(BattleInfoApp *app, BattleInput *battleInput);
static void BattleInfo_BackupReturnShellPalette(BattleInfoApp *app, BattleInput *battleInput);
static void BattleInfo_WriteFooterButtonState(BattleInfoApp *app, BattleInput *battleInput, int buttonId, BOOL pressed);
static void BattleInfo_CreateFooterButtons(BattleInfoApp *app, BattleInput *battleInput);
static void BattleInfo_DestroyFooterButtons(BattleInfoApp *app, BattleInput *battleInput);
static void BattleInfo_SetFooterButtonVisual(BattleInfoApp *app, BattleInput *battleInput, int buttonId, BOOL pressed);
static void BattleInfo_BackupFooterTilemap(BattleInfoApp *app);
static void BattleInfo_BackupReturnFooterPalette(BattleInfoApp *app, BattleInput *battleInput);
static void BattleInfo_BeginSubscreenFade(BattleInfoApp *app, u8 cur, u8 end);
static BOOL BattleInfo_IsSubscreenFadeActive(BattleInfoApp *app);
static void BattleInfo_DestroyBattlerIcon(BattleInfoApp *app, BattleInput *battleInput);
static void BattleInfo_LoadBattlerIconResources(BattleInput *battleInput);
static void BattleInfo_FreeBattlerIconResources(BattleInput *battleInput);
static void BattleInfo_CreateBattlerIcon(BattleInfoApp *app, BattleInput *battleInput);
static void BattleInfo_DestroyTypeIcons(BattleInfoApp *app);
static void BattleInfo_CreateTypeIcons(BattleInfoApp *app, BattleInput *battleInput, u32 type1, u32 type2);
__attribute__((section(".init"))) int BattleInfoOverlayEntry(int command, void *arg0, void *arg1, void *arg2)
{
    switch ((BattleInfoOverlayCommand)command) {
    case BATTLE_INFO_OVERLAY_CMD_MAIN:
        return BattleInfo_StartApp(arg0, arg1, arg2);
    default:
        return 0;
    }
}

static BattleInfoApp *BattleInfo_AppNew()
{
    BattleInfoApp *app = sys_AllocMemory(HEAPID_BATTLE_HEAP, sizeof(BattleInfoApp));

    if (app == NULL) {
        return NULL;
    }

    memset(app, 0, sizeof(BattleInfoApp));
    app->pressedButton = -1;
    return app;
}

static void BattleInfo_AppDelete(BattleInfoApp *app)
{
    if (app == NULL) {
        return;
    }

    if (app->fontSystem != NULL) {
        sub_020135AC(app->fontSystem);
        app->fontSystem = NULL;
    }

    if (app->msgFormat != NULL) {
        MessageFormat_Delete(app->msgFormat);
        app->msgFormat = NULL;
    }

    if (app->ctx != NULL && app->ctx->battleInfoApp == app) {
        app->ctx->battleInfoApp = NULL;
        app->ctx->battleInfoActive = FALSE;
    }

    sys_FreeMemoryEz(app);
}

static void BattleInfo_DestroyBattlerIcon(BattleInfoApp *app, BattleInput *battleInput)
{
    void *crp;

    if (app == NULL || battleInput == NULL) {
        return;
    }

    if (app->icon != NULL) {
        CATS_ActorPointerDelete_S(app->icon);
        app->icon = NULL;
    }

    crp = BattleWorkCATS_RES_PTRGet(battleInput->battleSystem);
    if (crp != NULL) {
        OAM_FreeResourceChar(crp, BATTLE_INFO_ICON_CHAR_TAG);
    }
}

static void BattleInfo_LoadBattlerIconResources(BattleInput *battleInput)
{

    if (battleInput == NULL) {
        return;
    }

    void *csp = BattleWorkCATS_SYS_PTRGet(battleInput->battleSystem);
    void *crp = BattleWorkCATS_RES_PTRGet(battleInput->battleSystem);
    void *pfd = BattleWorkPfdGet(battleInput->battleSystem);
    if (csp == NULL || crp == NULL || pfd == NULL) {
        return;
    }

    OAM_LoadResourcePlttWorkArc(
        pfd,
        FADE_SUB_OBJ,
        csp,
        crp,
        ARC_POKEICON,
        PokeIconPalArcIndexGet(),
        0,
        3,
        NNS_G2D_VRAM_TYPE_2DSUB,
        BATTLE_INFO_ICON_PLTT_TAG);
    OAM_LoadResourceCellArc(csp, crp, ARC_POKEICON, PokeIconAnmCellArcIndexGet(), 0, BATTLE_INFO_ICON_CELL_TAG);
    OAM_LoadResourceCellAnmArc(csp, crp, ARC_POKEICON, PokeIconAnmCellAnmArcIndexGet(), 0, BATTLE_INFO_ICON_CELL_ANIM_TAG);
}

static void BattleInfo_FreeBattlerIconResources(BattleInput *battleInput)
{
    if (battleInput == NULL) {
        return;
    }

    void *crp = BattleWorkCATS_RES_PTRGet(battleInput->battleSystem);
    if (crp == NULL) {
        return;
    }

    OAM_FreeResourceCell(crp, BATTLE_INFO_ICON_CELL_TAG);
    OAM_FreeResourceCellAnm(crp, BATTLE_INFO_ICON_CELL_ANIM_TAG);
    OAM_FreeResourcePltt(crp, BATTLE_INFO_ICON_PLTT_TAG);
}

static void BattleInfo_CreateBattlerIcon(BattleInfoApp *app, BattleInput *battleInput)
{
    OAMSpriteTemplate iconTemplate;

    if (app == NULL || battleInput == NULL || app->taskData.bsys == NULL) {
        return;
    }

    BattleInfo_DestroyBattlerIcon(app, battleInput);

    struct PartyPokemon *partyMon = BattleSystem_GetPartyMon(app->taskData.bsys, app->battlerId, app->partySlot);
    if (partyMon == NULL) {
        return;
    }

    u32 species = GetMonData(partyMon, MON_DATA_SPECIES, NULL);
    u32 isEgg = GetMonData(partyMon, MON_DATA_IS_EGG, NULL);
    u32 formNo = GetMonData(partyMon, MON_DATA_FORM, NULL);

    void *csp = BattleWorkCATS_SYS_PTRGet(battleInput->battleSystem);
    void *crp = BattleWorkCATS_RES_PTRGet(battleInput->battleSystem);
    if (csp == NULL || crp == NULL) {
        return;
    }

    u32 iconIndex = PokeIconIndexGetByMonsNumber(species, isEgg, formNo);
    iconTemplate = sBattleInfoIconTemplate;
    iconTemplate.pal = GetMonIconPalette(species, formNo, isEgg);
    OAM_LoadResourceCharArc(csp, crp, ARC_POKEICON, iconIndex, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, BATTLE_INFO_ICON_CHAR_TAG);
    app->icon = OAM_ObjectAdd_S(csp, crp, &iconTemplate);
    if (app->icon != NULL) {
        Sprite_SetPositionXYWithSubscreenOffset(app->icon->act, sBattleInfoIconTemplate.x, sBattleInfoIconTemplate.y, 192 << FX32_SHIFT);
        Sprite_SetDrawFlag(app->icon->act, TRUE);
        OAM_ObjectUpdate(app->icon->act);
    }
}

static void BattleInfo_DestroyTypeIcons(BattleInfoApp *app)
{
    if (app == NULL) {
        return;
    }

    for (int i = 0; i < (int)NELEMS(app->typeIcons); i++) {
        if (app->typeIcons[i] != NULL) {
            thunk_ManagedSprite_DeleteAndFreeResources(app->typeIcons[i]);
            app->typeIcons[i] = NULL;
        }
    }
}

static u32 BattleInfo_MapToNativeTypeIconId(u32 type)
{
    if (type >= TYPE_TYPELESS) {
        return TYPE_NORMAL;
    }

    return type;
}

static void BattleInfo_CreateTypeIcon(BattleInfoApp *app, BattleInput *battleInput, int slot, u32 type, int x, int y)
{
    if (app == NULL || battleInput == NULL || slot < 0 || slot >= (int)NELEMS(app->typeIcons)) {
        return;
    }

    void *spriteSystem = BattleSystem_GetSpriteSystem(battleInput->battleSystem);
    void *spriteManager = BattleSystem_GetSpriteManager(battleInput->battleSystem);
    if (spriteSystem == NULL || spriteManager == NULL) {
        return;
    }

    u32 nativeType = BattleInfo_MapToNativeTypeIconId(type);
    sub_020777A4(spriteManager, BATTLE_INFO_TYPE_ICON_CHAR_TAG + slot);
    sub_020776B8(spriteSystem, spriteManager, NNS_G2D_VRAM_TYPE_2DSUB, nativeType, BATTLE_INFO_TYPE_ICON_CHAR_TAG + slot);

    ManagedSpriteTemplate template;
    template = sBattleInfoTypeIconTemplate;
    template.x = x;
    template.y = y;
    template.resIdList[0] = BATTLE_INFO_TYPE_ICON_CHAR_TAG + slot;

    app->typeIcons[slot] = sub_020777C8(spriteSystem, spriteManager, nativeType, &template);
    if (app->typeIcons[slot] == NULL) {
        return;
    }

    Sprite_SetPositionXYWithSubscreenOffset(app->typeIcons[slot]->sprite, x, y, 272 << FX32_SHIFT);
    Sprite_SetDrawFlag(app->typeIcons[slot]->sprite, TRUE);
}

static void BattleInfo_CreateTypeIcons(BattleInfoApp *app, BattleInput *battleInput, u32 type1, u32 type2)
{
    BattleInfo_DestroyTypeIcons(app);

    if (type2 != type1 && type2 != TYPE_MYSTERY && type2 < TYPE_TYPELESS) {
        BattleInfo_CreateTypeIcon(app, battleInput, 0, type1, 64, 22);
        BattleInfo_CreateTypeIcon(app, battleInput, 1, type2, 96, 22);
    } else {
        BattleInfo_CreateTypeIcon(app, battleInput, 0, type1, 64, 22);
    }
}

static int BattleInfo_GetActivePartySlot(struct BattleSystem *bsys, int battlerId)
{
    return ov12_022581D4(bsys, BattleSystem_GetBattleContext(bsys), 2, battlerId);
}

static int BattleInfo_GetFocusEntries(struct BattleSystem *bsys, struct BattleStruct *ctx, BattleInfoFocusEntry *entries, int entriesMax)
{
    static const u8 sFocusBattlerOrder[] = {
        BATTLER_PLAYER,
        BATTLER_PLAYER2,
        BATTLER_ENEMY,
        BATTLER_ENEMY2,
    };
    const int focusBattlerOrderCount = (int)NELEMS(sFocusBattlerOrder);
    int battlerId;
    int maxBattlers = BattleWorkClientSetMaxGet(bsys);
    int count = 0;
    int activePartySlots[CLIENT_MAX];
    u8 seenEnemyTeams[CLIENT_MAX] = { 0 };

    for (battlerId = 0; battlerId < CLIENT_MAX; battlerId++) {
        activePartySlots[battlerId] = -1;
    }

    for (battlerId = 0; battlerId < focusBattlerOrderCount && count < entriesMax; battlerId++) {
        int orderedBattlerId = sFocusBattlerOrder[battlerId];

        if (orderedBattlerId >= maxBattlers) {
            continue;
        }
        if (ctx->battlemon[orderedBattlerId].hp == 0) {
            continue;
        }
        activePartySlots[orderedBattlerId] = BattleInfo_GetActivePartySlot(bsys, orderedBattlerId);
        entries[count].battlerId = orderedBattlerId;
        entries[count].partySlot = (u8)activePartySlots[orderedBattlerId];
        count++;
    }

    for (battlerId = 0; battlerId < maxBattlers && count < entriesMax; battlerId++) {
        if (ctx->battlemon[battlerId].hp == 0) {
            continue;
        }
        if (activePartySlots[battlerId] < 0) {
            activePartySlots[battlerId] = BattleInfo_GetActivePartySlot(bsys, battlerId);
        }
    }

    for (battlerId = 0; battlerId < maxBattlers && count < entriesMax; battlerId++) {
        if (!IsClientEnemy(bsys, battlerId)) {
            continue;
        }

        u32 teamKey = SanitizeClientForTeamAccess(bsys, battlerId);
        if (seenEnemyTeams[teamKey]) {
            continue;
        }
        seenEnemyTeams[teamKey] = TRUE;
        int partyCount = BattleWorkPokeCountGet(bsys, battlerId);

        for (int slot = 0; slot < partyCount && count < entriesMax; slot++) {
            struct PartyPokemon *partyMon = BattleSystem_GetPartyMon(bsys, battlerId, slot);
            BOOL slotIsActive = FALSE;

            if (partyMon == NULL || !IsMonValidAndHealthy(partyMon)) {
                continue;
            }

            for (int activeBattlerId = 0; activeBattlerId < maxBattlers; activeBattlerId++) {
                if (activePartySlots[activeBattlerId] < 0) {
                    continue;
                }
                if (SanitizeClientForTeamAccess(bsys, activeBattlerId) == teamKey && activePartySlots[activeBattlerId] == slot) {
                    slotIsActive = TRUE;
                    break;
                }
            }

            if (slotIsActive) {
                continue;
            }

            entries[count].battlerId = battlerId;
            entries[count].partySlot = (u8)slot;
            count++;
        }
    }

    return count;
}

static int BattleInfo_FindFocusEntryIndex(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId, int partySlot)
{
    BattleInfoFocusEntry entries[16];
    int entryCount = BattleInfo_GetFocusEntries(bsys, ctx, entries, NELEMS(entries));

    for (int i = 0; i < entryCount; i++) {
        if (entries[i].battlerId == battlerId && entries[i].partySlot == partySlot) {
            return i;
        }
    }

    return -1;
}

static void BattleInfo_FreeLoadedGfx(void *charRaw, void *screenRaw, void *palRaw)
{
    if (charRaw != NULL) {
        sys_FreeMemoryEz(charRaw);
    }
    if (screenRaw != NULL) {
        sys_FreeMemoryEz(screenRaw);
    }
    if (palRaw != NULL) {
        sys_FreeMemoryEz(palRaw);
    }
}

static void BattleInfo_BackupReturnShellPalette(BattleInfoApp *app, BattleInput *battleInput)
{
    if (app == NULL || battleInput == NULL) {
        return;
    }

    if (battleInput->paletteBuffer != NULL) {
        memcpy(
            app->shellPaletteBackup,
            battleInput->paletteBuffer + (BATTLE_INFO_SHELL_PAL_BANK * 16),
            sizeof(app->shellPaletteBackup));
    } else {
        memset(app->shellPaletteBackup, 0, sizeof(app->shellPaletteBackup));
    }
}

static void BattleInfo_BackupReturnFooterPalette(BattleInfoApp *app, BattleInput *battleInput)
{
    if (app == NULL || battleInput == NULL) {
        return;
    }

    if (battleInput->paletteBuffer != NULL) {
        memcpy(
            app->footerPaletteBackup,
            battleInput->paletteBuffer + (BATTLE_INFO_FOOTER_BUTTON_PAL_BANK * 16),
            sizeof(app->footerPaletteBackup));
    } else {
        memset(app->footerPaletteBackup, 0, sizeof(app->footerPaletteBackup));
    }
}

static BOOL BattleInfo_LoadShellPanels(BattleInfoApp *app, BattleInput *battleInput)
{
    NNSG2dCharacterData *charData;
    NNSG2dScreenData *screenData;
    NNSG2dPaletteData *palData;
    u16 shellEntries[BATTLE_INFO_SHELL_TILEMAP_TILE_MAX];
    u8 usedTiles[BATTLE_INFO_SUB_BG_TILE_LIMIT];
    int usedCount = 0;
    int i;

    if (battleInput == NULL || app == NULL || app->shellReady) {
        return TRUE;
    }

    void *bgl = BattleWorkGF_BGL_INIGet(battleInput->battleSystem);
    if (bgl == NULL) {
        return FALSE;
    }

    charData = NULL;
    screenData = NULL;
    palData = NULL;
    void *charRaw = GfGfxLoader_GetCharData(ARC_BATTLE_GFX, BATTLE_INFO_SHELL_NCGR, FALSE, &charData, HEAPID_BATTLE_HEAP);
    void *screenRaw = GfGfxLoader_GetScrnData(ARC_BATTLE_GFX, BATTLE_INFO_SHELL_NSCR, FALSE, &screenData, HEAPID_BATTLE_HEAP);
    void *palRaw = GfGfxLoader_GetPlttData(ARC_BATTLE_GFX, BATTLE_INFO_SHELL_NCLR, &palData, HEAPID_BATTLE_HEAP);
    const u8 *charTiles = charData != NULL ? charData->pRawData : NULL;
    const u16 *screenTiles = screenData != NULL ? (const u16 *)screenData->rawData : NULL;
    const u16 *palette = palData != NULL ? palData->pRawData : NULL;

    if (charRaw == NULL || screenRaw == NULL || palRaw == NULL || charTiles == NULL || screenTiles == NULL || palette == NULL) {
        BattleInfo_FreeLoadedGfx(charRaw, screenRaw, palRaw);
        return FALSE;
    }

    u16 *tileMap = sys_AllocMemory(HEAPID_BATTLE_HEAP, 1024 * sizeof(u16));
    u8 *tileBuffer = sys_AllocMemory(HEAPID_BATTLE_HEAP, BATTLE_INFO_SHELL_TILE_BYTES);
    if (tileMap == NULL || tileBuffer == NULL) {
        if (tileMap != NULL) {
            sys_FreeMemoryEz(tileMap);
        }
        if (tileBuffer != NULL) {
            sys_FreeMemoryEz(tileBuffer);
        }
        BattleInfo_FreeLoadedGfx(charRaw, screenRaw, palRaw);
        return FALSE;
    }

    memset(usedTiles, 0, sizeof(usedTiles));
    memset(tileMap, 0xFF, 1024 * sizeof(u16));
    memset(shellEntries, 0, sizeof(shellEntries));
    {
        const u16 *screenBases[] = {
            BATTLE_INFO_SUB_BG_SCREEN_0_BASE,
            BATTLE_INFO_SUB_BG_SCREEN_1_BASE,
            BATTLE_INFO_SUB_BG_SCREEN_2_BASE,
            BATTLE_INFO_SUB_BG_SCREEN_3_BASE,
        };

        for (int screenId = 0; screenId < (int)NELEMS(screenBases); screenId++) {

            for (int tileIndex = 0; tileIndex < BATTLE_INFO_BG_TILEMAP_ENTRIES; tileIndex++) {
                u16 tile = screenBases[screenId][tileIndex] & 0x3FF;

                if (tile < BATTLE_INFO_SUB_BG_TILE_LIMIT) {
                    usedTiles[tile] = TRUE;
                }
            }
        }
    }

    memcpy(app->shellTilemapBackup, BATTLE_INFO_SUB_BG_SCR_BASE, sizeof(app->shellTilemapBackup));

    for (i = 0; i < (BATTLE_INFO_BG_W_TILES * BATTLE_INFO_BG_H_TILES); i++) {
        u16 entry = screenTiles[i];
        u16 tile = entry & 0x3FF;
        u16 attr = entry & 0x0C00;

        if (tileMap[tile] == 0xFFFF) {
            if (usedCount >= BATTLE_INFO_SHELL_TILE_MAX) {
                sys_FreeMemoryEz(tileMap);
                sys_FreeMemoryEz(tileBuffer);
                BattleInfo_FreeLoadedGfx(charRaw, screenRaw, palRaw);
                return FALSE;
            }

            tileMap[tile] = usedCount;
            memcpy(tileBuffer + (usedCount * 32), (void *)(charTiles + (tile * 32)), 32);
            usedCount++;
        }

        shellEntries[i] = (u16)(tileMap[tile] | attr | (BATTLE_INFO_SHELL_PAL_BANK << 12));
    }

    if (usedCount > 0) {
        int runStart = -1;
        int runLength = 0;

        for (u16 targetTile = 0; targetTile < BATTLE_INFO_SUB_BG_TILE_LIMIT; targetTile++) {
            if (!usedTiles[targetTile]) {
                if (runLength == 0) {
                    runStart = targetTile;
                }
                runLength++;
                if (runLength >= usedCount) {
                    break;
                }
            } else {
                runStart = -1;
                runLength = 0;
            }
        }

        if (runStart < 0 || runLength < usedCount) {
            sys_FreeMemoryEz(tileMap);
            sys_FreeMemoryEz(tileBuffer);
            BattleInfo_FreeLoadedGfx(charRaw, screenRaw, palRaw);
            return FALSE;
        }

        app->shellTileBase = (u16)runStart;
        app->shellTileCount = (u16)usedCount;

        for (i = 0; i < BATTLE_INFO_SHELL_TILEMAP_TILE_MAX; i++) {
            shellEntries[i] = (u16)((app->shellTileBase + (shellEntries[i] & 0x3FF)) | (shellEntries[i] & 0xFC00));
        }

        BG_LoadCharTilesData(
            bgl,
            BATTLE_INFO_PANEL_BG_LAYER,
            tileBuffer,
            app->shellTileCount * 32,
            app->shellTileBase);
    }

    u16 *subBgPalette = PaletteData_GetUnfadedBuf(BattleSystem_GetPaletteData(battleInput->battleSystem), BATTLE_INFO_SUB_BG_PLTTBUF);
    if (subBgPalette != NULL) {
        memcpy(
            subBgPalette + (BATTLE_INFO_SHELL_PAL_BANK * 16),
            (void *)palette,
            16 * sizeof(u16));
        PaletteData_LoadPalette(
            BattleSystem_GetPaletteData(battleInput->battleSystem),
            subBgPalette + (BATTLE_INFO_SHELL_PAL_BANK * 16),
            BATTLE_INFO_SUB_BG_PLTTBUF,
            BATTLE_INFO_SHELL_PAL_BANK * 16,
            0x20);
    }

    LoadRectToBgTilemapRect(
        bgl,
        GF_BGL_FRAME2_S,
        shellEntries,
        0,
        0,
        BATTLE_INFO_BG_W_TILES,
        BATTLE_INFO_BG_H_TILES);
    ScheduleBgTilemapBufferTransfer(bgl, GF_BGL_FRAME2_S);
    sys_FreeMemoryEz(tileMap);
    sys_FreeMemoryEz(tileBuffer);
    BattleInfo_FreeLoadedGfx(charRaw, screenRaw, palRaw);
    app->shellReady = TRUE;
    return TRUE;
}

static BOOL BattleInfo_LoadFooterButtonResources(BattleInfoApp *app, BattleInput *battleInput)
{
    NNSG2dCharacterData *charData;
    NNSG2dScreenData *screenData;
    NNSG2dPaletteData *palData;
    u8 usedTiles[BATTLE_INFO_SUB_BG_TILE_LIMIT];
    int usedCount = 0;
    int i;
    static const struct {
        u8 x;
        u8 y;
    } sStateCoords[BATTLE_INFO_TOUCH_TOTAL][2] = {
        [BATTLE_INFO_TOUCH_PREV] = { { 0, 49 }, { 5, 49 } },
        [BATTLE_INFO_TOUCH_NEXT] = { { 0, 54 }, { 5, 54 } },
        [BATTLE_INFO_TOUCH_BACK] = { { 26, 24 }, { 26, 29 } },
    };

    if (battleInput == NULL || app == NULL || app->footerReady) {
        return TRUE;
    }

    void *bgl = BattleWorkGF_BGL_INIGet(battleInput->battleSystem);
    if (bgl == NULL) {
        return FALSE;
    }

    charData = NULL;
    screenData = NULL;
    palData = NULL;
    void *charRaw = GfGfxLoader_GetCharData(BATTLE_INFO_FOOTER_BUTTON_GFX_NARC, BATTLE_INFO_FOOTER_BUTTON_NCGR, FALSE, &charData, HEAPID_BATTLE_HEAP);
    void *screenRaw = GfGfxLoader_GetScrnData(BATTLE_INFO_FOOTER_BUTTON_GFX_NARC, BATTLE_INFO_FOOTER_BUTTON_NSCR, FALSE, &screenData, HEAPID_BATTLE_HEAP);
    void *palRaw = GfGfxLoader_GetPlttData(BATTLE_INFO_FOOTER_BUTTON_GFX_NARC, BATTLE_INFO_FOOTER_BUTTON_NCLR, &palData, HEAPID_BATTLE_HEAP);
    const u8 *charTiles = charData != NULL ? charData->pRawData : NULL;
    const u16 *screenTiles = screenData != NULL ? (const u16 *)screenData->rawData : NULL;
    const u16 *palette = palData != NULL ? palData->pRawData : NULL;

    if (charRaw == NULL || screenRaw == NULL || palRaw == NULL || charTiles == NULL || screenTiles == NULL || palette == NULL) {
        BattleInfo_FreeLoadedGfx(charRaw, screenRaw, palRaw);
        return FALSE;
    }

    u16 *tileMap = sys_AllocMemory(HEAPID_BATTLE_HEAP, 1024 * sizeof(u16));
    u8 *tileBuffer = sys_AllocMemory(HEAPID_BATTLE_HEAP, BATTLE_INFO_FOOTER_TILE_BYTES);
    if (tileMap == NULL || tileBuffer == NULL) {
        if (tileMap != NULL) {
            sys_FreeMemoryEz(tileMap);
        }
        if (tileBuffer != NULL) {
            sys_FreeMemoryEz(tileBuffer);
        }
        BattleInfo_FreeLoadedGfx(charRaw, screenRaw, palRaw);
        return FALSE;
    }

    memset(usedTiles, 0, sizeof(usedTiles));
    memset(tileMap, 0xFF, 1024 * sizeof(u16));
    memset(tileBuffer, 0, BATTLE_INFO_FOOTER_TILE_BYTES);
    {
        const u16 *screenBases[] = {
            BATTLE_INFO_SUB_BG_SCREEN_0_BASE,
            BATTLE_INFO_SUB_BG_SCREEN_1_BASE,
            BATTLE_INFO_SUB_BG_SCREEN_2_BASE,
            BATTLE_INFO_SUB_BG_SCREEN_3_BASE,
        };

        for (int screenId = 0; screenId < (int)NELEMS(screenBases); screenId++) {
            for (int tileIndex = 0; tileIndex < BATTLE_INFO_BG_TILEMAP_ENTRIES; tileIndex++) {
                u16 tile = screenBases[screenId][tileIndex] & 0x3FF;

                if (tile < BATTLE_INFO_SUB_BG_TILE_LIMIT) {
                    usedTiles[tile] = TRUE;
                }
            }
        }
    }

    if (app->shellTileCount > 0) {
        u16 shellTile;

        for (shellTile = 0; shellTile < app->shellTileCount; shellTile++) {
            u16 tile = app->shellTileBase + shellTile;

            if (tile < BATTLE_INFO_SUB_BG_TILE_LIMIT) {
                usedTiles[tile] = TRUE;
            }
        }
    }

    for (i = 0; i < BATTLE_INFO_TOUCH_TOTAL; i++) {
        int state;

        for (state = 0; state < 2; state++) {
            int row;
            int col;

            for (row = 0; row < BATTLE_INFO_BUTTON_H_TILES; row++) {
                for (col = 0; col < BATTLE_INFO_BUTTON_W_TILES; col++) {
                    int srcIndex = ((sStateCoords[i][state].y + row) * (screenData->screenWidth / 8)) + sStateCoords[i][state].x + col;
                    u16 entry = screenTiles[srcIndex];
                    u16 tile = entry & 0x3FF;
                    u16 attr = entry & 0x0C00;

                    if (tileMap[tile] == 0xFFFF) {
                        if (usedCount >= BATTLE_INFO_FOOTER_BUTTON_TILE_MAX) {
                            sys_FreeMemoryEz(tileMap);
                            sys_FreeMemoryEz(tileBuffer);
                            BattleInfo_FreeLoadedGfx(charRaw, screenRaw, palRaw);
                            return FALSE;
                        }

                        tileMap[tile] = usedCount;
                        memcpy(tileBuffer + ((usedCount + 1) * 32), (void *)(charTiles + (tile * 32)), 32);
                        usedCount++;
                    }

                    app->footerStates[i][state][row * BATTLE_INFO_BUTTON_W_TILES + col] = (u16)(tileMap[tile] | attr | (BATTLE_INFO_FOOTER_BUTTON_PAL_BANK << 12));
                }
            }
        }
    }

    if (usedCount > 0) {
        int runStart = -1;
        int runLength = 0;

        for (u16 targetTile = 0; targetTile < BATTLE_INFO_SUB_BG_TILE_LIMIT; targetTile++) {
            if (!usedTiles[targetTile]) {
                if (runLength == 0) {
                    runStart = targetTile;
                }
                runLength++;
                if (runLength >= (usedCount + 1)) {
                    break;
                }
            } else {
                runStart = -1;
                runLength = 0;
            }
        }

        if (runStart < 0 || runLength < (usedCount + 1)) {
            sys_FreeMemoryEz(tileMap);
            sys_FreeMemoryEz(tileBuffer);
            BattleInfo_FreeLoadedGfx(charRaw, screenRaw, palRaw);
            return FALSE;
        }

        app->footerTileBase = (u16)runStart;
        app->footerTileCount = (u8)(usedCount + 1);

        for (i = 0; i < BATTLE_INFO_TOUCH_TOTAL; i++) {
            for (int state = 0; state < 2; state++) {
                for (int idx = 0; idx < (BATTLE_INFO_BUTTON_W_TILES * BATTLE_INFO_BUTTON_H_TILES); idx++) {
                    u16 entry = app->footerStates[i][state][idx];
                    u16 relTile = entry & 0x3FF;

                    app->footerStates[i][state][idx] = (u16)((app->footerTileBase + 1 + relTile) | (entry & 0xFC00));
                }
            }
        }

        BG_LoadCharTilesData(
            bgl,
            BATTLE_INFO_PANEL_BG_LAYER,
            tileBuffer,
            app->footerTileCount * 32,
            app->footerTileBase);
    }

    u16 *subBgPalette = PaletteData_GetUnfadedBuf(BattleSystem_GetPaletteData(battleInput->battleSystem), BATTLE_INFO_SUB_BG_PLTTBUF);
    if (subBgPalette != NULL) {
        memcpy(
            subBgPalette + (BATTLE_INFO_FOOTER_BUTTON_PAL_BANK * 16),
            (void *)(palette + (BATTLE_INFO_FOOTER_BUTTON_PAL_BANK * 16)),
            16 * sizeof(u16));
        PaletteData_LoadPalette(
            BattleSystem_GetPaletteData(battleInput->battleSystem),
            subBgPalette + (BATTLE_INFO_FOOTER_BUTTON_PAL_BANK * 16),
            BATTLE_INFO_SUB_BG_PLTTBUF,
            BATTLE_INFO_FOOTER_BUTTON_PAL_BANK * 16,
            0x20);
    }

    sys_FreeMemoryEz(tileMap);
    sys_FreeMemoryEz(tileBuffer);
    BattleInfo_FreeLoadedGfx(charRaw, screenRaw, palRaw);
    app->footerReady = TRUE;
    return TRUE;
}

static void BattleInfo_BackupFooterTilemap(BattleInfoApp *app)
{
    if (app == NULL) {
        return;
    }

    memcpy(app->footerTilemapBackup, BATTLE_INFO_FOOTER_BG_SCR_BASE, sizeof(app->footerTilemapBackup));
}

static void BattleInfo_WriteFooterButtonState(BattleInfoApp *app, BattleInput *battleInput, int buttonId, BOOL pressed)
{
    int tileX;

    if (battleInput == NULL || app == NULL || !app->footerReady) {
        return;
    }

    void *bgl = BattleWorkGF_BGL_INIGet(battleInput->battleSystem);
    if (bgl == NULL) {
        return;
    }

    switch (buttonId) {
    case BATTLE_INFO_TOUCH_PREV:
        tileX = 2;
        break;
    case BATTLE_INFO_TOUCH_NEXT:
        tileX = 8;
        break;
    default:
        tileX = 26;
        break;
    }

    LoadRectToBgTilemapRect(
        bgl,
        GF_BGL_FRAME3_S,
        app->footerStates[buttonId][pressed ? 1 : 0],
        tileX,
        19,
        BATTLE_INFO_BUTTON_W_TILES,
        BATTLE_INFO_BUTTON_H_TILES);
    ScheduleBgTilemapBufferTransfer(bgl, GF_BGL_FRAME3_S);
}

static void BattleInfo_CreateShellPanels(BattleInfoApp *app, BattleInput *battleInput)
{
    if (battleInput == NULL || app == NULL) {
        return;
    }

    (void)BattleInfo_LoadShellPanels(app, battleInput);
    ToggleBgLayer(BATTLE_INFO_PANEL_BG_LAYER, TRUE);
}

static void BattleInfo_CreateFooterButtons(BattleInfoApp *app, BattleInput *battleInput)
{
    void *bgl;
    u16 blankTilemap[BATTLE_INFO_BG_TILEMAP_ENTRIES];
    int i;

    if (battleInput == NULL || app == NULL) {
        return;
    }

    if (!BattleInfo_LoadFooterButtonResources(app, battleInput)) {
        return;
    }

    bgl = BattleWorkGF_BGL_INIGet(battleInput->battleSystem);
    if (bgl == NULL) {
        return;
    }

    BattleInfo_BackupFooterTilemap(app);
    for (i = 0; i < BATTLE_INFO_BG_TILEMAP_ENTRIES; i++) {
        blankTilemap[i] = (u16)(app->footerTileBase | (BATTLE_INFO_FOOTER_BUTTON_PAL_BANK << 12));
    }
    LoadRectToBgTilemapRect(
        bgl,
        GF_BGL_FRAME3_S,
        blankTilemap,
        0,
        0,
        BATTLE_INFO_BG_W_TILES,
        BATTLE_INFO_BG_H_TILES);
    ScheduleBgTilemapBufferTransfer(bgl, GF_BGL_FRAME3_S);
    ToggleBgLayer(BATTLE_INFO_FOOTER_BG_ID, TRUE);
    SetBgPriority(BATTLE_INFO_FOOTER_BG_ID, BATTLE_INFO_FOOTER_BG_PRIORITY);
    BattleInfo_WriteFooterButtonState(app, battleInput, BATTLE_INFO_TOUCH_PREV, FALSE);
    BattleInfo_WriteFooterButtonState(app, battleInput, BATTLE_INFO_TOUCH_NEXT, FALSE);
    BattleInfo_WriteFooterButtonState(app, battleInput, BATTLE_INFO_TOUCH_BACK, FALSE);
    app->pressedButton = -1;
}

static void BattleInfo_DestroyFooterButtons(BattleInfoApp *app, BattleInput *battleInput)
{
    if (battleInput == NULL || app == NULL || !app->footerReady) {
        return;
    }

    void *bgl = BattleWorkGF_BGL_INIGet(battleInput->battleSystem);

    PaletteData_LoadPalette(
        BattleSystem_GetPaletteData(battleInput->battleSystem),
        app->footerPaletteBackup,
        BATTLE_INFO_SUB_BG_PLTTBUF,
        BATTLE_INFO_FOOTER_BUTTON_PAL_BANK * 16,
        0x20);

    LoadRectToBgTilemapRect(
        bgl,
        GF_BGL_FRAME3_S,
        app->footerTilemapBackup,
        0,
        0,
        BATTLE_INFO_BG_W_TILES,
        BATTLE_INFO_BG_H_TILES);
    ScheduleBgTilemapBufferTransfer(bgl, GF_BGL_FRAME3_S);
    ToggleBgLayer(BATTLE_INFO_FOOTER_BG_ID, FALSE);
    app->pressedButton = -1;
    app->footerReady = FALSE;
    app->footerTileBase = 0;
    app->footerTileCount = 0;
}

static void BattleInfo_DestroyShellPanels(BattleInfoApp *app, BattleInput *battleInput)
{
    if (battleInput == NULL || app == NULL || !app->shellReady) {
        return;
    }

    void *bgl = BattleWorkGF_BGL_INIGet(battleInput->battleSystem);
    if (bgl == NULL) {
        return;
    }

    PaletteData_LoadPalette(
        BattleSystem_GetPaletteData(battleInput->battleSystem),
        app->shellPaletteBackup,
        BATTLE_INFO_SUB_BG_PLTTBUF,
        BATTLE_INFO_SHELL_PAL_BANK * 16,
        0x20);

    LoadRectToBgTilemapRect(
        bgl,
        GF_BGL_FRAME2_S,
        app->shellTilemapBackup,
        0,
        0,
        BATTLE_INFO_BG_W_TILES,
        BATTLE_INFO_BG_H_TILES);
    ScheduleBgTilemapBufferTransfer(bgl, GF_BGL_FRAME2_S);
    ToggleBgLayer(BATTLE_INFO_PANEL_BG_LAYER, FALSE);
    app->shellReady = FALSE;
    app->shellTileBase = 0;
    app->shellTileCount = 0;
}

static void BattleInfo_SetFooterButtonVisual(BattleInfoApp *app, BattleInput *battleInput, int buttonId, BOOL pressed)
{
    if (battleInput == NULL || app == NULL || buttonId < 0 || buttonId >= BATTLE_INFO_TOUCH_TOTAL) {
        return;
    }

    BattleInfo_WriteFooterButtonState(app, battleInput, buttonId, pressed);
    app->pressedButton = pressed ? buttonId : -1;
}

static void BattleInfo_DestroyTextRows(BattleInfoApp *app, BattleInput *battleInput)
{
    if (app == NULL) {
        return;
    }

    if (battleInput != NULL) {
        for (int slot = 0; slot < BATTLE_INFO_TEXT_SLOT_COUNT; slot++) {
            BattleInfoTextSlot *textSlot = BattleInfo_GetTextSlot(app, slot);

            if (textSlot == NULL) {
                continue;
            }

            if (textSlot->textObj != NULL) {
                sub_02013660(textSlot->textObj);
                sub_02021B5C(&textSlot->transfer);
                memset(&textSlot->transfer, 0, sizeof(textSlot->transfer));
                textSlot->textObj = NULL;
                textSlot->fontLength = 0;
            }
        }
    }
}

static BOOL BattleInfo_ResetFontSystem(BattleInfoApp *app, BattleInput *battleInput, int numTextObjs)
{
    if (app == NULL || battleInput == NULL) {
        return FALSE;
    }

    if (app->fontSystem == NULL) {
        app->fontSystem = sub_02013534(numTextObjs, HEAPID_BATTLE_HEAP);
        if (app->fontSystem == NULL) {
            return FALSE;
        }
    }

    return TRUE;
}

static void *BattleInfo_GetTextSlot(BattleInfoApp *app, int slot)
{
    if (app == NULL || slot < 0 || slot >= BATTLE_INFO_TEXT_SLOT_COUNT) {
        return NULL;
    }

    return &app->textSlots[slot];
}

static void BattleInfo_CopyU16Text(u16 *dst, int dstCount, const u16 *src)
{
    int i;

    if (dst == NULL || src == NULL || dstCount <= 0) {
        return;
    }

    for (i = 0; i < dstCount - 1 && src[i] != BATTLE_INFO_EOS; i++) {
        dst[i] = src[i];
    }

    dst[i] = BATTLE_INFO_EOS;
}

static void BattleInfo_AppendU16Text(u16 *dst, int dstCount, const u16 *src)
{
    int i;

    if (dst == NULL || src == NULL || dstCount <= 0) {
        return;
    }

    for (i = 0; i < dstCount - 1 && dst[i] != BATTLE_INFO_EOS; i++) {
    }

    for (int j = 0; i < dstCount - 1 && src[j] != BATTLE_INFO_EOS; i++, j++) {
        dst[i] = src[j];
    }

    dst[i] = BATTLE_INFO_EOS;
}

static void BattleInfo_AppendStageDeltaText(u16 *dst, int dstCount, int stageDelta)
{
    u16 valueText[4];

    valueText[0] = BATTLE_INFO_CHAR_SPACE;
    valueText[1] = (stageDelta < 0) ? BATTLE_INFO_CHAR_MINUS : BATTLE_INFO_CHAR_PLUS;
    int absStageDelta = (stageDelta < 0) ? -stageDelta : stageDelta;
    valueText[2] = BattleInfo_DigitChar((u32)absStageDelta);
    valueText[3] = BATTLE_INFO_EOS;
    BattleInfo_AppendU16Text(dst, dstCount, valueText);
}

static BOOL BattleInfo_CreateTextRowPx(BattleInfoApp *app, struct BattleSystem *bsys, BattleInput *battleInput, int slot, String *text, int x, int y)
{
    BattleInfoTextObjTemplate textObjTemplate;
    struct Window window;

    if (app == NULL || bsys == NULL || battleInput == NULL || text == NULL) {
        return FALSE;
    }

    if (app->fontSystem == NULL) {
        return FALSE;
    }

    BattleInfo_ResetTextSlot(app, battleInput, slot);
    BattleInfoTextSlot *textSlot = BattleInfo_GetTextSlot(app, slot);
    if (textSlot == NULL) {
        return FALSE;
    }

    void *spriteManager = BattleSystem_GetSpriteManager(bsys);
    void *bgConfig = BattleSystem_GetBgConfig(bsys);
    if (spriteManager == NULL || bgConfig == NULL) {
        return FALSE;
    }

    int fontLength = FontID_String_GetWidth(1, text, 0);
    int charLength = fontLength / 8;
    if ((fontLength % 8) != 0) {
        charLength++;
    }
    if (charLength <= 0) {
        charLength = 1;
    }

    InitWindow(&window);
    AddTextWindowTopLeftCorner(bgConfig, &window, charLength, 2, 0, 0);
    AddTextPrinterParameterizedWithColorAndSpacing(&window, 1, text, 0, 0, 0xFF, 0x00020F00, 0, 0, NULL);

    int size = sub_02013688(&window, NNS_G2D_VRAM_TYPE_2DSUB, 5);
    if (!sub_02021AC8(size, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, &textSlot->transfer)) {
        RemoveWindow(&window);
        return FALSE;
    }

    textObjTemplate.fontSystem = app->fontSystem;
    textObjTemplate.window = &window;
    textObjTemplate.spriteList = SpriteManager_GetSpriteList(spriteManager);
    textObjTemplate.plttResourceProxy = SpriteManager_FindPlttResourceProxy(spriteManager, 0x4E37);
    textObjTemplate.sprite = NULL;
    textObjTemplate.offset = textSlot->transfer.offset;
    textObjTemplate.x = x;
    textObjTemplate.y = y + 264;
    textObjTemplate.unk_20 = 0;
    textObjTemplate.unk_24 = 100;
    textObjTemplate.vram = NNS_G2D_VRAM_TYPE_2DSUB;
    textObjTemplate.heapID = HEAPID_BATTLE_HEAP;

    textSlot->textObj = sub_020135D8(&textObjTemplate);
    RemoveWindow(&window);

    if (textSlot->textObj == NULL) {
        sub_02021B5C(&textSlot->transfer);
        memset(&textSlot->transfer, 0, sizeof(textSlot->transfer));
        return FALSE;
    }

    sub_020138E0(textSlot->textObj, 1);
    textSlot->fontLength = (u16)fontLength;
    return TRUE;
}

static void BattleInfo_ResetTextSlot(BattleInfoApp *app, BattleInput *battleInput, int slot)
{
    if (battleInput == NULL || app == NULL || slot < 0 || slot >= BATTLE_INFO_TEXT_SLOT_COUNT) {
        return;
    }

    BattleInfoTextSlot *textSlot = BattleInfo_GetTextSlot(app, slot);
    if (textSlot == NULL) {
        return;
    }

    if (textSlot->textObj != NULL) {
        sub_02013660(textSlot->textObj);
        sub_02021B5C(&textSlot->transfer);
        memset(&textSlot->transfer, 0, sizeof(textSlot->transfer));
        textSlot->textObj = NULL;
        textSlot->fontLength = 0;
    }
}

static void BattleInfo_CreateStatRow(BattleInfoApp *app, struct BattleSystem *bsys, BattleInput *battleInput, int slot, int stat, int stageDelta, u8 left, int y)
{
    u16 rowText[48];

    if (app == NULL || bsys == NULL || battleInput == NULL) {
        return;
    }

    MessageFormat *msgFormat = app->msgFormat != NULL ? app->msgFormat : bsys->msgFormat;
    if (msgFormat == NULL) {
        return;
    }

    String *line = String_New(48, HEAPID_BATTLE_HEAP);
    if (line == NULL) {
        return;
    }

    BufferStatName(msgFormat, 0, stat);
    rowText[0] = BATTLE_INFO_EOS;
    BattleInfo_CopyU16Text(rowText, NELEMS(rowText), msgFormat->buffer->data);
    if (stat == STAT_ACCURACY) {
        rowText[0] = 0x012B;
    } else if (stat == STAT_EVASION) {
        rowText[0] = 0x012F;
    }
    BattleInfo_AppendStageDeltaText(rowText, NELEMS(rowText), stageDelta);
    CopyU16ArrayToString(line, rowText);
    BattleInfo_CreateTextRowPx(app, bsys, battleInput, slot, line, left * 8, y + BATTLE_INFO_STAT_WINDOW_Y_PX);
    String_Delete(line);
}

static u16 BattleInfo_DigitChar(u32 digit)
{
    return (u16)(BATTLE_INFO_CHAR_0 + digit);
}

static void BattleInfo_AppendCounterSuffix(u16 *rowText, int rowTextCount, u32 current, u32 max)
{
    u16 suffix[8];

    suffix[0] = BATTLE_INFO_CHAR_SPACE;
    suffix[1] = BattleInfo_DigitChar(current);
    suffix[2] = 0x00E7;
    suffix[3] = BattleInfo_DigitChar(max);
    suffix[4] = BATTLE_INFO_EOS;
    BattleInfo_AppendU16Text(rowText, rowTextCount, suffix);
}

static void BattleInfo_AppendLayerSuffix(u16 *rowText, int rowTextCount, u32 layers)
{
    u16 suffix[8];

    suffix[0] = BATTLE_INFO_CHAR_SPACE;
    suffix[1] = BATTLE_INFO_CHAR_x;
    suffix[2] = BattleInfo_DigitChar(layers);
    suffix[3] = BATTLE_INFO_EOS;
    BattleInfo_AppendU16Text(rowText, rowTextCount, suffix);
}

static BOOL BattleInfo_CreateConditionRowFromMove(BattleInfoApp *app, struct BattleSystem *bsys, BattleInput *battleInput, int slot, u32 moveId, u32 current, u32 max, BOOL showCounter)
{
    u16 rowText[64];

    if (bsys == NULL || battleInput == NULL) {
        return FALSE;
    }

    String *moveName = GetMoveName(moveId, HEAPID_BATTLE_HEAP);
    if (moveName == NULL) {
        return FALSE;
    }

    String *line = String_New(64, HEAPID_BATTLE_HEAP);
    if (line == NULL) {
        String_Delete(moveName);
        return FALSE;
    }

    rowText[0] = BATTLE_INFO_EOS;
    BattleInfo_CopyU16Text(rowText, NELEMS(rowText), moveName->data);
    if (showCounter) {
        BattleInfo_AppendCounterSuffix(rowText, NELEMS(rowText), current, max);
    }
    CopyU16ArrayToString(line, rowText);
    BattleInfo_CreateTextRowPx(
        app,
        bsys,
        battleInput,
        slot,
        line,
        BATTLE_INFO_STATUS_WINDOW_X * 8,
        (BATTLE_INFO_STATUS_WINDOW_Y * 8) + BATTLE_INFO_STATUS_WINDOW_Y_PX + ((slot - BATTLE_INFO_TEXT_SLOT_STATUS_BASE) * BATTLE_INFO_STATUS_ROW_GAP_PX));
    String_Delete(line);
    String_Delete(moveName);
    return TRUE;
}

static String *BattleInfo_ReadArchiveString(u32 fileId, u32 msgId)
{
    MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, ARC_MSG_DATA, fileId, HEAPID_BATTLE_HEAP);
    if (msgData == NULL) {
        return NULL;
    }

    String *string = NewString_ReadMsgData(msgData, msgId);
    DestroyMsgData(msgData);
    return string;
}

static void BattleInfo_CreateMoveRows(BattleInfoApp *app, struct BattleSystem *bsys, BattleInput *battleInput, struct PartyPokemon *partyMon)
{
    const int baseY = (BATTLE_INFO_MOVES_WINDOW_Y * 8) + BATTLE_INFO_MOVES_WINDOW_Y_PX;

    if (bsys == NULL || battleInput == NULL || partyMon == NULL) {
        return;
    }

    for (int i = 0; i < 4; i++) {
        int slot = BATTLE_INFO_TEXT_SLOT_MOVE_BASE + i;

        BattleInfo_ResetTextSlot(app, battleInput, slot);

        u32 moveId = GetMonData(partyMon, MON_DATA_MOVE1 + i, NULL);

        if (moveId == MOVE_NONE) {
            continue;
        }

        String *moveName = GetMoveName(moveId, HEAPID_BATTLE_HEAP);
        if (moveName == NULL) {
            continue;
        }

        BattleInfo_CreateTextRowPx(
            app,
            bsys,
            battleInput,
            slot,
            moveName,
            BATTLE_INFO_MOVES_WINDOW_X * 8,
            baseY + (i * BATTLE_INFO_TOP_ROW_GAP_PX));
        String_Delete(moveName);
    }
}

static BOOL BattleInfo_CreateConditionRowFromString(BattleInfoApp *app, struct BattleSystem *bsys, BattleInput *battleInput, int slot, String *label, u32 current, u32 max, BOOL showCounter)
{
    u16 rowText[64];

    if (bsys == NULL || battleInput == NULL || label == NULL) {
        return FALSE;
    }

    String *line = String_New(64, HEAPID_BATTLE_HEAP);
    if (line == NULL) {
        return FALSE;
    }

    rowText[0] = BATTLE_INFO_EOS;
    BattleInfo_CopyU16Text(rowText, NELEMS(rowText), label->data);
    if (showCounter) {
        BattleInfo_AppendCounterSuffix(rowText, NELEMS(rowText), current, max);
    }

    CopyU16ArrayToString(line, rowText);
    BattleInfo_CreateTextRowPx(
        app,
        bsys,
        battleInput,
        slot,
        line,
        BATTLE_INFO_STATUS_WINDOW_X * 8,
        (BATTLE_INFO_STATUS_WINDOW_Y * 8) + BATTLE_INFO_STATUS_WINDOW_Y_PX + ((slot - BATTLE_INFO_TEXT_SLOT_STATUS_BASE) * BATTLE_INFO_STATUS_ROW_GAP_PX));
    String_Delete(line);
    return TRUE;
}

static BOOL BattleInfo_CreateConditionRowRaw(BattleInfoApp *app, struct BattleSystem *bsys, BattleInput *battleInput, int slot, const u16 *rowText)
{
    if (bsys == NULL || battleInput == NULL || rowText == NULL) {
        return FALSE;
    }

    String *line = String_New(64, HEAPID_BATTLE_HEAP);
    if (line == NULL) {
        return FALSE;
    }

    CopyU16ArrayToString(line, rowText);
    BattleInfo_CreateTextRowPx(
        app,
        bsys,
        battleInput,
        slot,
        line,
        BATTLE_INFO_STATUS_WINDOW_X * 8,
        (BATTLE_INFO_STATUS_WINDOW_Y * 8) + BATTLE_INFO_STATUS_WINDOW_Y_PX + ((slot - BATTLE_INFO_TEXT_SLOT_STATUS_BASE) * BATTLE_INFO_STATUS_ROW_GAP * 8));
    String_Delete(line);
    return TRUE;
}

static BOOL BattleInfo_TryAppendConditionMoveRow(BattleInfoApp *app, struct BattleSystem *bsys, BattleInput *battleInput, int *rowCount, u32 moveId, u32 current, u32 max, BOOL showCounter)
{
    if (*rowCount >= BATTLE_INFO_STATUS_ROW_MAX) {
        return FALSE;
    }

    int slot = BATTLE_INFO_TEXT_SLOT_STATUS_BASE + *rowCount;
    if (!BattleInfo_CreateConditionRowFromMove(app, bsys, battleInput, slot, moveId, current, max, showCounter)) {
        return FALSE;
    }

    (*rowCount)++;
    return TRUE;
}

static BOOL BattleInfo_TryAppendConditionRawRow(BattleInfoApp *app, struct BattleSystem *bsys, BattleInput *battleInput, int *rowCount, const u16 *rowText)
{
    if (*rowCount >= BATTLE_INFO_STATUS_ROW_MAX) {
        return FALSE;
    }

    int slot = BATTLE_INFO_TEXT_SLOT_STATUS_BASE + *rowCount;
    if (!BattleInfo_CreateConditionRowRaw(app, bsys, battleInput, slot, rowText)) {
        return FALSE;
    }

    (*rowCount)++;
    return TRUE;
}

static BOOL BattleInfo_TryAppendConditionArchiveRow(BattleInfoApp *app, struct BattleSystem *bsys, BattleInput *battleInput, int *rowCount, String *label, u32 current, u32 max, BOOL showCounter)
{
    if (*rowCount >= BATTLE_INFO_STATUS_ROW_MAX) {
        String_Delete(label);
        return FALSE;
    }

    int slot = BATTLE_INFO_TEXT_SLOT_STATUS_BASE + *rowCount;
    BOOL ok = BattleInfo_CreateConditionRowFromString(app, bsys, battleInput, slot, label, current, max, showCounter);
    String_Delete(label);
    if (!ok) {
        return FALSE;
    }

    (*rowCount)++;
    return TRUE;
}

static void BattleInfo_CreateConditionRows(BattleInfoApp *app, struct BattleSystem *bsys, struct BattleStruct *ctx, BattleInput *battleInput)
{
    int rowCount = 0;

    if (bsys == NULL || ctx == NULL || battleInput == NULL || app == NULL) {
        return;
    }

    for (rowCount = 0; rowCount < BATTLE_INFO_STATUS_ROW_MAX; rowCount++) {
        BattleInfo_ResetTextSlot(app, battleInput, BATTLE_INFO_TEXT_SLOT_STATUS_BASE + rowCount);
    }

    rowCount = 0;

    int side = IsClientEnemy(bsys, app->battlerId);
    u32 sideCondition = ctx->side_condition[side];
    const struct side_condition_work *scw = &ctx->scw[side];

    if (sideCondition & SIDE_STATUS_REFLECT) {
        BattleInfo_TryAppendConditionMoveRow(app, bsys, battleInput, &rowCount, MOVE_REFLECT, scw->reflectCount, 5, TRUE);
    }
    if (sideCondition & SIDE_STATUS_LIGHT_SCREEN) {
        BattleInfo_TryAppendConditionMoveRow(app, bsys, battleInput, &rowCount, MOVE_LIGHT_SCREEN, scw->lightScreenCount, 5, TRUE);
    }
    if (sideCondition & SIDE_STATUS_SAFEGUARD) {
        BattleInfo_TryAppendConditionMoveRow(app, bsys, battleInput, &rowCount, MOVE_SAFEGUARD, scw->safeguardCount, 5, TRUE);
    }
    if (sideCondition & SIDE_STATUS_MIST) {
        BattleInfo_TryAppendConditionMoveRow(app, bsys, battleInput, &rowCount, MOVE_MIST, scw->mistCount, 5, TRUE);
    }
    if (ctx->tailwindCount[side] != 0) {
        BattleInfo_TryAppendConditionMoveRow(app, bsys, battleInput, &rowCount, MOVE_TAILWIND, ctx->tailwindCount[side], 4, TRUE);
    }
    if (sideCondition & SIDE_STATUS_AURORA_VEIL) {
        BattleInfo_TryAppendConditionMoveRow(app, bsys, battleInput, &rowCount, MOVE_AURORA_VEIL, scw->auroraVeilCount, 5, TRUE);
    }
    if (scw->spikesLayers != 0) {
        u16 rowText[64];
        String *moveName = GetMoveName(MOVE_SPIKES, HEAPID_BATTLE_HEAP);

        if (moveName != NULL && rowCount < BATTLE_INFO_STATUS_ROW_MAX) {
            rowText[0] = BATTLE_INFO_EOS;
            BattleInfo_CopyU16Text(rowText, NELEMS(rowText), moveName->data);
            BattleInfo_AppendLayerSuffix(rowText, NELEMS(rowText), scw->spikesLayers);
            BattleInfo_TryAppendConditionRawRow(app, bsys, battleInput, &rowCount, rowText);
            String_Delete(moveName);
        }
    }
    if (scw->toxicSpikesLayers != 0) {
        u16 rowText[64];
        String *moveName = GetMoveName(MOVE_TOXIC_SPIKES, HEAPID_BATTLE_HEAP);

        if (moveName != NULL && rowCount < BATTLE_INFO_STATUS_ROW_MAX) {
            rowText[0] = BATTLE_INFO_EOS;
            BattleInfo_CopyU16Text(rowText, NELEMS(rowText), moveName->data);
            BattleInfo_AppendLayerSuffix(rowText, NELEMS(rowText), scw->toxicSpikesLayers);
            BattleInfo_TryAppendConditionRawRow(app, bsys, battleInput, &rowCount, rowText);
            String_Delete(moveName);
        }
    }
    if (sideCondition & SIDE_STATUS_STEALTH_ROCK) {
        BattleInfo_TryAppendConditionMoveRow(app, bsys, battleInput, &rowCount, MOVE_STEALTH_ROCK, 0, 0, FALSE);
    }
    if (sideCondition & SIDE_STATUS_STICKY_WEB) {
        BattleInfo_TryAppendConditionMoveRow(app, bsys, battleInput, &rowCount, MOVE_STICKY_WEB, 0, 0, FALSE);
    }
    if (sideCondition & SIDE_STATUS_LUCKY_CHANT) {
        BattleInfo_TryAppendConditionMoveRow(app, bsys, battleInput, &rowCount, MOVE_LUCKY_CHANT, (sideCondition >> 12) & 0x7, 5, TRUE);
    }

    if ((ctx->field_condition & WEATHER_RAIN_ANY) && rowCount < BATTLE_INFO_STATUS_ROW_MAX) {
        BattleInfo_TryAppendConditionArchiveRow(
            app,
            bsys,
            battleInput,
            &rowCount,
            BattleInfo_ReadArchiveString(175, 56),
            ctx->fcc.weather_count,
            5,
            ctx->fcc.weather_count != 0 && ctx->fcc.weather_count <= 8);
    } else if ((ctx->field_condition & WEATHER_SUNNY_ANY) && rowCount < BATTLE_INFO_STATUS_ROW_MAX) {
        BattleInfo_TryAppendConditionArchiveRow(
            app,
            bsys,
            battleInput,
            &rowCount,
            BattleInfo_ReadArchiveString(175, 54),
            ctx->fcc.weather_count,
            5,
            ctx->fcc.weather_count != 0 && ctx->fcc.weather_count <= 8);
    } else if ((ctx->field_condition & WEATHER_SANDSTORM_ANY) && rowCount < BATTLE_INFO_STATUS_ROW_MAX) {
        BattleInfo_TryAppendConditionArchiveRow(
            app,
            bsys,
            battleInput,
            &rowCount,
            BattleInfo_ReadArchiveString(154, 181),
            ctx->fcc.weather_count,
            5,
            ctx->fcc.weather_count != 0 && ctx->fcc.weather_count <= 8);
    } else if ((ctx->field_condition & WEATHER_HAIL_ANY) && rowCount < BATTLE_INFO_STATUS_ROW_MAX) {
        BattleInfo_TryAppendConditionMoveRow(app, bsys, battleInput, &rowCount, MOVE_HAIL, ctx->fcc.weather_count, 5, ctx->fcc.weather_count != 0 && ctx->fcc.weather_count <= 8);
    } else if ((ctx->field_condition & WEATHER_SNOW_ANY) && rowCount < BATTLE_INFO_STATUS_ROW_MAX) {
        BattleInfo_TryAppendConditionArchiveRow(
            app,
            bsys,
            battleInput,
            &rowCount,
            BattleInfo_ReadArchiveString(154, 178),
            ctx->fcc.weather_count,
            5,
            ctx->fcc.weather_count != 0 && ctx->fcc.weather_count <= 8);
    }

    if (ctx->field_condition & FIELD_STATUS_TRICK_ROOM) {
        BattleInfo_TryAppendConditionMoveRow(app, bsys, battleInput, &rowCount, MOVE_TRICK_ROOM, (ctx->field_condition >> FIELD_CONDITION_TRICK_ROOM_SHIFT) & 0x7, 5, TRUE);
    }
    if (ctx->field_condition & FIELD_STATUS_GRAVITY) {
        BattleInfo_TryAppendConditionMoveRow(app, bsys, battleInput, &rowCount, MOVE_GRAVITY, (ctx->field_condition >> FIELD_CONDITION_GRAVITY_SHIFT) & 0x7, 5, TRUE);
    }
    if (ctx->field_condition & FIELD_STATUS_FOG) {
        BattleInfo_TryAppendConditionArchiveRow(
            app,
            bsys,
            battleInput,
            &rowCount,
            BattleInfo_ReadArchiveString(175, 62),
            0,
            0,
            FALSE);
    }

    if (rowCount == 0) {
        static const u16 sNoneText[] = { 0x0138, 0x0153, 0x0152, 0x0149, BATTLE_INFO_EOS };
        String *noneText = String_New(8, HEAPID_BATTLE_HEAP);

        if (noneText != NULL) {
            CopyU16ArrayToString(noneText, sNoneText);
            BattleInfo_TryAppendConditionArchiveRow(app, bsys, battleInput, &rowCount, noneText, 0, 0, FALSE);
        }
    }
}

static void BattleInfo_DrawFocusedName(BattleInfoApp *app, struct BattleSystem *bsys, struct BattleStruct *ctx, BattleInput *battleInput)
{
    u16 nickname[16];
    u32 nicknameLen;
    const int topBaseY = 10;

    if (battleInput == NULL || app == NULL) {
        return;
    }

    MessageFormat *msgFormat = app->msgFormat != NULL ? app->msgFormat : bsys->msgFormat;
    if (msgFormat == NULL) {
        return;
    }

    int partySlot = app->partySlot;
    struct PartyPokemon *partyMon = BattleSystem_GetPartyMon(bsys, app->battlerId, partySlot);
    if (partyMon == NULL) {
        return;
    }

    u32 ability = GetMonData(partyMon, MON_DATA_ABILITY, NULL);
    u32 gender = GetMonData(partyMon, MON_DATA_GENDER, NULL);
    u32 type1 = GetMonData(partyMon, MON_DATA_TYPE_1, NULL);
    u32 type2 = GetMonData(partyMon, MON_DATA_TYPE_2, NULL);
    u32 heldItem = GetMonData(partyMon, MON_DATA_HELD_ITEM, NULL);
    int activePartySlot = BattleInfo_GetActivePartySlot(bsys, app->battlerId);
    BOOL isActiveFocus = (partySlot == activePartySlot && ctx->battlemon[app->battlerId].hp != 0);
    BattleInfo_CreateBattlerIcon(app, battleInput);
    GetMonData(partyMon, MON_DATA_NICKNAME, nickname);
    for (nicknameLen = 0; nicknameLen < NELEMS(nickname); nicknameLen++) {
        if (nickname[nicknameLen] == 0xFFFF) {
            break;
        }
    }
    if (nicknameLen < NELEMS(nickname) - 2) {
        if (gender == POKEMON_GENDER_MALE) {
            nickname[nicknameLen++] = BATTLE_INFO_CHAR_SPACE;
            nickname[nicknameLen++] = 0x01BB;
        } else if (gender == POKEMON_GENDER_FEMALE) {
            nickname[nicknameLen++] = BATTLE_INFO_CHAR_SPACE;
            nickname[nicknameLen++] = 0x01BC;
        }
        nickname[nicknameLen] = 0xFFFF;
    }
    String *line = String_New(32, HEAPID_BATTLE_HEAP);
    if (line == NULL) {
        return;
    }

    String *abilityLine = String_New(48, HEAPID_BATTLE_HEAP);
    if (abilityLine == NULL) {
        String_Delete(line);
        return;
    }

    String *itemLine = String_New(48, HEAPID_BATTLE_HEAP);
    if (itemLine == NULL) {
        String_Delete(abilityLine);
        String_Delete(line);
        return;
    }

    CopyU16ArrayToString(line, nickname);

    BufferAbilityName(msgFormat, 0, ability);
    CopyU16ArrayToString(abilityLine, msgFormat->buffer->data);

    if (heldItem != ITEM_NONE) {
        BufferItemName(msgFormat, 0, heldItem);
        CopyU16ArrayToString(itemLine, msgFormat->buffer->data);
    } else {
        MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, ARC_MSG_DATA, 6, HEAPID_BATTLE_HEAP);
        if (msgData != NULL) {
            String *noItem = NewString_ReadMsgData(msgData, 20);
            if (noItem != NULL) {
                CopyU16ArrayToString(itemLine, noItem->data);
                String_Delete(noItem);
            }
            DestroyMsgData(msgData);
        }
    }

    int atkStage = ctx->battlemon[app->battlerId].states[STAT_ATTACK] - 6;
    int defStage = ctx->battlemon[app->battlerId].states[STAT_DEFENSE] - 6;
    int spatkStage = ctx->battlemon[app->battlerId].states[STAT_SPATK] - 6;
    int spdefStage = ctx->battlemon[app->battlerId].states[STAT_SPDEF] - 6;
    int speedStage = ctx->battlemon[app->battlerId].states[STAT_SPEED] - 6;
    int accStage = ctx->battlemon[app->battlerId].states[STAT_ACCURACY] - 6;
    int evaStage = ctx->battlemon[app->battlerId].states[STAT_EVASION] - 6;

    BattleInfo_CreateTextRowPx(app, bsys, battleInput, 0, line, 48, topBaseY);
    BattleInfo_CreateTypeIcons(app, battleInput, type1, type2);
    BattleInfo_CreateTextRowPx(app, bsys, battleInput, 1, abilityLine, 48, topBaseY + (BATTLE_INFO_TOP_ROW_GAP_PX * 2));
    BattleInfo_CreateTextRowPx(app, bsys, battleInput, 2, itemLine, 48, topBaseY + (BATTLE_INFO_TOP_ROW_GAP_PX * 3));
    BattleInfo_CreateMoveRows(app, bsys, battleInput, partyMon);

    if (isActiveFocus) {
        BattleInfo_CreateStatRow(app, bsys, battleInput, BATTLE_INFO_TEXT_SLOT_STAT_BASE + 1, STAT_ATTACK, atkStage, 2, 72 + (BATTLE_INFO_STAT_ROW_GAP_PX * 0));
        BattleInfo_CreateStatRow(app, bsys, battleInput, BATTLE_INFO_TEXT_SLOT_STAT_BASE + 2, STAT_DEFENSE, defStage, 2, 72 + (BATTLE_INFO_STAT_ROW_GAP_PX * 1));
        BattleInfo_CreateStatRow(app, bsys, battleInput, BATTLE_INFO_TEXT_SLOT_STAT_BASE + 3, STAT_SPATK, spatkStage, 2, 72 + (BATTLE_INFO_STAT_ROW_GAP_PX * 2));
        BattleInfo_CreateStatRow(app, bsys, battleInput, BATTLE_INFO_TEXT_SLOT_STAT_BASE + 4, STAT_SPDEF, spdefStage, 2, 72 + (BATTLE_INFO_STAT_ROW_GAP_PX * 3));
        BattleInfo_CreateStatRow(app, bsys, battleInput, BATTLE_INFO_TEXT_SLOT_STAT_BASE + 5, STAT_SPEED, speedStage, 2, 72 + (BATTLE_INFO_STAT_ROW_GAP_PX * 4));
        BattleInfo_CreateStatRow(app, bsys, battleInput, BATTLE_INFO_TEXT_SLOT_STAT_BASE + 0, STAT_ACCURACY, accStage, 2, 72 + (BATTLE_INFO_STAT_ROW_GAP_PX * 5));
        BattleInfo_CreateStatRow(app, bsys, battleInput, BATTLE_INFO_TEXT_SLOT_STAT_BASE + 6, STAT_EVASION, evaStage, 2, 72 + (BATTLE_INFO_STAT_ROW_GAP_PX * 6));
        BattleInfo_CreateConditionRows(app, bsys, ctx, battleInput);
    } else {
        int slot;
        for (slot = 0; slot < 7; slot++) {
            BattleInfo_ResetTextSlot(app, battleInput, BATTLE_INFO_TEXT_SLOT_STAT_BASE + slot);
        }
        for (slot = 0; slot < BATTLE_INFO_STATUS_ROW_MAX; slot++) {
            BattleInfo_ResetTextSlot(app, battleInput, BATTLE_INFO_TEXT_SLOT_STATUS_BASE + slot);
        }
    }

    String_Delete(abilityLine);
    String_Delete(itemLine);
    String_Delete(line);
}

static void BattleInfo_TickCycleCooldown(BattleInfoApp *app)
{
    if (app != NULL && app->cycleCooldown != 0) {
        app->cycleCooldown--;
    }
}

static BOOL BattleInfo_GetInitialFocus(struct BattleSystem *bsys, struct BattleStruct *ctx, BattleInput *battleInput, BattleInfoFocusEntry *entry)
{
    BattleInfoFocusEntry entries[16];
    int entryCount = BattleInfo_GetFocusEntries(bsys, ctx, entries, NELEMS(entries));

    if (entry == NULL || entryCount == 0) {
        return FALSE;
    }

    if (battleInput != NULL) {
        u8 commandBattlerId = battleInput->menu.main.battlerId;

        for (int i = 0; i < entryCount; i++) {
            if (entries[i].battlerId == commandBattlerId) {
                *entry = entries[i];
                return TRUE;
            }
        }
    }

    *entry = entries[0];
    return TRUE;
}

static BOOL BattleInfo_IsSelectionOwnerStateValid(BattleInfoApp *app)
{
    if (app == NULL || app->ctx == NULL || app->returnMenu.battlerId >= CLIENT_MAX) {
        return FALSE;
    }

    if (app->ctx->server_seq_no != CONTROLLER_COMMAND_SELECTION_SCREEN_INPUT) {
        return FALSE;
    }

    BattleSelectState state = app->ctx->com_seq_no[app->returnMenu.battlerId];
    if (app->ctx->battleInfoActive && state == SSI_STATE_1) {
        return TRUE;
    }

    return FALSE;
}

static void BattleInfo_ConsumeKeys()
{
    gSystem.newKeysRaw &= ~PAD_BUTTON_X;
    gSystem.newAndRepeatedKeysRaw &= ~PAD_BUTTON_X;
    gSystem.heldKeysRaw &= ~PAD_BUTTON_X;
    gSystem.newKeys &= ~PAD_BUTTON_X;
    gSystem.newAndRepeatedKeys &= ~PAD_BUTTON_X;
    gSystem.heldKeys &= ~PAD_BUTTON_X;
}

static int BattleInfo_CheckTouchAction()
{
    int rectHit = TouchscreenHitbox_FindRectAtTouchNew(sBattleInfoFooterTouchscreenRects);

    if (rectHit < 0 || rectHit >= BATTLE_INFO_TOUCH_TOTAL) {
        return -1;
    }

    return rectHit;
}

static void BattleInfo_SuppressInput()
{
    int blocked = PAD_BUTTON_A | PAD_BUTTON_B | PAD_BUTTON_X | PAD_BUTTON_Y | PAD_BUTTON_L | PAD_BUTTON_R
        | PAD_KEY_UP | PAD_KEY_DOWN | PAD_KEY_LEFT | PAD_KEY_RIGHT;

    gSystem.newKeysRaw &= ~blocked;
    gSystem.newAndRepeatedKeysRaw &= ~blocked;
    gSystem.heldKeysRaw &= ~blocked;
    gSystem.newKeys &= ~blocked;
    gSystem.newAndRepeatedKeys &= ~blocked;
    gSystem.heldKeys &= ~blocked;
}

static void BattleInfo_CycleFocus(BattleInfoApp *app, struct BattleSystem *bsys, struct BattleStruct *ctx, BattleInput *battleInput, int direction)
{
    BattleInfoFocusEntry entries[16];

    if (direction == 0 || battleInput == NULL || ctx == NULL || app == NULL) {
        return;
    }

    int entryCount = BattleInfo_GetFocusEntries(bsys, ctx, entries, NELEMS(entries));
    if (entryCount < 2) {
        return;
    }

    int currentIndex = BattleInfo_FindFocusEntryIndex(bsys, ctx, app->battlerId, app->partySlot);
    if (currentIndex < 0) {
        currentIndex = 0;
    }

    currentIndex = (currentIndex + direction + entryCount) % entryCount;
    app->battlerId = entries[currentIndex].battlerId;
    app->partySlot = entries[currentIndex].partySlot;
    BattleInfo_DrawFocusedName(app, bsys, ctx, battleInput);
    app->pressedButton = -1;
    app->cycleCooldown = 2;
}

static void BattleInfo_BeginSubscreenFade(BattleInfoApp *app, u8 cur, u8 end)
{
    if (app == NULL || app->taskData.bsys == NULL) {
        return;
    }

    void *paletteData = BattleSystem_GetPaletteData(app->taskData.bsys);
    if (paletteData == NULL) {
        return;
    }

    PaletteData_BeginPaletteFade(
        paletteData,
        BATTLE_INFO_FADE_BUFFERS,
        BATTLE_INFO_FADE_PALETTES,
        BATTLE_INFO_FADE_WAIT,
        cur,
        end,
        RGB(0, 0, 0));
}

static BOOL BattleInfo_IsSubscreenFadeActive(BattleInfoApp *app)
{
    if (app == NULL || app->taskData.bsys == NULL) {
        return FALSE;
    }

    void *paletteData = BattleSystem_GetPaletteData(app->taskData.bsys);
    if (paletteData == NULL) {
        return FALSE;
    }

    return PaletteData_GetSelectedBuffersBitmask(paletteData) != 0;
}

static void BattleInfo_StopTask(SysTask *task, BattleInfoApp *app, BattleInput *battleInput)
{
    if (app != NULL && battleInput != NULL) {
        BattleInfo_ClosePageContents(app, battleInput);
    }

    BattleInfo_AppDelete(app);
    DestroySysTask(task);
}

static void BattleInfo_ClosePageContents(BattleInfoApp *app, BattleInput *battleInput)
{
    if (battleInput == NULL || app == NULL) {
        return;
    }
    BattleInfo_DestroyBattlerIcon(app, battleInput);
    BattleInfo_DestroyTypeIcons(app);
    BattleInfo_FreeBattlerIconResources(battleInput);
    BattleInfo_DestroyFooterButtons(app, battleInput);
    BattleInfo_DestroyShellPanels(app, battleInput);
    BattleInfo_DestroyTextRows(app, battleInput);
    if (app->fontSystem != NULL) {
        sub_020135AC(app->fontSystem);
        app->fontSystem = NULL;
    }
    app->pressedButton = -1;
}

static void BattleInfo_CreatePageObjects(BattleInfoApp *app, BattleInput *battleInput)
{
    if (app == NULL || battleInput == NULL) {
        return;
    }
    BattleInfo_LoadBattlerIconResources(battleInput);
    if (!BattleInfo_ResetFontSystem(app, battleInput, BATTLE_INFO_TEXT_SLOT_COUNT)) {
        return;
    }
    BattleInfo_DrawFocusedName(app, app->taskData.bsys, app->ctx, battleInput);
    BattleInfo_CreateShellPanels(app, battleInput);
    BattleInfo_CreateFooterButtons(app, battleInput);
    app->pressedButton = -1;
}

static BOOL BattleInfo_ChangeToClientPage(BattleInput *battleInput, int menuId, const BattleInputMenu *menuState)
{
    BattleInputMenu menu;

    if (battleInput == NULL) {
        return FALSE;
    }

    if (menuState != NULL) {
        menu = *menuState;
    } else {
        menu = battleInput->menu;
    }

    NARC *objNarc = NARC_ctor(8, HEAPID_BATTLE_HEAP);
    if (objNarc == NULL) {
        return FALSE;
    }

    BattleInput_ChangeMenu(NULL, objNarc, battleInput, menuId, FALSE, &menu);
    NARC_Delete(objNarc);
    return TRUE;
}

static void BattleInfo_ClearNativeMenuCursor(BattleInput *battleInput)
{
    if (battleInput == NULL) {
        return;
    }

    memset(&battleInput->menuCursor, 0, sizeof(battleInput->menuCursor));
    BattleCursor_Disable(battleInput->cursor);
    battleInput->keyPressed = FALSE;
}

void BattleInfo_Task(SysTask *task, void *data)
{
    BattleInfoApp *app = data;

    if (app == NULL) {
        DestroySysTask(task);
        return;
    }

    BattleInfoTaskData *taskData = &app->taskData;
    struct BattleSystem *bsys = taskData->bsys;
    BattleInput *battleInput = app->bip;
    BattleInput *pageOwner = battleInput;

    if (bsys == NULL || app->ctx == NULL) {
        BattleInfo_StopTask(task, app, battleInput);
        return;
    }

    if (((taskData->state <= 1) || (taskData->state == 5)) && !BattleInfo_IsSelectionOwnerStateValid(app)) {
        BattleInfo_StopTask(task, app, battleInput);
        return;
    }

    if ((taskData->state >= 2 && taskData->state <= 4) || (taskData->state >= 7 && taskData->state <= 9)) {
        if (!BattleInfo_IsSelectionOwnerStateValid(app)) {
            BattleInfo_StopTask(task, app, battleInput);
            return;
        }
    }

    switch (taskData->state) {
    case 0:
        if (pageOwner == NULL) {
            BattleInfo_StopTask(task, app, battleInput);
            return;
        }
        pageOwner->isTouchDisabled = TRUE;
        BattleInput_DisableBallGauge(pageOwner);
        BattleInfo_BeginSubscreenFade(app, 0, 16);
        taskData->state = 1;
        return;
    case 1:
        if (!BattleInfo_IsSubscreenFadeActive(app)) {
            app->cycleCooldown = 0;
            BattleInfo_ClearNativeMenuCursor(pageOwner);
            if (!BattleInfo_ChangeToClientPage(pageOwner, BATTLE_INFO_PAGE_ID, NULL)) {
                BattleInfo_StopTask(task, app, battleInput);
                return;
            }
            pageOwner->isTouchDisabled = TRUE;
            BattleInfo_BackupReturnShellPalette(app, pageOwner);
            BattleInfo_BackupReturnFooterPalette(app, pageOwner);
            BattleInfo_CreatePageObjects(app, pageOwner);
            BattleInfo_BeginSubscreenFade(app, 16, 0);
            taskData->state = 5;
        }
        return;
    case 5:
        if (!BattleInfo_IsSubscreenFadeActive(app)) {
            taskData->state = 2;
        }
        return;
    case 2:
        if ((gSystem.newKeys & (PAD_BUTTON_B | PAD_BUTTON_X)) != 0) {
            taskData->timer = 0;
            taskData->state = 3;
            return;
        }

        switch (BattleInfo_CheckTouchAction()) {
        case BATTLE_INFO_TOUCH_PREV:
            if (app->cycleCooldown == 0) {
                BattleInfo_SetFooterButtonVisual(app, battleInput, BATTLE_INFO_TOUCH_PREV, TRUE);
                taskData->cycleDirection = -1;
                taskData->timer = 0;
                taskData->state = 4;
            }
            return;
        case BATTLE_INFO_TOUCH_NEXT:
            if (app->cycleCooldown == 0) {
                BattleInfo_SetFooterButtonVisual(app, battleInput, BATTLE_INFO_TOUCH_NEXT, TRUE);
                taskData->cycleDirection = 1;
                taskData->timer = 0;
                taskData->state = 4;
            }
            return;
        case BATTLE_INFO_TOUCH_BACK:
            BattleInfo_SetFooterButtonVisual(app, battleInput, BATTLE_INFO_TOUCH_BACK, TRUE);
            taskData->timer = 0;
            taskData->state = 3;
            return;
        }

        BattleInfo_SuppressInput();
        BattleInfo_TickCycleCooldown(app);
        return;
    case 4:
        BattleInfo_SuppressInput();
        taskData->timer++;
        if (taskData->timer > 0) {
            int buttonId = app->pressedButton;

            BattleInfo_CycleFocus(app, bsys, app->ctx, battleInput, taskData->cycleDirection);
            BattleInfo_SetFooterButtonVisual(app, battleInput, buttonId, FALSE);
            taskData->cycleDirection = 0;
            taskData->state = 2;
        }
        return;
    case 3: {
        if (gSystem.touchHeld != 0) {
            return;
        }

        BattleInfo_BeginSubscreenFade(app, 0, 16);
        taskData->state = 7;
        return;
    }
    case 7:
        if (!BattleInfo_IsSubscreenFadeActive(app)) {
            if (pageOwner == NULL) {
                BattleInfo_StopTask(task, app, battleInput);
                return;
            }

            BattleInfo_ClosePageContents(app, battleInput);
            if (!BattleInfo_IsSelectionOwnerStateValid(app)) {
                BattleInfo_StopTask(task, app, battleInput);
                return;
            }
            {
                BattleInputMenu returnMenuState;

                memset(&returnMenuState, 0, sizeof(returnMenuState));
                returnMenuState.main = app->returnMenu;

                if (!BattleInfo_ChangeToClientPage(pageOwner, app->returnMenuId, &returnMenuState)) {
                    BattleInfo_StopTask(task, app, battleInput);
                    return;
                }
            }
            pageOwner->isTouchDisabled = TRUE;
            taskData->state = 8;
            return;
        }
        return;
    case 8:
        if (BattleInput_CheckFeedbackDone(pageOwner) == TRUE) {
            BattleInput_EnableBallGauge(pageOwner);
            BattleInfo_BeginSubscreenFade(app, 16, 0);
            taskData->state = 9;
        }
        return;
    case 9:
        if (!BattleInfo_IsSubscreenFadeActive(app)) {
            pageOwner->isTouchDisabled = FALSE;
            BattleInfo_StopTask(task, app, battleInput);
        }
        return;
    default:
        BattleInfo_StopTask(task, app, battleInput);
        return;
    }
}

static BOOL BattleInfo_StartApp(struct BattleSystem *bsys, struct BattleStruct *ctx, BattleInput *battleInput)
{
    BattleInfoFocusEntry focus;

    if (battleInput == NULL) {
        return FALSE;
    }

    if (!BattleInfo_GetInitialFocus(bsys, ctx, battleInput, &focus)) {
        return FALSE;
    }

    if (ctx->com_seq_no[focus.battlerId] != SSI_STATE_1) {
        return FALSE;
    }

    BattleInfoApp *app = BattleInfo_AppNew();
    if (app == NULL) {
        return FALSE;
    }

    app->battlerId = focus.battlerId;
    app->partySlot = focus.partySlot;
    app->returnMenuId = battleInput->curMenuId;
    app->returnMenu = battleInput->menu.main;

    app->taskData.bsys = bsys;
    app->taskData.state = 0;
    app->taskData.timer = 0;
    app->taskData.cycleDirection = 0;
    app->ctx = ctx;
    app->bip = battleInput;

    app->msgFormat = MessageFormat_New_Custom(8, 64, HEAPID_BATTLE_HEAP);
    if (app->msgFormat == NULL) {
        BattleInfo_AppDelete(app);
        return FALSE;
    }

    ctx->battleInfoApp = app;
    if (CreateSysTask(BattleInfo_Task, app, 0x3E8) == NULL) {
        ctx->battleInfoApp = NULL;
        BattleInfo_AppDelete(app);
        return FALSE;
    }
    BattleInfo_ConsumeKeys();
    BattleInfo_SuppressInput();

    return TRUE;
}
