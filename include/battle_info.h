#ifndef HG_ENGINE_BATTLE_INFO_H
#define HG_ENGINE_BATTLE_INFO_H

#include "constants/battle_message_constants.h"
#include "constants/battle_script_constants.h"
#include "constants/file.h"
#include "constants/hold_item_effects.h"
#include "constants/move_effects.h"

#include "battle.h"
#include "battle_controller_player.h"
#include "battle_input.h"
#include "config.h"
#include "overlay.h"

#define BATTLE_INFO_OVERLAY_ENTRY_ADDR   (0x023C0400 | 1)
#define PLTTBUF_SUB_BG                   1
#define PLTTBUF_SUB_OBJ                  3
#define TOUCH_MENU_NO_INPUT              -1
#define BATTLE_MENU_NONE                 -1
#define GF_BG_LYR_SUB_0                  4
#define GF_PLANE_TOGGLE_OFF              FALSE
#define GF_PLANE_TOGGLE_ON               TRUE
#define BATTLE_MENU_MAIN_INITIAL_ID      1
#define BATTLE_MENU_MAIN_ID              2
#define BATTLE_MENU_3_ID                 3
#define BATTLE_MENU_4_ID                 4
#define BATTLE_MENU_7_ID                 7
#define BATTLE_MENU_8_ID                 8
#define BATTLE_MENU_19_ID                19
#define BATTLE_MENU_20_ID                20
#define BATTLE_INFO_PAGE_ID              21
#define BATTLE_INFO_NATIVE_PAGE_COUNT    21
#define BATTLE_INFO_SOURCE_PAGE_ID       0x03
#define BATTLE_INFO_NATIVE_MENU_GFX_NARC 7
#define BATTLE_INFO_NATIVE_MENU_NCGR     28
#define BATTLE_INFO_FRONTIER_MENU_NCGR   173

// new stuff
void BattleHpBarPct_UpdateAll(struct BattleSystem *bsys, struct BattleStruct *ctx);
void LONG_CALL BattleInfo_UpdateOverlayLifetime(struct BattleStruct *ctx);
BattleInfoMenuTemplate *BattleInfo_GetPageConfigById(int pageId);

// vanilla
void ov12_02269830(SysTask *task, void *data);
int BattleInput_CheckCursorInput(BattleInput *battleInput);
void LONG_CALL BattleInput_EnableBallGauge(BattleInput *battleInput);
BOOL BattleInput_IsMainCommandMenu(int menuId);
void BattleInput_RestoreNativeMenuBgChars(BattleInput *battleInput, int menuId);
void LONG_CALL Sprite_SetPalIndexRespectVramOffset(void *sprite, int index);
BattleInput *LONG_CALL ov12_0223A900(struct BattleSystem *battleSystem);
BgConfig *LONG_CALL BattleSystem_GetBgConfig(BattleSystem *battleSystem);
u32 LONG_CALL BattleSystem_GetBattleType(BattleSystem *battleSystem);
void *LONG_CALL BattleSystem_GetSpriteSystem(BattleSystem *battleSystem);
void *LONG_CALL BattleSystem_GetSpriteManager(BattleSystem *battleSystem);
void *LONG_CALL BattleSystem_GetPaletteData(struct BattleSystem *bsys);
struct BattleStruct *LONG_CALL BattleSystem_GetBattleContext(BattleSystem *battleSystem);
void LONG_CALL ToggleBgLayer(u8 bgId, u8 toggle);
void LONG_CALL PaletteData_LoadPalette(void *data, const u16 *src, u32 bufferID, u16 offset, u16 size);
u8 LONG_CALL SpriteSystem_LoadPaletteBufferFromOpenNarc(void *plttData, u32 bufferId, void *spriteSystem, void *spriteManager, NARC *narc, int fileId, BOOL compressed, int pltt_num, int vram, int resId);
void LONG_CALL BattleInput_FreePersistentResources(BattleInput *battleInput);
int LONG_CALL BattleInput_CatchingTutorialMain(BattleInput *battleInput);
int LONG_CALL TouchscreenHitbox_FindRectAtTouchNew(const void *hitboxes);
void LONG_CALL BattleCursor_Disable(BattleCursor *cursor);
SysTask *LONG_CALL SysTask_CreateOnVWaitQueue(SysTaskFunc func, void *data, u32 priority);
BOOL LONG_CALL BattleInfo_TryOpenFromInput(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId);
void LONG_CALL GfGfx_EngineBTogglePlanes(u8 planeMask, u8 enable);
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
void LONG_CALL sub_020136B4(void *textObj, int x, int y);
int LONG_CALL sub_02013688(struct Window *window, int vramType, int a2);
void LONG_CALL sub_020138E0(void *textObj, int a1);
BOOL LONG_CALL sub_02021AC8(u32 size, BOOL atEnd, int vramType, void *transfer);
void LONG_CALL sub_02021B5C(void *transfer);
int LONG_CALL FontID_String_GetWidth(int fontId, String *string, int letterSpacing);
u8 LONG_CALL AddTextPrinterParameterizedWithColorAndSpacing(struct Window *window, int fontId, String *string, u32 x, u32 y, u32 textSpeed, u32 color, u32 letterSpacing, u32 lineSpacing, void *callback);
void LONG_CALL BattleInput_DisableBallGauge(BattleInput *battleInput);
void *LONG_CALL SpriteManager_GetSpriteList(void *spriteManager);
void *LONG_CALL SpriteManager_FindPlttResourceProxy(void *spriteManager, int id);
void *LONG_CALL GfGfxLoader_GetScrnData(u32 narcId, s32 memberNo, BOOL isCompressed, NNSG2dScreenData **ppScrnData, u32 heapId);
void *LONG_CALL GfGfxLoader_GetPlttData(u32 narcId, s32 memberNo, NNSG2dPaletteData **ppPlttData, u32 heapId);
void LONG_CALL BG_LoadCharTilesData(void *bgl, u8 bgId, const void *data, u32 size, u32 tileStart);
u16 *LONG_CALL PaletteData_GetUnfadedBuf(void *data, u32 bufferID);
u8 LONG_CALL PaletteData_BeginPaletteFade(void *data, u16 toSelect, u16 opaqueBit, s8 wait, u8 cur, u8 end, u16 nextRGB);
u16 LONG_CALL PaletteData_GetSelectedBuffersBitmask(void *data);
void LONG_CALL InitWindow(void *window);
void LONG_CALL AddTextWindowTopLeftCorner(void *bgConfig, void *window, u8 width, u8 height, u16 baseTile, u8 paletteNum);
void LONG_CALL sub_020776B8(void *spriteSystem, void *spriteManager, int vramType, int type, int tag);
void LONG_CALL sub_020777A4(void *spriteManager, int tag);
ManagedSprite *LONG_CALL sub_020777C8(void *spriteSystem, void *spriteManager, int type, void *spriteTemplate);
void LONG_CALL thunk_ManagedSprite_DeleteAndFreeResources(ManagedSprite *managedSprite);

#endif // HG_ENGINE_BATTLE_INFO_H
