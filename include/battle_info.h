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

// vanilla funcs
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

#define BATTLE_INFO_OVERLAY_ENTRY_ADDR (0x023C0400 | 1)
#define BATTLE_MENU_MAIN_INITIAL_ID    1
#define BATTLE_MENU_MAIN_ID            2
#define BATTLE_MENU_3_ID               3
#define BATTLE_MENU_4_ID               4
#define BATTLE_MENU_7_ID               7
#define BATTLE_MENU_8_ID               8
#define BATTLE_MENU_19_ID              19
#define BATTLE_MENU_20_ID              20

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
#define BATTLE_MENU_19_ID                19
#define BATTLE_MENU_20_ID                20
#define BATTLE_INFO_PAGE_ID              21
#define BATTLE_INFO_NATIVE_PAGE_COUNT    21
#define BATTLE_INFO_SOURCE_PAGE_ID       0x03
#define BATTLE_INFO_NATIVE_MENU_GFX_NARC 7
#define BATTLE_INFO_NATIVE_MENU_NCGR     28
#define BATTLE_INFO_FRONTIER_MENU_NCGR   173

typedef int (*BattleInfoOverlayEntry)(int command, void *arg0, void *arg1, void *arg2);

// new funcs
void BattleHpBarPct_UpdateAll(struct BattleSystem *bsys, struct BattleStruct *ctx);
void LONG_CALL BattleInfo_UpdateOverlayLifetime(struct BattleStruct *ctx);
BattleInfoMenuTemplate *BattleInfo_GetPageConfigById(int pageId);
void ov12_02269830(SysTask *task, void *data);
int BattleInput_CheckCursorInput(BattleInput *battleInput);
void LONG_CALL BattleInput_EnableBallGauge(BattleInput *battleInput);
BOOL BattleInput_IsMainCommandMenu(int menuId);
void BattleInput_RestoreNativeMenuBgChars(BattleInput *battleInput, int menuId);

#endif // HG_ENGINE_BATTLE_INFO_H
