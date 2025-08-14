.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_625", 0

a010_625:
    cmd43
    cmd0C 7, 1
    changebg 0, 0x800001
    waitforchangebg
    loadparticlefromspa 1, 543
    loadparticlefromspa 0, 500
    waitparticle

    addparticle 1, 2, 0

// slide mon
    playsepan 1925, -117
    slideattackingmon -16, 8
    waitstate
    wait 15
    waitparticle
    playsepan 1847, 117
    slideattackingmon 32, -16
    waitstate

// hit + clouds
    playsepanmod 1993, -117, 117, 4, 2
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    shaketargetmon 4, 7 // 4 times magnitude 7
    slideattackingmon -16, 8
    waitstate

    unloadparticle 0
    waitstate
    
    cmd43
    cmd0C 7, 1
    resetbg 0, 0x1000001
    wait 10
    waitstate
    end
    

.close
