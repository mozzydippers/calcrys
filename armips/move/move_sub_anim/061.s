.nds
.thumb
.include "armips/include/animscriptcmd.s"
.include "armips/include/constants.s"

// Terastallization

.create "build/move/move_sub_anim/1_061", 0

.equ BATTLER_CATEGORY_MSG_TEMP, (0xFF)

TeraAnimScript:
    //Func_SetBgGrayscale 1
    //loadparticlefromspa 0, 489
    loadparticlefromspa 1, 566
    //loadparticlefromspa 2, 489

    waitparticle

    playse 2380

    addparticle 1, 1, 3
    wait 60

    addparticle 1, 0, 3

    wait 30

    // Explosion particles
    //addparticle 2, 10, 3
    //addparticle 2, 12, 3

    transform 0
    waitstate
    SetBattlerTeraState BATTLER_CATEGORY_MSG_TEMP, TRUE
    wait 15

    playcry 0, -117, 127

    // Shake client
    shaketargetmon 4, 7
    waitstate

    waitcry 0
    waitparticle

    unloadparticle 1
    //unloadparticle 2
    end

.close
