#include "../include/npc_trade.h"

#include "../include/constants/file.h"
#include "../include/overlay.h"
#include "../include/pokemon.h"
#include "../include/types.h"

void LONG_CALL _CreateTradeMon(struct PartyPokemon *mon, struct NPCTrade *trade_dat, u32 level, u32 tradeno, u32 mapno, u32 met_level_strat, u32 heapId)
{
    u32 ovyId, offset;
    void (*internalFunc)(struct PartyPokemon *, struct NPCTrade *, u32, u32, u32, u32, u32);

    String *name;
    u8 nickname_flag;
    u32 mapsec;
    int heapId_2;
    // for custom trades
    int ability = -1;
    int nature = -1;

    // for custom trades
    if (tradeno == NPC_TRADE_ROCKY_ONIX)
    {
        trade_dat->give_species = SPECIES_MAROWAK_ALOLAN;

        trade_dat->heldItem = ITEM_RARE_BONE;

        trade_dat->ask_species = SPECIES_HOPPIP;
    }

    if (tradeno == NPC_TRADE_MUSCLE_MACHOP)
    {
        trade_dat->give_species = SPECIES_HONEDGE;

        trade_dat->ask_species = SPECIES_TAUROS;

    }

    if (tradeno == NPC_TRADE_BILLY_VOLTORB)
    {
        trade_dat->give_species = SPECIES_ROTOM;

        // trade_dat->heldItem = ITEM_RARE_BONE;

        // ability = ABILITY_ROCK_HEAD;
    }

    if (tradeno == NPC_TRADE_DORIS_DODRIO)
    {
        trade_dat->give_species = SPECIES_MAROWAK_ALOLAN;

        trade_dat->heldItem = ITEM_RARE_BONE;

        // ability = ABILITY_ROCK_HEAD;
    }

    // end of custom trades

    ovyId = OVERLAY_CREATETRADEMON;
    offset = 0x023C0400 | 1;

    HandleLoadOverlay(ovyId, 2);
    internalFunc = (void (*)(struct PartyPokemon *, struct NPCTrade *, u32, u32, u32, u32, u32))offset;
    internalFunc(mon, trade_dat, level, tradeno, mapno, met_level_strat, heapId);
    UnloadOverlayByID(ovyId);
}
