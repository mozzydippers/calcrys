#include "../../include/battle.h"
#include "../../include/constants/file.h"
#include "../../include/window.h"

#define ENEMY_HP_PERCENT_FILL_COLOR   4
#define ENEMY_HP_PERCENT_SHADOW_COLOR 14
#define ENEMY_HP_PERCENT_CHAR_0       289
#define ENEMY_HP_PERCENT_CHAR_PERCENT 466
#define ENEMY_HP_PERCENT_STRING_EOS   0xFFFF
#define ENEMY_HP_PERCENT_TEXT_COLOR   ((((ENEMY_HP_PERCENT_FILL_COLOR) & 0xFF) << 16) | (((ENEMY_HP_PERCENT_SHADOW_COLOR) & 0xFF) << 8) | 0)

typedef struct UnkStruct_02021AC8 {
    u32 size;
    u32 offset;
    u16 vram;
    u16 isAtEnd;
} UnkStruct_02021AC8;

typedef struct EnemyHpPercentTextObjTemplate {
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
} EnemyHpPercentTextObjTemplate;

typedef struct EnemyHpPercentOverlay {
    void *fontSystem;
    void *textObj;
    void *textObjRenderer;
    UnkStruct_02021AC8 transfer;
    void *sprite;
    u8 lastPercent;
    u8 type;
    u8 monId;
    u8 active;
} EnemyHpPercentOverlay;

enum BattleHpBarType {
    HP_BAR_TYPE_SINGLE_PLAYER,
    HP_BAR_TYPE_SINGLE_ENEMY,
    HP_BAR_TYPE_DOUBLE_PLAYER_LHS,
    HP_BAR_TYPE_DOUBLE_ENEMY_LHS,
    HP_BAR_TYPE_DOUBLE_PLAYER_RHS,
    HP_BAR_TYPE_DOUBLE_ENEMY_RHS,
    HP_BAR_TYPE_SAFARI,
    HP_BAR_TYPE_PALPARK,
};

typedef struct BattleHpBar {
    struct {
        u8 script;
    };
    struct ManagedSprite *boxObj;
    struct ManagedSprite *arrowObj;
    struct BattleSystem *battleSystem;
    SysTask *unk10;
    struct Window unk14;
    u8 battlerId;
    u8 type;
    u8 monId;
    u8 unk27;
    s32 hp;
    s32 maxHp;
    s32 gainedHp;
    s32 hpCalc;
    s32 exp;
    s32 maxExp;
    s32 gainedExp;
    s32 expCalc;
    u8 level;
    u8 unk49;
    u8 unk_4A;
    u8 unk4B;
    u8 unk4C;
    u8 unk4D;
    u8 unk4E;
    u8 unk_4F_0 : 1;
    u8 unk_4F_1 : 1;
    u8 unk_4F_2 : 1;
    u8 unk_4F_3 : 1;
    SysTask *sysTask;
    u16 unk54;
} BattleHpBar;

BattleHpBar *LONG_CALL BattleSystem_GetHpBar(struct BattleSystem *battleSystem, int battlerId);
void *LONG_CALL BattleSystem_GetSpriteManager(struct BattleSystem *battleSystem);
void *LONG_CALL BattleSystem_GetBgConfig(struct BattleSystem *battleSystem);
BOOL LONG_CALL ManagedSprite_GetDrawFlag(ManagedSprite *managedSprite);
u16 LONG_CALL ManagedSprite_GetDrawPriority(ManagedSprite *managedSprite);
u8 LONG_CALL AddTextPrinterParameterizedWithColorAndSpacing(struct Window *window, int fontId, String *string, u32 x, u32 y, u32 textSpeed, u32 color, u32 letterSpacing, u32 lineSpacing, void *callback);
void *LONG_CALL sub_02013534(int num, int heapId);
void LONG_CALL sub_020135AC(void *manager);
void *LONG_CALL SpriteManager_GetSpriteList(void *spriteManager);
void *LONG_CALL SpriteManager_FindPlttResourceProxy(void *spriteManager, int id);
void *LONG_CALL sub_02013910(struct Window *window, int heapId);
void LONG_CALL sub_02013938(void *textObjRenderer);
u32 LONG_CALL sub_02013948(void *textObjRenderer, int vramType);
void *LONG_CALL TextOBJ_Create(const void *template, void *textObjRenderer);
void LONG_CALL TextOBJ_Destroy(void *textObj);
void LONG_CALL TextOBJ_SetPaletteNum(void *textObj, int paletteNum);
void LONG_CALL TextOBJ_SetSpritesDrawFlag(void *textObj, BOOL draw);
void LONG_CALL sub_02013820(void *textObj, int drawPriority);
BOOL LONG_CALL sub_02021AC8(u32 size, BOOL atEnd, int vramType, void *transfer);
void LONG_CALL sub_02021B5C(void *transfer);
void LONG_CALL InitWindow(struct Window *window);
void LONG_CALL AddTextWindowTopLeftCorner(void *bgConfig, struct Window *window, u8 width, u8 height, u16 baseTile, u8 paletteNum);
void LONG_CALL RemoveWindow(void *window);
void LONG_CALL CopyU16ArrayToString(String *string, const u16 *src);

static EnemyHpPercentOverlay sEnemyHpPercentOverlays[4];
static struct BattleSystem *sEnemyHpPercentOverlayOwner;

BOOL BattleHpBarPct_IsEnemyHpBarType(u8 type)
{
    return type == HP_BAR_TYPE_SINGLE_ENEMY
        || type == HP_BAR_TYPE_DOUBLE_ENEMY_LHS
        || type == HP_BAR_TYPE_DOUBLE_ENEMY_RHS;
}

BOOL BattleHpBarPct_CalcPercent(BattleHpBar *hpBar, u8 *percentOut)
{
    if (hpBar == NULL || percentOut == NULL || !BattleHpBarPct_IsEnemyHpBarType(hpBar->type)) {
        return FALSE;
    }

    u32 maxHp = (hpBar->maxHp > 0) ? (u32)hpBar->maxHp : 0;
    if (maxHp == 0) {
        return FALSE;
    }

    u32 hp = (hpBar->hp > 0) ? (u32)hpBar->hp : 0;
    u32 percent = (hp * 100U) / maxHp;
    if (percent > 100U) {
        percent = 100U;
    }

    if (percent <= 0U && hp > 0U) {
        percent = 1U;
    }

    *percentOut = (u8)percent;

    return TRUE;
}

void BattleHpBarPct_GetTextOffset(u8 type, s16 *xOffset, s16 *yOffset)
{
    switch (type) {
    case HP_BAR_TYPE_SINGLE_ENEMY:
        *xOffset = 17;
        *yOffset = 3;
        break;
    case HP_BAR_TYPE_DOUBLE_ENEMY_LHS:
        *xOffset = 17;
        *yOffset = 1;
        break;
    case HP_BAR_TYPE_DOUBLE_ENEMY_RHS:
        *xOffset = 17;
        *yOffset = 1;
        break;
    default:
        *xOffset = 0;
        *yOffset = 0;
        break;
    }
}

static int BattleHpBarPct_BuildString(u16 *dest, u8 percent)
{
    int digits = 0;

    if (percent >= 100) {
        dest[digits++] = ENEMY_HP_PERCENT_CHAR_0 + 1;
        dest[digits++] = ENEMY_HP_PERCENT_CHAR_0;
        dest[digits++] = ENEMY_HP_PERCENT_CHAR_0;
    } else if (percent >= 10) {
        dest[digits++] = ENEMY_HP_PERCENT_CHAR_0 + (percent / 10);
        dest[digits++] = ENEMY_HP_PERCENT_CHAR_0 + (percent % 10);
    } else {
        dest[digits++] = ENEMY_HP_PERCENT_CHAR_0 + percent;
    }

    dest[digits++] = ENEMY_HP_PERCENT_CHAR_PERCENT;
    dest[digits] = ENEMY_HP_PERCENT_STRING_EOS;

    return digits;
}

static void BattleHpBarPct_DestroyTextObj(EnemyHpPercentOverlay *overlay)
{
    if (overlay == NULL) {
        return;
    }

    if (overlay->textObj != NULL) {
        TextOBJ_Destroy(overlay->textObj);
        overlay->textObj = NULL;
    }

    if (overlay->transfer.size != 0) {
        sub_02021B5C(&overlay->transfer);
        memset(&overlay->transfer, 0, sizeof(overlay->transfer));
    }

    if (overlay->fontSystem != NULL) {
        sub_020135AC(overlay->fontSystem);
        overlay->fontSystem = NULL;
    }

    if (overlay->textObjRenderer != NULL) {
        sub_02013938(overlay->textObjRenderer);
        overlay->textObjRenderer = NULL;
    }
}

static BOOL BattleHpBarPct_CreateTextObj(BattleHpBar *hpBar, EnemyHpPercentOverlay *overlay, u8 percent, s16 xOffset, s16 yOffset)
{
    EnemyHpPercentTextObjTemplate template;
    struct Window window;
    u16 textBuffer[5];

    if (hpBar == NULL || overlay == NULL) {
        return FALSE;
    }

    void *spriteManager = BattleSystem_GetSpriteManager(hpBar->battleSystem);
    void *bgConfig = BattleSystem_GetBgConfig(hpBar->battleSystem);
    if (spriteManager == NULL || bgConfig == NULL || hpBar->boxObj == NULL || hpBar->boxObj->sprite == NULL) {
        return FALSE;
    }

    if (overlay->fontSystem == NULL) {
        overlay->fontSystem = sub_02013534(1, HEAPID_BATTLE_HEAP);
        if (overlay->fontSystem == NULL) {
            return FALSE;
        }
    }

    String *string = String_New(8, HEAPID_BATTLE_HEAP);
    if (string == NULL) {
        return FALSE;
    }

    int textLen = BattleHpBarPct_BuildString(textBuffer, percent);
    CopyU16ArrayToString(string, textBuffer);

    int width = 4;
    int textX = (width - textLen) * 6;

    InitWindow(&window);
    AddTextWindowTopLeftCorner(bgConfig, &window, width, 2, 0, 0);
    AddTextPrinterParameterizedWithColorAndSpacing(&window, 0, string, textX, 0, 0xFF, ENEMY_HP_PERCENT_TEXT_COLOR, 0, 0, NULL);

    overlay->textObjRenderer = sub_02013910(&window, HEAPID_BATTLE_HEAP);
    if (overlay->textObjRenderer == NULL) {
        RemoveWindow(&window);
        String_Delete(string);
        return FALSE;
    }

    u32 size = sub_02013948(overlay->textObjRenderer, NNS_G2D_VRAM_TYPE_2DMAIN);
    if (!sub_02021AC8(size, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, &overlay->transfer)) {
        sub_02013938(overlay->textObjRenderer);
        overlay->textObjRenderer = NULL;
        RemoveWindow(&window);
        String_Delete(string);
        return FALSE;
    }

    template.fontSystem = overlay->fontSystem;
    template.window = &window;
    template.spriteList = SpriteManager_GetSpriteList(spriteManager);
    template.plttResourceProxy = SpriteManager_FindPlttResourceProxy(spriteManager, 20006);
    template.sprite = hpBar->boxObj->sprite;
    template.offset = overlay->transfer.offset;
    template.x = xOffset;
    template.y = yOffset;
    template.unk_20 = 0;
    template.unk_24 = 3;
    template.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.heapID = HEAPID_BATTLE_HEAP;
    overlay->textObj = TextOBJ_Create(&template, overlay->textObjRenderer);

    RemoveWindow(&window);
    String_Delete(string);

    if (overlay->textObj == NULL) {
        sub_02021B5C(&overlay->transfer);
        memset(&overlay->transfer, 0, sizeof(overlay->transfer));
        sub_02013938(overlay->textObjRenderer);
        overlay->textObjRenderer = NULL;
        return FALSE;
    }

    TextOBJ_SetPaletteNum(overlay->textObj, 0);
    {
        u16 hpBarDrawPriority = ManagedSprite_GetDrawPriority(hpBar->boxObj);
        sub_02013820(overlay->textObj, hpBarDrawPriority > 0 ? hpBarDrawPriority - 1 : 0);
    }
    TextOBJ_SetSpritesDrawFlag(overlay->textObj, TRUE);
    overlay->sprite = hpBar->boxObj->sprite;
    overlay->monId = hpBar->monId;

    return TRUE;
}

static void BattleHpBarPct_DestroyOverlay(int battlerId)
{
    if (battlerId < 0 || battlerId >= (int)NELEMS(sEnemyHpPercentOverlays)) {
        return;
    }

    EnemyHpPercentOverlay *overlay = &sEnemyHpPercentOverlays[battlerId];
    if (!overlay->active || sEnemyHpPercentOverlayOwner == NULL) {
        return;
    }

    BattleHpBarPct_DestroyTextObj(overlay);
    memset(overlay, 0, sizeof(*overlay));
}

void BattleHpBarPct_DestroyAll()
{
    for (int battlerId = 0; battlerId < (int)NELEMS(sEnemyHpPercentOverlays); battlerId++) {
        BattleHpBarPct_DestroyOverlay(battlerId);
    }

    sEnemyHpPercentOverlayOwner = NULL;
}

static void BattleHpBarPct_UpdateOverlay(BattleHpBar *hpBar, struct BattleStruct *ctx)
{
    u8 percent;
    s16 xOffset;
    s16 yOffset;

    if (hpBar == NULL
        || hpBar->battlerId >= NELEMS(sEnemyHpPercentOverlays)
        || !BattleHpBarPct_IsEnemyHpBarType(hpBar->type)
        || hpBar->boxObj == NULL) {
        return;
    }

    EnemyHpPercentOverlay *overlay = &sEnemyHpPercentOverlays[hpBar->battlerId];
    if (overlay->active
        && (overlay->type != hpBar->type
            || overlay->sprite != hpBar->boxObj->sprite
            || overlay->monId != hpBar->monId)) {
        BattleHpBarPct_DestroyOverlay(hpBar->battlerId);
    }

    if (!BattleHpBarPct_CalcPercent(hpBar, &percent)) {
        if (overlay->textObj != NULL) {
            TextOBJ_SetSpritesDrawFlag(overlay->textObj, FALSE);
        }
        return;
    }

    BattleHpBarPct_GetTextOffset(hpBar->type, &xOffset, &yOffset);

    if (!overlay->active || overlay->type != hpBar->type || overlay->lastPercent != percent || overlay->textObj == NULL) {
        if (overlay->textObj == NULL && (ctx == NULL || ctx->server_seq_no != CONTROLLER_COMMAND_SELECTION_SCREEN_INPUT)) {
            return;
        }
        BattleHpBarPct_DestroyTextObj(overlay);
        if (!BattleHpBarPct_CreateTextObj(hpBar, overlay, percent, xOffset, yOffset)) {
            return;
        }
        overlay->type = hpBar->type;
        overlay->active = TRUE;
    }

    TextOBJ_SetSpritesDrawFlag(overlay->textObj, ManagedSprite_GetDrawFlag(hpBar->boxObj));
    overlay->lastPercent = percent;
}

void BattleHpBarPct_UpdateAll(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    if (bsys == NULL) {
        return;
    }

    if (sEnemyHpPercentOverlayOwner != NULL && sEnemyHpPercentOverlayOwner != bsys) {
        BattleHpBarPct_DestroyAll();
    }
    sEnemyHpPercentOverlayOwner = bsys;

    for (int battlerId = 0; battlerId < bsys->maxBattlers; battlerId++) {
        BattleHpBarPct_UpdateOverlay(BattleSystem_GetHpBar(bsys, battlerId), ctx);
    }
}
