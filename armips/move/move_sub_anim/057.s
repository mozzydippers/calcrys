.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"
.include "armips/include/constants.s"

.create "build/move/move_sub_anim/1_057", 0

// Z Dance animation

a061_055:
    // change background
    cmd0C 0, -32
    cmd0C 1, 0
    changebg 36, 0x20001
    waitforchangebg

    loadparticlefromspa 1, SPA_Z_DANCE
    loadparticlefromspa 2, 489
    waitparticle

    playsepanmod 1939, -117, 0x75, 4, 2

    // Yellow energy stripes
    addparticle 1, 1, 3
    waitparticle

    // Exploding thingy
    addparticle 2, 10, 3
    //addparticle 2, 12, 3

    // Focus Energy animation
    loadparticlefromspa 0, 143
    addparticle 0, 1, 3
    addparticle 0, 0, 3
    callfunction 36, 5, 1, 0, 1, 4, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 2, 32767, 10, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 1965, -117
    waitstate
    waitparticle
    unloadparticle 0

    // Z Move Symbol
    addparticle 1, 2, 3

    wait 120

    cmd0C 0, -64
    cmd0C 1, 0
    resetbg 36, 0x40001
    waitstate

    waitparticle
    unloadparticle 1
    waitforchangebg
    end

.close
