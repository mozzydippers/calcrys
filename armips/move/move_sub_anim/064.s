.nds
.thumb
.include "armips/include/animscriptcmd.s"
.include "armips/include/constants.s"

// Dynamax wear off

.create "build/move/move_sub_anim/1_064", 0

.equ BATTLER_CATEGORY_MSG_TEMP, (0xFF)

DynamaxAnimScript:
    loadparticlefromspa 2, 489

    waitparticle

    // Explosion particles
    addparticle 2, 10, 3
    addparticle 2, 12, 3

    //SetBattlerTeraState BATTLER_CATEGORY_MSG_TEMP, FALSE
    wait 60

    unloadparticle 2
    end

.close
