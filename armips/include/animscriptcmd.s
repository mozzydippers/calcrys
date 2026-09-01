.macro wait,time
    .word 0x0, time
.endmacro

.macro waitstate
    .word 0x1
.endmacro

.macro loop,value
    .word 0x2, value
.endmacro

.macro doloop
    .word 0x3
.endmacro

.macro end
    .word 0x4
.endmacro

.macro playse,value
    .word 0x5, value
.endmacro

.macro changemonbg,value
    .word 0x6, value
.endmacro

.macro resetmonbg,value
    .word 0x7, value
.endmacro

.macro cmd08
    .word 0x8
.endmacro

.macro cmd09
    .word 0x9
.endmacro

.macro call,address
    .word 0xA
    .word (address - .) / 4
.endmacro

.macro return
    .word 0xB
.endmacro

.macro cmd0C,num0,num1
    .word 0xC, num0, num1
.endmacro

.macro checkturn,address1,address2
    .word 0xD
    .word (address1 - .) / 4
    .word (address2 - .) / 4
.endmacro

.macro cmd0E
    .word 0xE
.endmacro

.macro cmd0F
    .word 0xF
.endmacro

.macro changebg,value1,value2
    .word 0x10, value1, value2
.endmacro

.macro changebgparam,value1,value2
    .word 0x11, value1, value2
.endmacro

.macro resetbg,value1,value2
    .word 0x12, value1, value2
.endmacro

.macro waitforchangebg2
    .word 0x13
.endmacro

.macro waitforchangebg
    .word 0x14
.endmacro

.macro cmd15
    .word 0x15
.endmacro

// constants for panning

PAN_LEFT equ -117
PAN_RIGHT equ 117
PAN_CENTER equ 0

.macro playsepan,id,pan
    .word 0x16, id, pan
.endmacro

.macro cmd17
    .word 0x17
.endmacro

.macro playsepanmod,id,panstart,panend,panadd,time
    .word 0x18, id, panstart, panend, panadd, time
.endmacro

.macro repeatse,id,pan,frames,repeat
    .word 0x19, id, pan, frames, repeat
.endmacro

.macro waitse,id,pan,num
    .word 0x1A, id, pan, num
.endmacro

.macro cmd1B
    .word 0x1B
.endmacro

.macro cmd1C
    .word 0x1C
.endmacro

.macro cmd1D
    .word 0x1D
.endmacro

.macro cmd1E
    .word 0x1E
.endmacro

.macro cmd1F,num0,num1
    .word 0x1F, num0, num1
.endmacro

.macro cmd20,num
    .word 0x20, num
.endmacro

.macro cmd21
    .word 0x21
.endmacro

.macro cmd22
    .word 0x22
.endmacro

.macro cmd23
    .word 0x23
.endmacro

.macro cmd24
    .word 0x24
.endmacro

.macro cmd25
    .word 0x25
.endmacro

.macro cmd26
    .word 0x26
.endmacro

.macro cmd27
    .word 0x27
.endmacro

.macro cmd28
    .word 0x28
.endmacro

.macro cmd29
    .word 0x29
.endmacro

.macro cmd2A
    .word 0x2A
.endmacro

.macro cmd2B
    .word 0x2B
.endmacro

.macro stopse,id
    .word 0x2C, id
.endmacro

.macro callfunction,func,count,num0,num1,num2,num3,num4,num5,num6,num7,num8,num9
    .word 0x2D, func, count
    .if count > 0
        .word num0
    .endif
    .if count > 1
        .word num1
    .endif
    .if count > 2
        .word num2
    .endif
    .if count > 3
        .word num3
    .endif
    .if count > 4
        .word num4
    .endif
    .if count > 5
        .word num5
    .endif
    .if count > 6
        .word num6
    .endif
    .if count > 7
        .word num7
    .endif
    .if count > 8
        .word num8
    .endif
    .if count > 9
        .word num9
    .endif
.endmacro

ANIM_TARGET_USER equ 3
ANIM_TARGET_DEFENDER equ 4
ANIM_TARGET_MISC equ 17
ANIM_TARGET_DEFENDER_SIDE equ 20

.macro addparticle,num0,num1,address
    .word 0x2E, num0, num1, address
.endmacro

.macro addparticle2,num0,num1,num2,address
    .word 0x2F, num0, num1, num2, address
.endmacro

.macro addsequentialparticle,num0,num1,num2,num3,num4,num5,num6,address
    .word 0x30, num0, num1, num2, num3, num4, num5, num6, address
.endmacro

.macro addparticlebasedonbattler,num0,num1,num2,num3,num4,address
    .word 0x31, num0, num1, num2, num3, num4, address
.endmacro

.macro waitparticle
    .word 0x32
.endmacro

.macro loadparticle,num0,num1
    .word 0x33, num0, num1
.endmacro

.macro cmd34
    .word 0x34
.endmacro

.macro unloadparticle,num
    .word 0x35, num
.endmacro

.macro cmd36,function,num0,num1,count,param0,param1,param2,param3,param4,param5,param6,param7
    .word 0x36, function, num0, num1, count
    .if count > 0
        .word param0
    .endif
    .if count > 1
        .word param1
    .endif
    .if count > 2
        .word param2
    .endif
    .if count > 3
        .word param3
    .endif
    .if count > 4
        .word param4
    .endif
    .if count > 5
        .word param5
    .endif
    .if count > 6
        .word param6
    .endif
    .if count > 7
        .word param7
    .endif
.endmacro

.macro cmd37,count,param0,param1,param2,param3,param4,param5,param6,param7
    .word 0x37, count
    .if count > 0
        .word param0
    .endif
    .if count > 1
        .word param1
    .endif
    .if count > 2
        .word param2
    .endif
    .if count > 3
        .word param3
    .endif
    .if count > 4
        .word param4
    .endif
    .if count > 5
        .word param5
    .endif
    .if count > 6
        .word param6
    .endif
    .if count > 7
        .word param7
    .endif
.endmacro

.macro initspriteresource
    .word 0x38
.endmacro

.macro loadspriteresource,num
    .word 0x39, num
.endmacro

.macro loadspritemaybe,num0,num1,num2,num3
    .word 0x3A, num0, num1, num2, num3
.endmacro

.macro unloadspriteresource
    .word 0x3B
.endmacro

.macro resetsprite,num
    .word 0x3C, num
.endmacro

.macro cmd3D
    .word 0x3D
.endmacro

.macro cmd3E,num0,num1
    .word 0x3E, num0, num1
.endmacro

.macro cmd3F
    .word 0x3F
.endmacro

.macro jumpifside,num,address1,address2
    .word 0x40
    .word num
    .word (address1 - .) / 4
    .word (address2 - .) / 4
.endmacro

.macro playcry,num,pan,volume
    .word 0x41, num, pan, volume
.endmacro

.macro waitcry,num
    .word 0x42, num
.endmacro

.macro cmd43
    .word 0x43
.endmacro

.macro transform,num
    .word 0x44, num
.endmacro

.macro copymonsprite,num
    .word 0x45, num
.endmacro

.macro jumpbasedonweather,address0,address1,address2,address3,address4
    .word 0x46
    .word (address0 - .) / 4
    .word (address1 - .) / 4
    .word (address2 - .) / 4
    .word (address3 - .) / 4
    .word (address4 - .) / 4
.endmacro

.macro jumpifcontest,address
    .word 0x47
    .word (address - .) / 4
.endmacro

.macro jumpifplayerattack,address
    .word 0x48
    .word (address - .) / 4
.endmacro

.macro initresources,num0,num1,num2,num3,num4,num5,num6,num7
    .word 0x49, num0, num1, num2, num3, num4, num5, num6, num7
.endmacro

.macro loadresources,num,file
    .word 0x4A, num, file
.endmacro

.macro loadpalette,num,file,pal
    .word 0x4B, num, file, pal
.endmacro

.macro loadcell,num,file
    .word 0x4C, num, file
.endmacro

.macro loadcellanm,num,file
    .word 0x4D, num, file
.endmacro

.macro addsomething,num0,num1,num2,num3,num4,num5,num6,num7,count,param0,param1,param2,param3,param4,param5,param6,param7
    .word 0x4E, num0, num1, num2, num3, num4, num5, num6, num7, count
    .if count > 0
        .word param0
    .endif
    .if count > 1
        .word param1
    .endif
    .if count > 2
        .word param2
    .endif
    .if count > 3
        .word param3
    .endif
    .if count > 4
        .word param4
    .endif
    .if count > 5
        .word param5
    .endif
    .if count > 6
        .word param6
    .endif
    .if count > 7
        .word param7
    .endif
.endmacro

.macro addsomething2,num0,num1,num2,num3,num4,num5,num6,num7
    .word 0x4F, num0, num1, num2, num3, num4, num5, num6, num7
.endmacro

.macro freeresources,num
    .word 0x50, num
.endmacro

.macro enablemonsprite,num,value
    .word 0x51, num, value
.endmacro

.macro cmd52,num0,num1,num2
    .word 0x52, num0, num1, num2
.endmacro

.macro cmd53,num
    .word 0x53, num
.endmacro

.macro cmd54
    .word 0x54
.endmacro

.macro cmd55,num
    .word 0x55, num
.endmacro

.macro cmd56,num0,num1,num2
    .word 0x56, num0, num1, num2
.endmacro

.macro cmd57,num
    .word 0x57, num
.endmacro

.macro changepermanentbg,bg,terrain
    .word 0x58, bg, terrain
.endmacro

// helpful macros

.macro loadparticlefromspa,num0,file
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspriteresource 3
    loadspritemaybe 4, 0, 0, 0
    loadspritemaybe 5, 0, 1, 1
    loadspritemaybe 6, 0, 2, 2
    loadspritemaybe 7, 0, 3, 3
    callfunction 78, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loadparticle num0, file
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
.endmacro

.macro shadeattackingmon,red,green,blue
    callfunction 34, 6, 2, 0, 1, red | green << 5 | blue << 10, 10, 10, "NaN", "NaN", "NaN", "NaN" // shades attacking mon rgb555 color
.endmacro

.macro shadetargetmon,red,green,blue
    callfunction 34, 5, 8, 1, 1, red | green << 5 | blue << 10, 12, "NaN", "NaN", "NaN", "NaN", "NaN" // shades target mon rgb555 color
.endmacro

.macro flashscreencolor,red,green,blue
    callfunction 33, 5, 0, 1, 12, 0, red | green << 5 | blue << 10, "NaN", "NaN", "NaN", "NaN", "NaN" // flash screen rgb555 color
.endmacro

.macro shaketargetmon,times,magnitude
    callfunction 36, 5, times, 0, 1, magnitude, 264, "NaN", "NaN", "NaN", "NaN", "NaN" // shake target mon magnitude pixels times times
.endmacro

.macro shaketargetside,times,magnitude
    callfunction 36, 5, times, 0, 1, magnitude, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, times, 0, 1, magnitude, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
.endmacro

.macro shakeallbutuser,times,magnitude
    callfunction 36, 5, times, 0, 1, magnitude, 288, "NaN", "NaN", "NaN", "NaN", "NaN"
.endmacro

.macro slideattackingmon,x,y
    callfunction 57, 4, 4, x, y, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // slide attacking mon x, y
.endmacro

.macro shakescreen
    callfunction 68, 5, 8, 8, 0, 10, 0, "NaN", "NaN", "NaN", "NaN", "NaN" // shake screen some number of times
.endmacro

// as used in rolling kick/agility
.macro rotateattackerincircle
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 0, 0, 1, 1
    loadspriteresource 4
    loadspritemaybe 2, 0, 4, 4
    cmd52 2, 0, 4
    wait 1
    callfunction 8, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    resetsprite 0
    resetsprite 1
    unloadspriteresource
    cmd53 0
    resetsprite 4
.endmacro

// moves the x axis of a placed particle towards the attacker such that the particle
// is emitted towards the attacker.  make sure to place particle using location 17
.macro moveaxistotarget,slot,emitter
    cmd37 6, slot, emitter, 6, 1, 0, 0, "NaN", "NaN"
.endmacro

// starts a transition from alpha0 to alpha1 of tint color rgb
.macro shadescreencolor,red,green,blue,alpha0,alpha1
    callfunction 33, 5, 0, 1, alpha0, alpha1, red | green << 5 | blue << 10, "NaN", "NaN", "NaN", "NaN", "NaN"
.endmacro

// https://github.com/pret/pokeplatinum/pull/787
// https://github.com/pret/pokeplatinum/pull/787/commits/df1574c0401986ae8e9cace1bebdd9a0255fc6de
// Credits to Fexty for decoding them

.equ BATTLE_ANIM_VAR_BG_MOVE_STEP_X  , 0 //< Step size for background movement in X direction (BATTLE_BG_SWITCH_FLAG_MOVE)
.equ BATTLE_ANIM_VAR_BG_MOVE_STEP_Y  , 1 //< Step size for background movement in Y direction (BATTLE_BG_SWITCH_FLAG_MOVE)
.equ BATTLE_ANIM_VAR_BG_MOVE_START_X , 2 //< Starting position for background movement on X axis (BATTLE_BG_SWITCH_FLAG_MOVE)
.equ BATTLE_ANIM_VAR_BG_MOVE_START_Y , 3 //< Starting position for background movement on Y axis (BATTLE_BG_SWITCH_FLAG_MOVE)
.equ BATTLE_ANIM_VAR_BG_FADE_TYPE    , 4 //< See BATTLE_BG_FADE_TO_*
.equ BATTLE_ANIM_VAR_BG_BLEND_TYPE   , 5 //< See BATTLE_BG_BLEND_*
.equ BATTLE_ANIM_VAR_BG_ANIM_MODE    , 6 //< See BATTLE_BG_ANIM_REVERSE_*
.equ BATTLE_ANIM_VAR_BG_SCREEN_MODE  , 7 //< See BATTLE_BG_SCREEN_REVERSE_*

.equ BATTLE_BG_FADE_TO_BLACK         , 0
.equ BATTLE_BG_FADE_TO_WHITE         , 1

.equ BATTLE_BG_BLEND_FULL_B_TO_A     , 0
.equ BATTLE_BG_BLEND_PARTIAL         , 1
.equ BATTLE_BG_BLEND_INVERSE_PARTIAL , 2

.equ BATTLE_BG_SWITCH_FLAGS_SHIFT    , 16

.expfunc BATTLE_BG_SWITCH_MODE(VAR)      , (((VAR) & 0x0000FFFF))
.expfunc BATTLE_BG_SWITCH_FLAGS(VAR)     , (((VAR) & 0xFFFF0000) >> BATTLE_BG_SWITCH_FLAGS_SHIFT)

.equ BATTLE_BG_SWITCH_FLAG_NONE      , (0x00 << BATTLE_BG_SWITCH_FLAGS_SHIFT)
.equ BATTLE_BG_SWITCH_FLAG_MOVE      , (0x02 << BATTLE_BG_SWITCH_FLAGS_SHIFT)
.equ BATTLE_BG_SWITCH_FLAG_STOP      , (0x04 << BATTLE_BG_SWITCH_FLAGS_SHIFT)
.equ BATTLE_BG_SWITCH_FLAG_CANCEL    , (0x08 << BATTLE_BG_SWITCH_FLAGS_SHIFT)
.equ BATTLE_BG_SWITCH_FLAG_UNK_10    , (0x10 << BATTLE_BG_SWITCH_FLAGS_SHIFT)
.equ BATTLE_BG_SWITCH_FLAG_UNK_20    , (0x20 << BATTLE_BG_SWITCH_FLAGS_SHIFT)
.equ BATTLE_BG_SWITCH_FLAG_UNK_40    , (0x40 << BATTLE_BG_SWITCH_FLAGS_SHIFT)

.equ BATTLE_BG_SWITCH_MODE_BLEND     , 0 //< Switch BG by blending between normal and effect BG
.equ BATTLE_BG_SWITCH_MODE_FADE      , 1 //< Switch BG by fading to black/white and then to effect BG
.equ BATTLE_BG_SWITCH_MODE_FLAGS     , 2 //< Don't switch BG, apply flags only
.equ BATTLE_BG_SWITCH_MODE_COUNT     , 3

.equ BATTLE_BG_SWITCH_STATE_NONE     , 0 //< No switch in progress
.equ BATTLE_BG_SWITCH_STATE_RUNNING  , 1 //< Switch in progress
.equ BATTLE_BG_SWITCH_STATE_PARTIAL  , 2 //< Faded to black/white. Note: Use only with BATTLE_BG_SWITCH_MODE_FADE

.equ BATTLE_BG_ID_UNUSED             , 0
.equ BATTLE_BG_ID_WINDOW             , 1
.equ BATTLE_BG_ID_BASE               , 2
.equ BATTLE_BG_ID_EFFECT             , 3

.equ BATTLE_BG_PRIORITY_WINDOW       , 0
.equ BATTLE_BG_PRIORITY_BASE         , 1
.equ BATTLE_BG_PRIORITY_EFFECT       , 3

.equ BATTLE_BG_PALETTE_EFFECT          , 9
.equ BATTLE_BG_PALETTE_MON_SPRITE      , 8
.equ BATTLE_BG_PALETTE_FLAG_EFFECT     , (1 << BATTLE_BG_PALETTE_EFFECT)
.equ BATTLE_BG_PALETTE_FLAG_MON_SPRITE , (1 << BATTLE_BG_PALETTE_MON_SPRITE)

.equ BATTLE_BG_ANIM_REVERSE_NEVER        , 0 //< Don't reverse BG anims
.equ BATTLE_BG_ANIM_REVERSE_ENEMY_ONLY   , 1 //< Reverse BG anims only for enemy attacking player
.equ BATTLE_BG_ANIM_REVERSE_DEFAULT      , 2 //< Reverse BG anims for enemy attacking player OR enemy attacking enemy

.equ BATTLE_BG_SCREEN_REVERSE_NEVER      , 0 //< Don't reverse BG screen
.equ BATTLE_BG_SCREEN_REVERSE_ENEMY_ONLY , 1 //< Reverse BG screen only for enemy attacking player
.equ BATTLE_BG_SCREEN_REVERSE_DEFAULT    , 2 //< Reverse BG screen for enemy attacking player OR enemy attacking enemy

.equ BATTLE_ANIM_HW_SPRITE_PRIORITY     , 100
.equ BATTLE_ANIM_HW_SPRITE_EXP_PRIORITY , 1

.equ BATTLE_ANIM_ATTACKER         , (1 << 1) //< Attacker
.equ BATTLE_ANIM_ATTACKER_PARTNER , (1 << 2) //< Attacker's partner
.equ BATTLE_ANIM_DEFENDER         , (1 << 3) //< Defender
.equ BATTLE_ANIM_DEFENDER_PARTNER , (1 << 4) //< Defender's partner
.equ BATTLE_ANIM_POKEMON_SPRITE_0 , (1 << 1) //< First Pokemon sprite
.equ BATTLE_ANIM_POKEMON_SPRITE_1 , (1 << 2) //< Second Pokemon sprite
.equ BATTLE_ANIM_POKEMON_SPRITE_2 , (1 << 3) //< Third Pokemon sprite
.equ BATTLE_ANIM_POKEMON_SPRITE_3 , (1 << 4) //< Fourth Pokemon sprite
.equ BATTLE_ANIM_NOT_ATTACKER     , (1 << 5) //< All battlers except attacker
.equ BATTLE_ANIM_ALL_BATTLERS     , (1 << 6) //< All battlers
.equ BATTLE_ANIM_ATTACKER_SIDE    , (BATTLE_ANIM_ATTACKER | BATTLE_ANIM_ATTACKER_PARTNER) //< Attacker and its partner
.equ BATTLE_ANIM_DEFENDER_SIDE    , (BATTLE_ANIM_DEFENDER | BATTLE_ANIM_DEFENDER_PARTNER) //< Defender and its partner
.equ BATTLE_ANIM_BOTH_SIDES       , (BATTLE_ANIM_ATTACKER_SIDE | BATTLE_ANIM_DEFENDER_SIDE) //< Both sides of the battle
.equ BATTLE_ANIM_BATTLER_SPRITES  , (1 << 8) //< Use battler sprites
.equ BATTLE_ANIM_POKEMON_SPRITES  , (1 << 9) //< Use Pokemon sprites
.equ BATTLE_ANIM_BACKGROUND       , (1 << 10) //< Use background
.equ BATTLE_ANIM_SPECIFIC_BATTLER , (1 << 11) //< Specific battler slot, do not use by itself

.equ BATTLE_ANIM_BATTLER_PLAYER_1 , (BATTLE_ANIM_SPECIFIC_BATTLER | BATTLE_ANIM_ATTACKER) //< Player's first battler
.equ BATTLE_ANIM_BATTLER_PLAYER_2 , (BATTLE_ANIM_SPECIFIC_BATTLER | BATTLE_ANIM_ATTACKER_PARTNER) //< Player's second battler
.equ BATTLE_ANIM_BATTLER_ENEMY_1  , (BATTLE_ANIM_SPECIFIC_BATTLER | BATTLE_ANIM_DEFENDER) //< Enemy's first battler
.equ BATTLE_ANIM_BATTLER_ENEMY_2  , (BATTLE_ANIM_SPECIFIC_BATTLER | BATTLE_ANIM_DEFENDER_PARTNER) //< Enemy's second battler

.equ BATTLE_ANIM_BATTLER_SPRITE_ATTACKER , (BATTLE_ANIM_ATTACKER | BATTLE_ANIM_BATTLER_SPRITES) //< Attacker's battler sprite
.equ BATTLE_ANIM_BATTLER_SPRITE_ATTACKER_PARTNER , (BATTLE_ANIM_ATTACKER_PARTNER | BATTLE_ANIM_BATTLER_SPRITES) //< Attacker's partner's battler sprite
.equ BATTLE_ANIM_BATTLER_SPRITE_DEFENDER , (BATTLE_ANIM_DEFENDER | BATTLE_ANIM_BATTLER_SPRITES) //< Defender's battler sprite
.equ BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER , (BATTLE_ANIM_DEFENDER_PARTNER | BATTLE_ANIM_BATTLER_SPRITES) //< Defender's partner's battler sprite

.expfunc BATTLE_ANIM_POKEMON_SPRITE(N) , ((1 << (N + 1)) | BATTLE_ANIM_POKEMON_SPRITES) //< Pokemon sprite N, where N is 0-3
.expfunc BATTLE_ANIM_BATTLER_SPRITE(N) , ((1 << (N + 1)) | BATTLE_ANIM_BATTLER_SPRITES) //< Battler sprite N, where N is 0-3

.equ BATTLE_ANIM_MON_SPRITE_0 , 0
.equ BATTLE_ANIM_MON_SPRITE_1 , 1
.equ BATTLE_ANIM_MON_SPRITE_2 , 2
.equ BATTLE_ANIM_MON_SPRITE_3 , 3
.equ BATTLE_ANIM_MON_SPRITE_4 , 4
.expfunc BATTLE_ANIM_MON_SPRITE_F(N) , (1 << (N))

.equ BATTLE_PARTICLE_PIXEL_FACTOR , 172 //< Arbitrary scaling factor to convert particle world coordinates to screen coordinates
.expfunc BATTLE_PARTICLE_WORLD_TO_SCREEN(X) , ((X) / BATTLE_PARTICLE_PIXEL_FACTOR)
.expfunc BATTLE_PARTICLE_SCREEN_TO_WORLD(X) , ((X) * BATTLE_PARTICLE_PIXEL_FACTOR)
.equ BATTLE_PARTICLE_VIEWPORT_TOP , 16512 //< Top of the viewport in world coordinates

.equ BATTLE_SOUND_PAN_LEFT   , -117
.equ BATTLE_SOUND_PAN_CENTER , 0
.equ BATTLE_SOUND_PAN_RIGHT  , 117

// Used specifically for AddPokemonSprite/RemovePokemonSprite and a few script funcs
.equ BATTLER_ROLE_ATTACKER         , 0
.equ BATTLER_ROLE_DEFENDER         , 1
.equ BATTLER_ROLE_ATTACKER_PARTNER , 2
.equ BATTLER_ROLE_DEFENDER_PARTNER , 3
.equ BATTLER_ROLE_PLAYER_1         , 4
.equ BATTLER_ROLE_ENEMY_1          , 5
.equ BATTLER_ROLE_PLAYER_2         , 6
.equ BATTLER_ROLE_ENEMY_2          , 7

// Default positions for battler sprites, lines up with BATTLER_TYPE_*
.equ BATTLER_POS_SOLO_PLAYER_X   , 64
.equ BATTLER_POS_SOLO_PLAYER_Y   , 112
.equ BATTLER_POS_SOLO_ENEMY_X    , 192
.equ BATTLER_POS_SOLO_ENEMY_Y    , 48
.equ BATTLER_POS_PLAYER_SLOT_1_X , 40
.equ BATTLER_POS_PLAYER_SLOT_1_Y , 112
.equ BATTLER_POS_ENEMY_SLOT_1_X  , 216
.equ BATTLER_POS_ENEMY_SLOT_1_Y  , 50
.equ BATTLER_POS_PLAYER_SLOT_2_X , 80
.equ BATTLER_POS_PLAYER_SLOT_2_Y , 120
.equ BATTLER_POS_ENEMY_SLOT_2_X  , 176
.equ BATTLER_POS_ENEMY_SLOT_2_Y  , 42

// Default positions for contest sprites
.equ CONTESTANT_POS_PLAYER_X , 216
.equ CONTESTANT_POS_PLAYER_Y , 112
.equ CONTESTANT_POS_ENEMY_X  , 80
.equ CONTESTANT_POS_ENEMY_Y  , 42

.equ CONTESTANT_TYPE_PLAYER , (BATTLER_TYPE_MAX + BATTLER_TYPE_SOLO_PLAYER)
.equ CONTESTANT_TYPE_ENEMY  , (BATTLER_TYPE_MAX + BATTLER_TYPE_SOLO_ENEMY)

.equ BASE_SCALE_XY , 100

// For use in scripts in place of DEG_TO_IDX because said macro can't be included
// in script files because the assembler doesn't understand the other code inside that file.
.expfunc BATTLE_ANIM_DEGREES(degrees) , (((degrees) * 0xFFFF) / 360)

// Colors commonly used in battle anim scripts
// Note: Can't use RGB() macro because the assembler can't properly process multi-arg macros
.equ BATTLE_COLOR_BLACK         , 0x0000 // RGB(0, 0, 0)
.equ BATTLE_COLOR_WHITE         , 0x7FFF // RGB(31, 31, 31)
.equ BATTLE_COLOR_RED           , 0x001F // RGB(31, 0, 0)
.equ BATTLE_COLOR_LIGHT_RED     , 0x5A9F // RGB(31, 20, 22)
.equ BATTLE_COLOR_DARK_RED1     , 0x044A // RGB(10, 2, 1)
.equ BATTLE_COLOR_DARK_RED2     , 0x084C // RGB(12, 2, 2)
.equ BATTLE_COLOR_YELLOW        , 0x031D // RGB(29, 24, 0)
.equ BATTLE_COLOR_LIGHT_YELLOW1 , 0x33FF // RGB(31, 31, 12)
.equ BATTLE_COLOR_LIGHT_YELLOW2 , 0x67FF // RGB(31, 31, 25)
.equ BATTLE_COLOR_DARK_YELLOW   , 0x10E8 // RGB(8, 7, 4)
.equ BATTLE_COLOR_LIME          , 0x03EB // RGB(11, 31, 0)
.equ BATTLE_COLOR_LIGHT_GREEN   , 0x2BF4 // RGB(20, 31, 10)
.equ BATTLE_COLOR_TEAL_GREEN    , 0xC30A // RGB(10, 24, 16)
.equ BATTLE_COLOR_PURPLE        , 0x7C14 // RGB(20, 0, 31)
.equ BATTLE_COLOR_DARK_PURPLE   , 0x2068 // RGB(8, 3, 8)
.equ BATTLE_COLOR_LIGHT_CYAN    , 0x7FD0 // RGB(16, 30, 31)
.equ BATTLE_COLOR_LIGHT_BLUE    , 0x7F77 // RGB(23, 27, 31)
.equ BATTLE_COLOR_DARK_BLUE     , 0x2820 // RGB(0, 1, 10)
.equ BATTLE_COLOR_LIGHT_ORANGE  , 0x3AFF // RGB(31, 23, 14)
.equ BATTLE_COLOR_GRAY          , 0x35AD // RGB(13, 13, 13)
.equ BATTLE_COLOR_DARK_GRAY     , 0x18C6 // RGB(6, 6, 6)

// Script function specific constants
.equ ROTATE_MON_MODE_DEFENDER              , 0
.equ ROTATE_MON_MODE_ATTACKER_CUSTOM_PIVOT , 1
.equ ROTATE_MON_MODE_DEFENDER_REVERSED     , 2

.equ FLAIL_MODE_ATTACKER , 0
.equ FLAIL_MODE_DEFENDER , 1

.equ FADE_BG_TYPE_BASE       , 0
.equ FADE_BG_TYPE_MON_SPRITE , 1
.equ FADE_BG_TYPE_EFFECT     , 2

.expfunc SCALE_F(frames)    , (((frames) & 0xFFFF) << 16)
.expfunc RESTORE_F(frames)  , ((frames) & 0xFFFF)
.expfunc HOLD_F(frames)     , (((frames) & 0xFFFF) << 16)
.expfunc CYCLES(cycles)     , ((cycles) & 0xFFFF)
.expfunc SKIP_F(frames)     , (((frames) & 0xFFFF) << 16)
.expfunc MAX_F(frames)      , ((frames) & 0xFFFF)

.expfunc SCALE_POKEMON_SPRITE_FRAMES(scaleFrames, restoreFrames) , (((scaleFrames & 0xFFFF) << 16) | (restoreFrames & 0xFFFF))
.expfunc SCALE_POKEMON_SPRITE_SCALE_FRAMES(frames) , ((frames) >> 16)
.expfunc SCALE_POKEMON_SPRITE_RESTORE_FRAMES(frames) , ((frames) & 0xFFFF)

.expfunc SCALE_BATTLER_SPRITE_FRAMES(scaleFrames, restoreFrames) , SCALE_POKEMON_SPRITE_FRAMES(scaleFrames, restoreFrames)
.expfunc SCALE_BATTLER_SPRITE_HOLD_CYCLES(delay, cycles) , (((delay & 0xFFFF) << 16) | (cycles & 0xFFFF))
.expfunc SCALE_BATTLER_SPRITE_HOLD(frames) , ((frames) >> 16)
.expfunc SCALE_BATTLER_SPRITE_CYCLES(frames) , ((frames) & 0xFFFF)

.expfunc SHAKE_AND_SCALE_ATTACKER_SCALE_PARAMS(start, end) , (((start & 0xFF) << 16) | (end & 0xFF))
.expfunc SHAKE_AND_SCALE_ATTACKER_START(scale) , ((scale) >> 16)
.expfunc SHAKE_AND_SCALE_ATTACKER_END(scale) , ((scale) & 0xFF)

.equ EMITTER_ANIMATION_MODE_ATK_TO_DEF , 0 //< Animation from attacker to defender
.equ EMITTER_ANIMATION_MODE_DEF_TO_ATK , 1 //< Animation from defender to attacker
.equ EMITTER_ANIMATION_DEFAULT_FRAMES  , 0xFF
.expfunc EMITTER_ANIMATION_PARAMS(skipFrames, maxFrames) , (((skipFrames & 0xFFFF) << 16) | (maxFrames & 0xFFFF))
.expfunc EMITTER_ANIMATION_SKIP_FRAMES(params) , ((params & 0xFFFF0000) >> 16)
.expfunc EMITTER_ANIMATION_MAX_FRAMES(params) , ((params) & 0x0000FFFF)

.equ SHAKE_BG_TARGET_EFFECT ,0 //< Shake the effect background
.equ SHAKE_BG_TARGET_BASE   ,1 //< Shake the base background

.equ EMITTER_REVOLUTION_MODE_ATTACKER ,0
.equ EMITTER_REVOLUTION_MODE_DEFENDER ,1

.equ EMITTER_ANIMATION_FROM_TOP ,0 //< Animation from the top of the screen
.equ EMITTER_ANIMATION_TO_TOP   ,1 //< Animation to the top of the screen

.equ BATTLE_ANIM_DEFAULT_PRIORITY ,0xFF //< Default priority for battle anim sprites

.equ POKEMON_SPRITE_PRIORITY_MODE_DEFAULT   ,0
.equ POKEMON_SPRITE_PRIORITY_MODE_DARK_VOID ,0xFF

.equ MOVE_BATTLER_OFF_SCREEN ,0
.equ MOVE_BATTLER_ON_SCREEN  ,1

.equ STAT_CHANGE_MODE_ATTACKER ,0
.equ STAT_CHANGE_MODE_DEFENDER ,1


.macro Func_Submission, numRevs, framesPerRev, battler
    callfunction 10, 3, numRevs, framesPerRev, battler, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
.endmacro

.macro Func_HideBattler, target, hide
    callfunction 40, 2, target, hide, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
.endmacro

.macro Func_ScaleBattlerSprite, target, startX, endX, startY, endY, reference, cycles, frames
    callfunction 42, 8, target, startX, endX, startY, endY, reference, cycles, frames, "NaN", "NaN"
.endmacro

.macro Func_MoveBattler, target, dx, dy, frames
    callfunction 57, 4, frames, dx, dy, target, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
.endmacro

.macro Func_RevolveBattler, target, revs, framesPerRev
    callfunction 60, 3, target, revs, framesPerRev, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
.endmacro

.macro Func_MoveBattlerOffScreen, target, frames
    callfunction 61, 2, target, frames, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
.endmacro

.macro Func_MoveBattlerToDefaultPos, target
    callfunction 62, 1, target, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
.endmacro

.macro Func_MoveBattlerOnOrOffScreen, target, mode, frames, a3, a4
    callfunction 77, 5, target, mode, frames, a3, a4, "NaN", "NaN", "NaN", "NaN", "NaN"
.endmacro