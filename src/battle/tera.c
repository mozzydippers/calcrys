#include "debug.h"

#include "constants/pokemon.h"

#include "battle.h"

#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/types.h"

u32 LONG_CALL GetTerastallizedState(u32 species, u32 form)
{
    if (species == SPECIES_OGERPON) {
        switch (form) {
        case 0:
        case 4:
            return 4;
        case 1:
        case 5:
            return 5;
        case 2:
        case 6:
            return 6;
        case 3:
        case 7:
            return 7;
        }
    }
    if (species == SPECIES_TERAPAGOS && form == 1) {
        return 2;
    }
    return form;
}

u32 LONG_CALL GetOgerponTerastallizedFormPic(u32 type)
{
start:
    switch (type) {
    case TYPE_GRASS:
        return 4;
    case TYPE_WATER:
        return 5;
    case TYPE_FIRE:
        return 6;
    case TYPE_ROCK:
        return 7;
    default:
        goto start;
    }
}
