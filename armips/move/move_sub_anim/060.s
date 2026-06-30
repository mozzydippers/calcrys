.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"
.include "armips/include/constants.s"

.create "build/move/move_sub_anim/1_060", 0

// {0} nullified the stat changes and Abilities affecting your side!

a061_060:
    // Taken from Heal Bell
    loadparticlefromspa 0, 233

    playsepan 2041, -117

    addparticle 0, 2, 19
    loop 1
    callfunction 33, 5, 0, 0, 0, 8, 32720, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 1, 32767, 8, 8, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 4, 0, 1, 32767, 8, 8, "NaN", "NaN", "NaN", "NaN"
    wait 8
    callfunction 33, 5, 0, 0, 8, 0, 32720, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    callfunction 33, 5, 0, 0, 0, 8, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 1, 32720, 8, 8, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 4, 0, 1, 32720, 8, 8, "NaN", "NaN", "NaN", "NaN"
    wait 8
    callfunction 33, 5, 0, 0, 8, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    doloop
    callfunction 33, 5, 0, 0, 0, 8, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 1, 32767, 8, 8, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 4, 0, 1, 32767, 8, 8, "NaN", "NaN", "NaN", "NaN"
    wait 8
    callfunction 33, 5, 0, 0, 8, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    waitparticle
    unloadparticle 0
    end

.close
