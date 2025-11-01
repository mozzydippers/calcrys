.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"
.include "armips/include/constants.s"

.create "build/move/move_anim/0_633", 0

// Tectonic Rage

a010_633:
    // Z-Move name
    loadparticlefromspa 1, SPA_TECTONIC_RAGE
    addparticle 1, 0, 0
    wait 700
    unloadparticle 1

    // Dig
    loadparticlefromspa 0, 122
    loadparticlefromspa 1, 32
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    repeatse 1976, -117, 2, 2
    wait 10
    addparticle 0, 1, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    repeatse 1976, -117, 2, 2
    wait 10
    addparticle 0, 2, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    repeatse 1976, -117, 2, 3
    wait 45
    waitparticle
    unloadparticle 0
    unloadparticle 1

    // Fissure
    loadparticlefromspa 0, 121
    cmd43
    cmd0C 7, 1
    cmd0C 4, 0
    changebg 53, 0x800001
    waitforchangebg
    playsepan 1975, 0
    callfunction 36, 5, 4, 0, 1, 30, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 8, 0, 0, 31, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    waitstate
    cmd43
    cmd0C 7, 1
    cmd0C 4, 0
    resetbg 53, 0x1000001
    waitforchangebg
    end


.close
