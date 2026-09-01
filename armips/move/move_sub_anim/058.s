.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/constants.s"

.create "build/move/move_sub_anim/1_058", 0

// Aura flared to life animation

a061_058:
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

    wait 120

    waitparticle
    unloadparticle 1
    end

.close
