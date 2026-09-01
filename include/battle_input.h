#ifndef HG_ENGINE_BATTLE_INPUT_H
#define HG_ENGINE_BATTLE_INPUT_H

#include "battle.h"
#include "task.h"
#include "window.h"

typedef struct BgConfig BgConfig;
typedef struct BattleSystem BattleSystem;
typedef struct ManagedSprite ManagedSprite;
typedef struct BattleCursor BattleCursor;
typedef struct BattleFinger BattleFinger;
typedef struct NNSG2dCharacterData NNSG2dCharacterData;
typedef struct NARC NARC;
typedef struct TextOBJ TextOBJ;
typedef struct TouchscreenHitbox {
    union {
        struct {
            u8 top;
            u8 bottom;
            u8 left;
            u8 right;
        } rect;
        struct {
            u8 sentinel;
            u8 x;
            u8 y;
            u8 r;
        } circle;
    };
} TouchscreenHitbox;

#define TOUCHSCREEN_CIRCLE_SENTINEL 0xFE
#define TOUCHSCREEN_RECTLIST_END    0xFF

typedef u8 FontID;

typedef struct UnkStruct_02021AC8 {
    u32 size;
    u32 offset;
    u16 vram;
    u16 isAtEnd;
} UnkStruct_02021AC8;

typedef struct BattleHpBar {
    struct {
        u8 script;
    };
    ManagedSprite *boxObj;
    ManagedSprite *arrowObj;
    BattleSystem *battleSystem;
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

typedef struct BattleNumberPrinter {
    FontID fontId;
    NNSG2dCharacterData *charData;
    u16 strbuf[16];
    int fillVal;
} BattleNumberPrinter;

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

typedef struct TargetPokemon {
    u8 selectedMon;
    u8 gender : 2;
    u8 hide : 1;
    u8 unused1_3 : 5;
    u8 status;
    u8 unused3;
    s16 hp;
    u16 hpMax;
} TargetPokemon;

typedef struct BattleInputMainMenu {
    u8 battlerType;
    u8 battlerId;
    u8 selectedMon;
    u8 monIconStatus;
    s16 hp;
    u16 maxHp;
    u8 cancelRunDisplay;
    u8 unused[3];
} BattleInputMainMenu;

typedef struct BattleInputFightMenu {
    u16 moveNo[4];
    u8 pp[4];
    u8 ppMax[4];
    u8 battlerType;
} BattleInputFightMenu;

typedef struct BattleInputTargetMenu {
    TargetPokemon targetMons[4];
    u8 battlerType;
    u8 selectionType;
} BattleInputTargetMenu;

typedef struct BattleInputTwoOptionMenu {
    u16 moveNo;
    u16 unused;
} BattleInputTwoOptionMenu;

typedef union BattleInputMenu {
    BattleInputMainMenu main;
    BattleInputFightMenu fight;
    BattleInputTargetMenu target;
    BattleInputTwoOptionMenu twoOption;
} BattleInputMenu;

typedef struct BattleInput_UnkSub14 {
    void *unk0;
    u8 unk4;
    s8 unk5;
} BattleInput_UnkSub14;

typedef struct BattleInputMove {
    u16 moveNo[4];
    u16 pp[4];
    u16 ppMax[4];
} BattleInputMove;

typedef struct BattleInputMoveMemory_DisplayObj {
    struct Window window;
    u16 charLength;
    u16 fontLength;
} BattleInputMoveMemory_DisplayObj;

typedef struct BattleInputMoveMemory {
    BattleInputMove move;
    u16 *typeIcon[4];
    BattleInputMoveMemory_DisplayObj moveDisplay[4];
    BattleInputMoveMemory_DisplayObj ppDisplay[4];
    BattleInputMoveMemory_DisplayObj ppMaxDisplay[4];
} BattleInputMoveMemory;

typedef struct BattleInputTextObject {
    TextOBJ *textObj;
    UnkStruct_02021AC8 unk4;
    u16 fontLength;
} BattleInputTextObject;

typedef struct BattleMenuSlideIn {
    struct BattleInput *battleInput;
    SysTask *vblankTask;
    s16 x;
    s16 y;
    s16 xSet;
    s16 ySet;
    s16 unk_10;
    u8 battlerId;
    u8 state;
} BattleMenuSlideIn;

typedef struct BallGaugeAnimation {
    s16 xOffset;
    u8 percentExpToNextLevel;
    u8 state;
    u8 animationType;
    u8 delay;
    u8 count;
    u8 countMax;
    u8 loop;
} BallGaugeAnimation;

typedef struct S16Pos {
    s16 x;
    s16 y;
} S16Pos;

typedef struct BattleInputFeedback {
    s16 state;
    s16 delay;
    union {
        struct {
            u8 unk4;
        } param;
        struct {
            int unk4;
        } move;
        struct {
            const s16 *screenOffsets;
            void *unk8;
            int ret;
            u8 unk10;
            u8 textObjId;
            u8 pokemonIconIndex;
            u8 frameType;
            u8 shouldDeleteAfter;
            S16Pos pos;
        } button;
        struct {
            void *unk4[4];
            void *unk14;
            NNSG2dCharacterData *unk18;
            void *unk1C;
            int ret;
        } monSelect;
        struct {
            s16 *unk4;
            TouchscreenHitbox *unk8;
        } unkBugContest;
        s16 unk4[2];
    };
} BattleInputFeedback;

typedef struct BattleInputColor {
    int ret;
    s16 unk4;
    s16 unk6;
    u8 state;
    u8 pal;
} BattleInputColor;

typedef struct BattleMenuCursor {
    u8 enabled;
    s8 menuY;
    s8 menuX;
    u8 unused;
} BattleMenuCursor;

typedef struct BattleInputTutorial {
    BattleFinger *finger;
    u8 state;
    u8 substate;
    u8 delay;
} BattleInputTutorial;

typedef struct BattleInput BattleInput;
typedef struct BattleInfoMenuTemplate {
    u16 unk_00;
    u16 paletteId;
    u16 unk_04_val2[4];
    u16 priority[4];
    const TouchscreenHitbox *touchscreenRect;
    const int *touchInput;
    const u8 *unk_1C;
    int (*funcCursor)(BattleInput *battleInput, int param1);
    void (*funcSaveCursorPos)(BattleInput *battleInput, int param1);
    void (*funcCreateMenuObjects)(BattleInput *battleInput, int param1, int param2);
    int (*funcTouchCallback)(BattleInput *battleInput, int touchInput, int param2);
} BattleInfoMenuTemplate;

typedef BattleInfoMenuTemplate BattleMenuTemplate;

typedef enum BattleInfoTouchInput {
    BATTLE_INFO_TOUCH_PREV = 0,
    BATTLE_INFO_TOUCH_NEXT,
    BATTLE_INFO_TOUCH_BACK,
    BATTLE_INFO_TOUCH_TOTAL,
} BattleInfoTouchInput;

int LONG_CALL BattleInput_CheckTouch(BattleInput *battleInput);

struct BattleInput {
    BattleSystem *battleSystem;
    u8 *unk4; // when non-null, allows for keyPressed to be set to unk4[0]; heldKeys?
    SysTask *ballTask;
    SysTask *feedbackTask;
    SysTask *unk10;
    BattleInput_UnkSub14 unk14;
    BattleInputMenu menu;
    u16 *screenBuffer[7];
    u16 *paletteBuffer;
    u16 *bgPalNormal;
    u16 *bgPalTouch;
    SysTask *bgTask; // Handles the subscreen background palette update; only ever set to Task_BattleMenuMessageWaitForTouchResponse
    BattleInputMoveMemory moveMemory[4]; // Holds the move display info for ALL the currently active pokemon
    void *fontSystem;
    BattleInputTextObject textObj[13];
    void *unk5B8;
    ManagedSprite *spriteBallGauge[6];
    ManagedSprite *spriteBallGaugeOpponent[6];
    ManagedSprite *spriteTypeIcons[4];
    ManagedSprite *spriteCategoryIcons[4]; // Never gets set
    ManagedSprite *spritePokemonIcons[4];
    SysTask *taskAnimatePokemonIcon[4];
    BallGaugeAnimation ballGaugeAnimation[6];
    SysTask *unused_664;
    u8 unused_668;
    u8 unused_669;
    u8 battlerType;
    s8 curMenuId;
    u8 monTargetType;
    u8 gender;
    u8 isTouchDisabled;
    u8 unk66F; // true when cancel is displayed, false when run is displayed
    u8 unk670;
    s16 unk671;
    u8 fadeDir;
    s16 fadeCur;
    SysTask *fadeTask;
    BattleInputFeedback feedback;
    BattleInputColor color;
    s32 scrollXEdge;
    s32 scrollXSpeed;
    s32 scrollXEnd;
    BattleCursor *cursor;
    BattleMenuCursor menuCursor;
    u8 keyPressed;
    u8 cancelRunDisplay;
    BattleInputTutorial tutorial;
    ManagedSprite *spriteCaughtBugIcon;
    ManagedSprite *spriteBugNet;
    ManagedSprite *spriteSportBall;
};

void ov12_0226604C(BgConfig *config);
void ov12_022660A8(BgConfig *config);
BattleInput *BattleInput_New(void);
BOOL LONG_CALL BattleInput_CheckFeedbackDone(BattleInput *battleInput);
void BattleInfoHint_FreeResources(struct BI_PARAM *bip);
void BattleInfoHint_LoadSprite(struct BI_PARAM *bip);
void ov12_022698C4(SysTask *task, void *data);
void ov12_02269954(SysTask *task, void *data);
void LONG_CALL BattleInput_ChangeMenu(NARC *narc0, NARC *narc1, BattleInput *battleInput, int menuId, int a4, BattleInputMenu *a5);

#endif
