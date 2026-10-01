#ifndef HG_ENGINE_POKEPIC_H
#define HG_ENGINE_POKEPIC_H

#define POKEPIC_SCALE_NORMAL       0x100
#define RAID_POKEPIC_SCALE_PERCENT 160

#define MON_SPRITE_X_CENTER   0
#define MON_SPRITE_Y_CENTER   1
#define MON_SPRITE_ROTATION_Z 9
#define MON_SPRITE_X_PIVOT    10
#define MON_SPRITE_SCALE_X    12
#define MON_SPRITE_SCALE_Y    13

#define MON_AFFINE_SHIFT    8
#define MON_AFFINE_SCALE(i) (i << MON_AFFINE_SHIFT)

typedef enum PokepicAttr {
    POKEPIC_X,
    POKEPIC_Y,
    POKEPIC_Z,
    POKEPIC_XOFFSET,
    POKEPIC_YOFFSET,
    POKEPIC_ZOFFSET,
    POKEPIC_VANISHED,
    POKEPIC_XROT,
    POKEPIC_YROT,
    POKEPIC_ZROT,
    POKEPIC_XPIVOT,
    POKEPIC_YPIVOT,
    POKEPIC_AFFINEW,
    POKEPIC_AFFINEH,
    POKEPIC_VISIBLE,
    POKEPIC_XOFF2,
    POKEPIC_YOFF2,
    POKEPIC_W,
    POKEPIC_H,
    POKEPIC_SHADOW_X,
    POKEPIC_SHADOW_Y,
    POKEPIC_SHADOW_XOFFSET,
    POKEPIC_SHADOW_YOFFSET,
    POKEPIC_ALPHA,
    POKEPIC_DIFFUSE_R,
    POKEPIC_DIFFUSE_G,
    POKEPIC_DIFFUSE_B,
    POKEPIC_AMBIENT_R,
    POKEPIC_AMBIENT_G,
    POKEPIC_AMBIENT_B,
    POKEPIC_FADE,
    POKEPIC_FADE_COLOR,
    POKEPIC_FADE_BLDY,
    POKEPIC_FADE_BLDY_TARGET,
    POKEPIC_FADE_SPEED,
    POKEPIC_HFLIP,
    POKEPIC_VFLIP,
    POKEPIC_NODRAW,
    POKEPIC_ANIM_STEP,
    POKEPIC_39,
    POKEPIC_MOSAIC,
    POKEPIC_SHADOW_H,
    POKEPIC_SHADOW_PLTT,
    POKEPIC_SHADOW_XADJ_REQ,
    POKEPIC_SHADOW_YADJ_REQ,
    POKEPIC_SHADOW_AFFINE,
    POKEPIC_SHADOW_SIZE,
} PokepicAttr;

typedef struct Pokepic Pokepic;

typedef struct PokepicTemplate {
    u16 narcID;
    u16 charDataID;
    u16 palDataID;
    u16 species;
    u8 isAnimated;
    u8 filler_9[3];
    u32 personality;
} PokepicTemplate;

typedef struct PokepicDrawParam {
    s16 xCenter;
    s16 yCenter;
    int zCenter;
    s16 xOffset;
    s16 yOffset;
    int zOffset;
    s16 affineWidth;
    s16 affineHeight;
    u16 rotX;
    u16 rotY;
    u16 rotZ;
    u16 unk_1A;
    s16 xPivot;
    s16 yPivot;
    u8 xOffset2;
    u8 yOffset2;
    u8 width;
    u8 height;
    u8 fadeCur;
    u8 fadeEnd;
    u8 fadeDelayCounter;
    u8 fadeDelayLength;
    u32 fadeTargetColor;
    u32 diffuseR : 5;
    u32 diffuseG : 5;
    u32 diffuseB : 5;
    u32 ambientR : 5;
    u32 ambientG : 5;
    u32 ambientB : 5;
    u32 filler_2C_30 : 2;
    u32 hasVanished : 1;
    u32 visible : 1;
    u32 alpha : 5;
    u32 unk_30_07 : 1;
    u32 unk_30_08 : 1;
    u32 hflip : 1;
    u32 vflip : 1;
    u32 dontDraw : 1;
    u32 fadeActive : 1;
    u32 mosaic : 4;
    u32 filler_30_11 : 15;
} PokepicDrawParam;

typedef void (*PokepicCallback)(Pokepic *, PokepicDrawParam *);

typedef struct PokepicShadow {
    u16 palSlot : 2;
    u16 shouldAdjustX : 1;
    u16 shouldAdjustY : 1;
    u16 isAffine : 1;
    u16 size : 2;
    u16 filler_0_7 : 9;
    s8 height;
    u8 filler_3[1];
    s16 x;
    s16 y;
    s16 xOffset;
    s16 yOffset;
} PokepicShadow;

typedef struct PokepicAnimScript {
    s8 next;
    u8 duration;
    s8 xOffset;
    s8 unk_3;
} PokepicAnimScript;

typedef struct PokepicAnim {
    u8 active;
    u8 animStep;
    u8 animId;
    u8 stepDelay;
    u8 loopTimers[10];
    PokepicAnimScript *animScript;
} PokepicAnim;

struct Pokepic {
    u32 active : 1;
    u32 polygonId : 6;
    u32 needReloadChar : 1;
    u32 needReloadPltt : 1;
    u32 filler_00_09 : 23;
    PokepicTemplate template;
    PokepicTemplate templateBak;
    PokepicDrawParam drawParam;
    u8 animActive;
    u8 whichAnim;
    u8 animStepDelay;
    u8 whichAnimStep;
    u8 animLoopTimers[10];
    u8 filler_66[2];
    PokepicCallback callback;
    PokepicShadow shadow;
    PokepicShadow shadowBak;
    PokepicAnimScript animScript[10];
}; // size: 0xAC

typedef struct NNSG2dVRamLocation {
    u32 baseAddrOfVram[3];
} NNSG2dVRamLocation; // size: 0xC

typedef enum __attribute__((mode(SI))) {
    GX_TEXSIZE_S8 = 0,
    GX_TEXSIZE_S16 = 1,
    GX_TEXSIZE_S32 = 2,
    GX_TEXSIZE_S64 = 3,
    GX_TEXSIZE_S128 = 4,
    GX_TEXSIZE_S256 = 5,
    GX_TEXSIZE_S512 = 6,
    GX_TEXSIZE_S1024 = 7
} GXTexSizeS;

typedef enum __attribute__((mode(SI))) {
    GX_TEXSIZE_T8 = 0,
    GX_TEXSIZE_T16 = 1,
    GX_TEXSIZE_T32 = 2,
    GX_TEXSIZE_T64 = 3,
    GX_TEXSIZE_T128 = 4,
    GX_TEXSIZE_T256 = 5,
    GX_TEXSIZE_T512 = 6,
    GX_TEXSIZE_T1024 = 7
} GXTexSizeT;

typedef enum __attribute__((mode(SI))) {
    GX_TEXFMT_NONE = 0,
    GX_TEXFMT_A3I5 = 1,
    GX_TEXFMT_PLTT4 = 2,
    GX_TEXFMT_PLTT16 = 3,
    GX_TEXFMT_PLTT256 = 4,
    GX_TEXFMT_COMP4x4 = 5,
    GX_TEXFMT_A5I3 = 6,
    GX_TEXFMT_DIRECT = 7
} GXTexFmt;

typedef enum __attribute__((mode(SI))) {
    GX_TEXPLTTCOLOR0_USE = 0,
    GX_TEXPLTTCOLOR0_TRNS = 1
} GXTexPlttColor0;

typedef enum {
    GX_OBJVRAMMODE_CHAR_2D = (0 << REG_GX_DISPCNT_OBJMAP_SHIFT) | (0 << REG_GX_DISPCNT_EXOBJ_SHIFT),
    GX_OBJVRAMMODE_CHAR_1D_32K = (1 << REG_GX_DISPCNT_OBJMAP_SHIFT) | (0 << REG_GX_DISPCNT_EXOBJ_SHIFT),
    GX_OBJVRAMMODE_CHAR_1D_64K = (1 << REG_GX_DISPCNT_OBJMAP_SHIFT) | (1 << REG_GX_DISPCNT_EXOBJ_SHIFT),
    GX_OBJVRAMMODE_CHAR_1D_128K = (1 << REG_GX_DISPCNT_OBJMAP_SHIFT) | (2 << REG_GX_DISPCNT_EXOBJ_SHIFT),
    GX_OBJVRAMMODE_CHAR_1D_256K = (1 << REG_GX_DISPCNT_OBJMAP_SHIFT) | (3 << REG_GX_DISPCNT_EXOBJ_SHIFT)
} GXOBJVRamModeChar;

typedef struct NNSG2dImageAttr {
    GXTexSizeS sizeS;
    GXTexSizeT sizeT;
    GXTexFmt fmt;
    BOOL bExtendedPlt;
    GXTexPlttColor0 plttUse;
    GXOBJVRamModeChar mappingType;
} NNSG2dImageAttr; // size: 0x18

typedef struct NNSG2dImageProxy {
    NNSG2dVRamLocation vramLocation;
    NNSG2dImageAttr attr;
} NNSG2dImageProxy; // size: 0x24

typedef struct NNSG2dImagePaletteProxy {
    GXTexFmt fmt;
    BOOL bExtendedPlt;
    NNSG2dVRamLocation vramLocation;
} NNSG2dImagePaletteProxy; // size: 0x14

typedef struct NNSG2dCharacterData {
    u16 H;
    u16 W;
    GXTexFmt pixelFmt;
    GXOBJVRamModeChar mapingType;
    u32 characterFmt;
    u32 szByte;
    void *pRawData;
} NNSG2dCharacterData;

typedef struct NNSG2dPaletteData {
    GXTexFmt fmt;
    BOOL bExtendedPlt;
    u32 szByte;
    void *pRawData;
} NNSG2dPaletteData;

typedef struct PokepicManager {
    Pokepic pics[4];
    NNSG2dImageProxy imageProxy;
    NNSG2dImagePaletteProxy paletteProxy;
    int heapID;
    u32 charBaseAddr;
    u32 charSize;
    u32 plttBaseAddr;
    u32 plttSize;
    u8 *charRawData;
    u16 *plttRawData;
    u16 *plttRawDataUnfaded;
    NNSG2dCharacterData charData;
    NNSG2dPaletteData plttData;
    u8 unread_330;
    u8 needLoadImage;
    u8 needLoadPltt;
    u8 needG3Identity;
    u32 flags;
} PokepicManager; // size: 0x338

// some of this is inferred from plat
typedef struct PokemonAnim {
    Pokepic *sprite; // 0x00
    void *task; // 0x04
    void *scriptData; // 0x08
    u32 *scriptPtr; // 0x0C
    int active; // 0x10
    int animNum; // 0x14
    int waitFrame; // 0x18
    int endAnim; // 0x1C
    int completed; // 0x20
    int vars[8]; // 0x24-0x43
    int commandCount; // 0x44
    int loopMax; // 0x48
    int loopCounter; // 0x4C
    u32 *loopStart; // 0x50
    int startDelay; // 0x54
    int originalX; // 0x58
    int originalY; // 0x5C
} PokemonAnim;

// not 100% on this one
typedef struct XYTransformContext {
    s16 x;
    s16 y;
} XYTransformContext;

void LONG_CALL Pokepic_StartAnim(Pokepic *pokepic);
BOOL LONG_CALL Pokepic_IsAnimFinished(Pokepic *pokepic);
void LONG_CALL Pokepic_SetAttr(Pokepic *pokepic, int attr, int value);
void LONG_CALL sub_0207294C(void *narc, void *a1, void *a2, u16 a3, int a4, int a5, int a6);
void LONG_CALL PaletteData_LoadPalette(void *data, const u16 *src, u32 bufferID, u16 offset, u16 size);
u16 *LONG_CALL PaletteData_GetUnfadedBuf(void *data, u32 bufferID);

#endif // HG_ENGINE_POKEPIC_H
