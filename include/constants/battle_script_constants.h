#ifndef CONSTANTS_BATTLE_SCRIPT_CONSTANTS_H
#define CONSTANTS_BATTLE_SCRIPT_CONSTANTS_H

#define MOVE_SEQUENCE_NO (22)


// LheaRachel's sub sequence defines
#define SUB_SEQ_START_BATTLE                    (  0)
#define SUB_SEQ_TRY_MOVE                        (  1)
#define SUB_SEQ_HP_CHANGE                       (  2)
#define SUB_SEQ_ESCAPE                          (  3)
#define SUB_SEQ_BATTLE_WON                      (  4)
#define SUB_SEQ_BATTLE_LOST                     (  5)
#define SUB_SEQ_FAINT                           (  6)
#define SUB_SEQ_MOVE_FAIL                       (  7)
#define SUB_SEQ_ESCAPE_FAIL                     (  8)
#define SUB_SEQ_SWITCH_POKEMON                  (  9)
#define SUB_SEQ_PARTY_LIST                      ( 10)
#define SUB_SEQ_THROW_POKEBALL                  ( 11)
#define SUB_SEQ_BOOST_STATS                     ( 12)
#define SUB_SEQ_VANISH_ON_CHARGE_TURN           ( 13)
#define SUB_SEQ_TRY_FLINCH                      ( 14)
#define SUB_SEQ_MOVE_FAIL_FLINCHED              ( 15)
#define SUB_SEQ_CRITICAL_HIT                    ( 16)
#define SUB_SEQ_MULTI_HIT                       ( 17)
#define SUB_SEQ_APPLY_SLEEP                     ( 18)
#define SUB_SEQ_WAKE_UP                         ( 19)
#define SUB_SEQ_SLEEPING                        ( 20)
#define SUB_SEQ_MOVE_SUCCESS_MESSAGE            ( 21)
#define SUB_SEQ_APPLY_POISON                    ( 22)
#define SUB_SEQ_POISON_DAMAGE                   ( 23)
#define SUB_SEQ_DRAIN_HALF                      ( 24)
#define SUB_SEQ_APPLY_BURN                      ( 25)
#define SUB_SEQ_BURN_DAMAGE                     ( 26)
#define SUB_SEQ_APPLY_FREEZE                    ( 27)
#define SUB_SEQ_FROZEN                          ( 28)
#define SUB_SEQ_THAW_OUT                        ( 29)
#define SUB_SEQ_THAW_OUT_FROM_MOVE              ( 30)
#define SUB_SEQ_APPLY_PARALYSIS                 ( 31)
#define SUB_SEQ_FULLY_PARALYZED                 ( 32)
#define SUB_SEQ_DREAM_EATER                     ( 33)
#define SUB_SEQ_CLEAR_ALL_BOOSTS                ( 34)
#define SUB_SEQ_START_BIDE                      ( 35)
#define SUB_SEQ_END_BIDE                        ( 36)
#define SUB_SEQ_APPLY_CONFUSION                 ( 37)
#define SUB_SEQ_CONFUSED                        ( 38)
#define SUB_SEQ_CONFUSED_SELF_HIT               ( 39)
#define SUB_SEQ_CONFUSED_NO_MORE                ( 40)
#define SUB_SEQ_TRAINER_MESSAGE                 ( 41)
#define SUB_SEQ_NO_PP_LEFT                      ( 42)
#define SUB_SEQ_STRUGGLE                        ( 43)
#define SUB_SEQ_THRASHING                       ( 44)
#define SUB_SEQ_CONVERSION                      ( 45)
#define SUB_SEQ_RECOVER_HALF_HP                 ( 46)
#define SUB_SEQ_BADLY_POISON                    ( 47)
#define SUB_SEQ_PAY_DAY                         ( 48)
#define SUB_SEQ_LIGHT_SCREEN                    ( 49)
#define SUB_SEQ_WEAR_OFF                        ( 50)
#define SUB_SEQ_THRASH_END                      ( 51)
#define SUB_SEQ_REFLECT                         ( 52)
#define SUB_SEQ_SCREENS_MESSAGE                 ( 53)
#define SUB_SEQ_APPLY_MIST                      ( 54)
#define SUB_SEQ_REST                            ( 55)
#define SUB_SEQ_UPROAR                          ( 56)
#define SUB_SEQ_SHOW_MESSAGE                    ( 57)
#define SUB_SEQ_CLAMP_START                     ( 58)
#define SUB_SEQ_CLAMP_DAMAGE                    ( 59)
#define SUB_SEQ_CLAMP_END                       ( 60)
#define SUB_SEQ_CRASH_ON_MISS                   ( 61)
#define SUB_SEQ_FOCUS_ENERGY                    ( 62)
#define SUB_SEQ_RECOIL_1_4                      ( 63)
#define SUB_SEQ_RECHARGE_MOVE                   ( 64)
#define SUB_SEQ_RECHARGE_TURN                   ( 65)
#define SUB_SEQ_RAGE_SET                        ( 66)
#define SUB_SEQ_MIMIC                           ( 67)
#define SUB_SEQ_APPLY_LEECH_SEED                ( 68)
#define SUB_SEQ_LEECH_SEED_DAMAGE               ( 69)
#define SUB_SEQ_APPLY_DISABLE                   ( 70)
#define SUB_SEQ_MOVE_IS_DISABLED                ( 71)
#define SUB_SEQ_DISABLE_END                     ( 72)
#define SUB_SEQ_APPLY_ENCORE                    ( 73)
#define SUB_SEQ_ENCORE_END                      ( 74)
#define SUB_SEQ_BUT_IT_FAILED                   ( 75)
#define SUB_SEQ_MOVE_EFFECT                     ( 76)
#define SUB_SEQ_PAIN_SPLIT                      ( 77)
#define SUB_SEQ_CONVERSION_2                    ( 78)
#define SUB_SEQ_LOCKON                          ( 79)
#define SUB_SEQ_SKETCH                          ( 80)
#define SUB_SEQ_FEINT                           ( 81)
#define SUB_SEQ_DESTINY_BOND                    ( 82)
#define SUB_SEQ_DESTINY_BOND_FAINT_FOE          ( 83)
#define SUB_SEQ_SPITE                           ( 84)
#define SUB_SEQ_THIEF                           ( 85)
#define SUB_SEQ_MEAN_LOOK                       ( 86)
#define SUB_SEQ_PROTECT                         ( 87)
#define SUB_SEQ_HEAL_BELL                       ( 88)
#define SUB_SEQ_TRY_SUBSTITUTE                  ( 89)
#define SUB_SEQ_HIT_SUBSTITUTE                  ( 90)
#define SUB_SEQ_FORCE_OUT                       ( 91)
#define SUB_SEQ_TRANSFORM                       ( 92)
#define SUB_SEQ_APPLY_NIGHTMARE                 ( 93)
#define SUB_SEQ_NIGHTMARE_DAMAGE                ( 94)
#define SUB_SEQ_EVA_PLUS_ONE                    ( 95)
#define SUB_SEQ_CURSE_BOOST                     ( 96)
#define SUB_SEQ_CURSE_GHOST                     ( 97)
#define SUB_SEQ_CURSE_DAMAGE                    ( 98)
#define SUB_SEQ_HAZARDS_CHECK                   ( 99)
#define SUB_SEQ_FORESIGHT                       (100)
#define SUB_SEQ_START_PERISH_SONG               (101)
#define SUB_SEQ_COUNT_PERISH_SONG               (102)
#define SUB_SEQ_WEATHER_MESSAGE                 (103)
#define SUB_SEQ_WEATHER_EOT_EFFECT              (104)
#define SUB_SEQ_SWAGGER                         (105)
#define SUB_SEQ_APPLY_ATTRACT                   (106)
#define SUB_SEQ_INFATUATED                      (107)
#define SUB_SEQ_IMMOBILIZED_BY_LOVE             (108)
#define SUB_SEQ_APPLY_SAFEGUARD                 (109)
#define SUB_SEQ_END_SAFEGUARD                   (110)
#define SUB_SEQ_RECOVER_HP                      (111)
#define SUB_SEQ_PRESENT                         (112)
#define SUB_SEQ_MAGNITUDE                       (113)
#define SUB_SEQ_BATON_PASS                      (114)
#define SUB_SEQ_RAPID_SPIN                      (115)
#define SUB_SEQ_BREAK_CLAMP                     (116)
#define SUB_SEQ_BLOW_AWAY_HAZARDS_MESSAGE       (117)
#define SUB_SEQ_SYNCHRONIZE                     (118)
#define SUB_SEQ_OMNIBOOST                       (119)
#define SUB_SEQ_BELLY_DRUM                      (120)
#define SUB_SEQ_FUTURE_SIGHT_DAMAGE             (121)
#define SUB_SEQ_TELEPORT                        (122)
#define SUB_SEQ_FUTURE_SIGHT_ATTACK_MESSAGE     (123)
#define SUB_SEQ_STOCKPILE                       (124)
#define SUB_SEQ_SWALLOW                         (125)
#define SUB_SEQ_PRINT_MESSAGE                   (126)
#define SUB_SEQ_APPLY_TORMENT                   (127)
#define SUB_SEQ_FLATTER                         (128)
#define SUB_SEQ_MEMENTO                         (129)
#define SUB_SEQ_HEAL_PARALYSIS                  (130)
#define SUB_SEQ_CHARGE                          (131)
#define SUB_SEQ_APPLY_TAUNT                     (132)
#define SUB_SEQ_MOVE_FAIL_TAUNTED               (133)
#define SUB_SEQ_TRICK                           (134)
#define SUB_SEQ_ROLE_PLAY                       (135)
#define SUB_SEQ_WISH_HEAL                       (136)
#define SUB_SEQ_INGRAIN_HEAL                    (137)
#define SUB_SEQ_USER_ATK_AND_DEF_DOWN_HIT       (138)
#define SUB_SEQ_MAGIC_COAT                      (139)
#define SUB_SEQ_BREAK_SCREENS                   (140)
#define SUB_SEQ_YAWN                            (141)
#define SUB_SEQ_KNOCK_OFF                       (142)
#define SUB_SEQ_SKILL_SWAP                      (143)
#define SUB_SEQ_MOVE_IS_IMPRISONED              (144)
#define SUB_SEQ_REFRESH                         (145)
#define SUB_SEQ_SNATCH                          (146)
#define SUB_SEQ_RECOIL_1_3                      (147)
#define SUB_SEQ_TICKLE                          (148)
#define SUB_SEQ_COSMIC_POWER                    (149)
#define SUB_SEQ_BULK_UP                         (150)
#define SUB_SEQ_CALM_MIND                       (151)
#define SUB_SEQ_DRAGON_DANCE                    (152)
#define SUB_SEQ_PURSUIT                         (153)
#define SUB_SEQ_ROOST                           (154)
#define SUB_SEQ_FORCE_WAKE_UP                   (155)
#define SUB_SEQ_APPLY_GRAVITY                   (156)
#define SUB_SEQ_MOVE_FAIL_GRAVITY               (157)
#define SUB_SEQ_MIRACLE_EYE                     (158)
#define SUB_SEQ_HEALING_WISH                    (159)
#define SUB_SEQ_APPLY_TAILWIND                  (160)
#define SUB_SEQ_USER_DEF_AND_SP_DEF_DOWN_HIT    (161)
#define SUB_SEQ_POWER_TRICK                     (162)
#define SUB_SEQ_GASTRO_ACID                     (163)
#define SUB_SEQ_APPLY_LUCKY_CHANT               (164)
#define SUB_SEQ_POWER_SWAP                      (165)
#define SUB_SEQ_GUARD_SWAP                      (166)
#define SUB_SEQ_WORRY_SEED                      (167)
#define SUB_SEQ_HEART_SWAP                      (168)
#define SUB_SEQ_AQUA_RING_HEAL                  (169)
#define SUB_SEQ_FLARE_BLITZ                     (170)
#define SUB_SEQ_DEFOG                           (171)
#define SUB_SEQ_DEFOG_MESSAGE                   (172)
#define SUB_SEQ_APPLY_HEAL_BLOCK                (173)
#define SUB_SEQ_MOVE_FAILED_HEAL_BLOCK          (174)
#define SUB_SEQ_PIVOT_ATTACK                    (175)
#define SUB_SEQ_MOVE_FAIL_MISSED                (176)
#define SUB_SEQ_MOLD_BREAKER                    (177)
#define SUB_SEQ_ABILITY_HP_RESTORE              (178)
#define SUB_SEQ_FLASH_FIRE                      (179)
#define SUB_SEQ_LIGHTNING_ROD                   (180)
#define SUB_SEQ_SOUNDPROOF                      (181)
#define SUB_SEQ_MOTOR_DRIVE                     (182)
#define SUB_SEQ_DRIZZLE                         (183)
#define SUB_SEQ_SAND_STREAM                     (184)
#define SUB_SEQ_DROUGHT                         (185)
#define SUB_SEQ_INTIMIDATE                      (186)
#define SUB_SEQ_TRACE                           (187)
#define SUB_SEQ_COLOR_CHANGE                    (188)
#define SUB_SEQ_ROUGH_SKIN                      (189)
#define SUB_SEQ_SHED_SKIN                       (190)
#define SUB_SEQ_LOAFING                         (191)
#define SUB_SEQ_ABILITY_HP_GRADUAL              (192)
#define SUB_SEQ_HANDLE_AFTERMATH                (193)
#define SUB_SEQ_HANDLE_ANTICIPATION             (194)
#define SUB_SEQ_HANDLE_FOREWARN                 (195)
#define SUB_SEQ_HANDLE_SLOW_START               (196)
#define SUB_SEQ_HANDLE_SLOW_START_END           (197)
#define SUB_SEQ_ITEM_HP_RESTORE                 (198)
#define SUB_SEQ_ITEM_RECOVER_PRZ                (199)
#define SUB_SEQ_ITEM_RECOVER_SLP                (200)
#define SUB_SEQ_ITEM_RECOVER_PSN                (201)
#define SUB_SEQ_ITEM_RECOVER_BRN                (202)
#define SUB_SEQ_ITEM_RECOVER_FRZ                (203)
#define SUB_SEQ_ITEM_PP_RESTORE                 (204)
#define SUB_SEQ_ITEM_RECOVER_CNF                (205)
#define SUB_SEQ_ITEM_RECOVER_ALL                (206)
#define SUB_SEQ_ITEM_HP_RESTORE_CNF             (207)
#define SUB_SEQ_ITEM_STAT_BOOST                 (208)
#define SUB_SEQ_ITEM_RAISE_CRIT                 (209)
#define SUB_SEQ_ITEM_STAT_BOOST_2               (210)
#define SUB_SEQ_ITEM_RECOVER_STAT_DROP          (211)
#define SUB_SEQ_ITEM_RECOVER_INF                (212)
#define SUB_SEQ_ITEM_HP_GRADUAL                 (213) // used for shell bell
#define SUB_SEQ_ITEM_HP_LOSS                    (214) // used for life orb
#define SUB_SEQ_ITEM_TAKE_DAMAGE                (215)
#define SUB_SEQ_ITEM_GIVE_STICKY_BARB           (216)
#define SUB_SEQ_ITEM_POWER_HERB                 (217)
#define SUB_SEQ_EMBARGO                         (218)
#define SUB_SEQ_PLUCK                           (219)
#define SUB_SEQ_FLING                           (220)
#define SUB_SEQ_ABILITY_RECOVER_CND             (221)
#define SUB_SEQ_ITEM_ESCAPE                     (222)
#define SUB_SEQ_BATTLE_ONLY_ITEM                (223)
#define SUB_SEQ_224                             (224) // seems to just update the hp bar if hp recovered is nonzero
#define SUB_SEQ_225                             (225) // null subseq
#define SUB_SEQ_VOLT_TACKLE                     (226)
#define SUB_SEQ_SAFARI_THROW_BAIT               (227)
#define SUB_SEQ_SAFARI_THROW_MUD                (228)
#define SUB_SEQ_SAFARI_WATCHING_CAREFULLY       (229)
#define SUB_SEQ_ENEMY_ESCAPE                    (230)
#define SUB_SEQ_REPLACE_FAINTED                 (231)
#define SUB_SEQ_FOCUS_PUNCH_START               (232)
#define SUB_SEQ_TAILWIND_END                    (233)
#define SUB_SEQ_RAIN_END                        (234)
#define SUB_SEQ_SANDSTORM_END                   (235)
#define SUB_SEQ_SUN_END                         (236)
#define SUB_SEQ_HAIL_END                        (237)
#define SUB_SEQ_GRAVITY_END                     (238)
#define SUB_SEQ_CANNOT_HEAL                     (239)
#define SUB_SEQ_MAKING_AN_UPROAR                (240)
#define SUB_SEQ_UPROAR_END                      (241)
#define SUB_SEQ_MAGNET_RISE_END                 (242)
#define SUB_SEQ_HEAL_BLOCK_END                  (243)
#define SUB_SEQ_EMBARGO_END                     (244)
#define SUB_SEQ_RAGE_IS_BUILDING                (245)
#define SUB_SEQ_RECOIL_1_2                      (246)
#define SUB_SEQ_BURN_OR_FLINCH                  (247)
#define SUB_SEQ_FREEZE_OR_FLINCH                (248)
#define SUB_SEQ_PARA_OR_FLINCH                  (249)
#define SUB_SEQ_LUCKY_CHANT_END                 (250)
#define SUB_SEQ_TRICK_ROOM_END                  (251)
#define SUB_SEQ_SNOW_WARNING                    (252)
#define SUB_SEQ_FRISK                           (253)
#define SUB_SEQ_DISOBEY_WHILE_ASLEEP            (254)
#define SUB_SEQ_DISOBEY                         (255)
#define SUB_SEQ_DISOBEY_ATTACK                  (256)
#define SUB_SEQ_DISOBEY_NAP                     (257)
#define SUB_SEQ_DISOBEY_SELF_HIT                (258)
#define SUB_SEQ_259                             (259) // clear status2 0x1000 and set 0x200 server status
#define SUB_SEQ_CHATTER                         (260)
#define SUB_SEQ_LUNAR_DANCE                     (261)
#define SUB_SEQ_FORM_CHANGE                     (262) // not just used for transform
#define SUB_SEQ_BAD_DREAMS                      (263)
#define SUB_SEQ_TYPE_RESIST_BERRIES             (264)
#define SUB_SEQ_ITEM_ACC_UP_ONCE                (265)
#define SUB_SEQ_ITEM_DAMAGE_BACK                (266)
#define SUB_SEQ_BAG_HP_RESTORE                  (267)
#define SUB_SEQ_BAG_STATUS_HEAL                 (268)
#define SUB_SEQ_BAG_STAT_BOOST                  (269)
#define SUB_SEQ_BAG_GUARD_SPEC                  (270)
#define SUB_SEQ_OVERWORLD_RAIN                  (271)
#define SUB_SEQ_OVERWORLD_HAIL                  (272)
#define SUB_SEQ_OVERWORLD_SANDSTORM             (273) // keep consistent w above
#define SUB_SEQ_OVERWORLD_FOG                   (274)
#define SUB_SEQ_SAFARI_THROW_BALL               (275)
#define SUB_SEQ_GET_EXP                         (276)
#define SUB_SEQ_BOOM                            (277)
#define SUB_SEQ_CHECK_QUICK_CLAW                (278)
#define SUB_SEQ_PUSH_ATTACKER_DEFENDER          (279)
#define SUB_SEQ_POP_ATTACKER_DEFENDER           (280)
#define SUB_SEQ_NO_TARGET                       (281)
#define SUB_SEQ_BIDE_END_NO_TARGET              (282)
#define SUB_SEQ_LINK_WIN_LOSE                   (283)
#define SUB_SEQ_ESCAPE_SUCCESS                  (284)
#define SUB_SEQ_PRESSURE                        (285)
#define SUB_SEQ_ENEMY_ESCAPE_FAIL               (286)
#define SUB_SEQ_VANISH_OFF                      (287)
#define SUB_SEQ_TAUNT_END                       (288)
#define SUB_SEQ_FULL_RESTORE                    (289)
#define SUB_SEQ_PLUCK_CHECK                     (290)
#define SUB_SEQ_WAIT_FOR_UNPLAYED_ANIMATION     (291) // null subscript; doesn't disable animations; just waits for animation
#define SUB_SEQ_ITEM_POWER_HERB_SKULL_BASH      (292)
#define SUB_SEQ_SHAYMIN_FORM_CHECK              (293)
#define SUB_SEQ_OVERWORLD_SUN                   (294)
#define SUB_SEQ_OVERWORLD_TRICK_ROOM            (295)
#define SUB_SEQ_GIRATINA_FORM_CHECK             (296)

// new sub_seq entries:
#define SUB_SEQ_HANDLE_MEGA_EVOLUTION                 (297)
#define SUB_SEQ_HANDLE_UNNERVE_MESSAGE                (298)
#define SUB_SEQ_HANDLE_PROTEAN_MESSAGE                (299)
#define SUB_SEQ_HANDLE_DARK_AURA_MESSAGE              (300)
#define SUB_SEQ_HANDLE_FAIRY_AURA_MESSAGE             (301)
#define SUB_SEQ_HANDLE_AURA_BREAK_MESSAGE             (302)
#define SUB_SEQ_HANDLE_TURBOBLAZE_MESSAGE             (303)
#define SUB_SEQ_HANDLE_TERAVOLT_MESSAGE               (304)
#define SUB_SEQ_HANDLE_INNARDS_OUT_MESSAGE            (305)
#define SUB_SEQ_HANDLE_MUMMY_MESSAGE                  (306)
#define SUB_SEQ_HANDLE_WEAK_ARMOR                     (307)
#define SUB_SEQ_HANDLE_SAP_SIPPER                     (308)
#define SUB_SEQ_HANDLE_DEFIANT                        (309)
#define SUB_SEQ_HANDLE_HEALER                         (310)
#define SUB_SEQ_RAISE_ATTACK_AND_ACCURACY             (311)
#define SUB_SEQ_GUARD_SPLIT                           (312)
#define SUB_SEQ_POWER_SPLIT                           (313)
#define SUB_SEQ_SP_ATK_SP_DEF_SPEED_UP                (314)
#define SUB_SEQ_CHANGE_TARGET_TO_WATER_TYPE           (315)
#define SUB_SEQ_ATK_DEF_ACC_UP                        (316)
#define SUB_SEQ_SHIFT_GEAR                            (317)
#define SUB_SEQ_ATK_SP_ATK_SPEED_UP_2_DEF_SP_DEF_DOWN (318)
#define SUB_SEQ_USER_DEF_SP_DEF_SPEED_DOWN_HIT        (319)
#define SUB_SEQ_AUTOTOMIZE                            (320)
#define SUB_SEQ_HANDLE_HARVEST                        (321)
#define SUB_SEQ_HANDLE_MOODY                          (322)
#define SUB_SEQ_HANDLE_LIGHTNING_ROD_RAISE_SPATK      (323)
#define SUB_SEQ_HANDLE_PICKPOCKET_DEF                 (324)
#define SUB_SEQ_HANDLE_PICKPOCKET_ATK                 (325)
#define SUB_SEQ_HANDLE_IMPOSTER                       (326)
#define SUB_SEQ_HANDLE_CURSED_BODY                    (327)
#define SUB_SEQ_HANDLE_PRIMAL_REVERSION               (328)
#define SUB_SEQ_HANDLE_MOVE_MEGA_EVOLUTION            (329)
#define SUB_SEQ_HANDLE_ILLUSION_FADED                 (330)
#define SUB_SEQ_HANDLE_GROWTH                         (331)
#define SUB_SEQ_HANDLE_DISGUISE_ICE_FACE              (332)
#define SUB_SEQ_HANDLE_RESTORE_ICE_FACE               (333)
#define SUB_SEQ_HANDLE_ZYGARDE_FORM_CHANGE            (334)
#define SUB_SEQ_HANDLE_COMPETITIVE                    (335)
#define SUB_SEQ_HANDLE_RAISE_SPECIAL_ATTACK_ON_HIT    (336)
#define SUB_SEQ_HANDLE_AIR_BALLOON_POP                (337)
#define SUB_SEQ_HANDLE_AIR_BALLOON_MESSAGE            (338)
#define SUB_SEQ_HANDLE_RAISE_ATTACK_ON_HIT            (339)
#define SUB_SEQ_HANDLE_SWITCHING_ITEMS                (340)
#define SUB_SEQ_HANDLE_RAISE_DEFENSE_ON_HIT           (341)
#define SUB_SEQ_HANDLE_RAISE_SPECIAL_DEFENSE_ON_HIT   (342)
#define SUB_SEQ_HANDLE_RAISE_SPEED_ON_HIT             (343)
#define SUB_SEQ_HANDLE_RAISE_ATTACK_AND_SP_ATK_ON_HIT (344)
#define SUB_SEQ_HANDLE_FIELD_EFFECTS_INITIAL_MSG      (345)
#define SUB_SEQ_HANDLE_FIELD_EFFECTS_END_OF_TURN      (346)
#define SUB_SEQ_HANDLE_TERRAIN_END                    (347)
#define SUB_SEQ_HANDLE_PSYCHIC_TERRAIN_PROTECTION     (348)
#define SUB_SEQ_HANDLE_TERRAIN_SEEDS                  (349)
#define SUB_SEQ_ATK_SP_ATK_UP                         (350)
#define SUB_SEQ_SPICY_EXTRACT                         (351)
#define SUB_SEQ_ATK_SP_ATK_SPEED_UP_2_LOSE_HALF_MAX_HP (352)
#define SUB_SEQ_HANDLE_PARENTAL_BOND                  (353)
#define SUB_SEQ_CREATE_TERRAIN_OVERLAY                (354)
#define SUB_SEQ_HANDLE_SHED_TAIL                      (355)
#define SUB_SEQ_HANDLE_AFTER_YOU                      (356)
#define SUB_SEQ_HANDLE_QUASH                          (357)
#define SUB_SEQ_DRAIN_FULL                            (358)
#define SUB_SEQ_SNOW_END                              (359)
#define SUB_SEQ_HANDLE_HAIL_TEMPORARY                 (360)
#define SUB_SEQ_HANDLE_SUN_TEMPORARY                  (361)
#define SUB_SEQ_HANDLE_RAIN_TEMPORARY                 (362)
#define SUB_SEQ_HANDLE_SANDSTORM_TEMPORARY            (363)
#define SUB_SEQ_HANDLE_SNOW_TEMPORARY                 (364)
#define SUB_SEQ_DESOLATE_LAND                         (365)
#define SUB_SEQ_PRIMORDIAL_SEA                        (366)
#define SUB_SEQ_DELTA_STREAM                          (367)
#define SUB_SEQ_TRY_CLEAR_PRIMAL_WEATHERS             (368)
#define SUB_SEQ_TRY_CLEAR_PRIMAL_WEATHERS_FAINTING    (369)
#define SUB_SEQ_CANCEL_WATER_MOVE                     (370)
#define SUB_SEQ_CANCEL_FIRE_MOVE                      (371)
#define SUB_SEQ_WEAKEN_MOVES_STRONG_WINDS             (372)
#define SUB_SEQ_PREVENT_CHANGING_WEATHER              (373)
#define SUB_SEQ_HEAL_TARGET_BURN                      (374)
#define SUB_SEQ_SWITCH_IN_ABILITY_CHECK               (375)
#define SUB_SEQ_HANDLE_CLOUD_NINE_MESSAGE             (376)
#define SUB_SEQ_GIVE_TARGET_SIMPLE                    (377)
#define SUB_SEQ_ABSORB_AND_DEF_UP_2_STAGE             (378)
#define SUB_SEQ_CANNOT_USE_MOVE                       (379)
#define SUB_SEQ_POWER_HERB_METEOR_BEAM                (380)
#define SUB_SEQ_SP_ATK_UP_RAIN_SKIP                   (381)

/* calcrys custom */
#define SUB_SEQ_OVERWORLD_GRAVITY_RADIO_WAVES         (382)
#define SUB_SEQ_OVERWORLD_TAILWIND                    (383)
#define SUB_SEQ_OVERWORLD_TERRAIN_TRICK_ROOM          (384)
#define SUB_SEQ_WATER_VEIL_AQUA_RING                  (385)
#define SUB_SEQ_OVERWORLD_RADIO_WAVES                 (386)
#define SUB_SEQ_OVERWORLD_RAIN_RADIO_WAVES            (387)
#define SUB_SEQ_OVERWORLD_SUN_RADIO_WAVES             (388)
#define SUB_SEQ_OVERWORLD_TRICK_ROOM_RADIO_WAVES      (389)


// add status effect constants--used in battle effect scripts to queue up a subscript through the table in src/moves.c

#define ADD_STATUS_EFF_START_BATTLE                    (  0)
#define ADD_STATUS_EFF_APPLY_SLEEP                     (  1)
#define ADD_STATUS_EFF_APPLY_POISON                    (  2)
#define ADD_STATUS_EFF_APPLY_BURN                      (  3)
#define ADD_STATUS_EFF_APPLY_FREEZE                    (  4)
#define ADD_STATUS_EFF_APPLY_PARALYSIS                 (  5)
#define ADD_STATUS_EFF_BADLY_POISON                    (  6)
#define ADD_STATUS_EFF_APPLY_CONFUSION                 (  7)
#define ADD_STATUS_EFF_TRY_FLINCH                      (  8)
#define ADD_STATUS_EFF_REST                            (  9)
#define ADD_STATUS_EFF_UPROAR                          ( 10)
#define ADD_STATUS_EFF_PAY_DAY                         ( 11)
#define ADD_STATUS_EFF_VANISH_ON_CHARGE_TURN           ( 12)
#define ADD_STATUS_EFF_CLAMP_START                     ( 13)
#define ADD_STATUS_EFF_RECOIL_1_4                      ( 14)
#define ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP           ( 15)
#define ADD_STATUS_EFF_BOOST_STATS_DEFENSE_UP          ( 16)
#define ADD_STATUS_EFF_BOOST_STATS_SPEED_UP            ( 17)
#define ADD_STATUS_EFF_BOOST_STATS_SP_ATK_UP           ( 18)
#define ADD_STATUS_EFF_BOOST_STATS_SP_DEF_UP           ( 19)
#define ADD_STATUS_EFF_BOOST_STATS_ACCURACY_UP         ( 20)
#define ADD_STATUS_EFF_BOOST_STATS_EVASION_UP          ( 21)
#define ADD_STATUS_EFF_BOOST_STATS_ATTACK_DOWN         ( 22)
#define ADD_STATUS_EFF_BOOST_STATS_DEFENSE_DOWN        ( 23)
#define ADD_STATUS_EFF_BOOST_STATS_SPEED_DOWN          ( 24)
#define ADD_STATUS_EFF_BOOST_STATS_SP_ATK_DOWN         ( 25)
#define ADD_STATUS_EFF_BOOST_STATS_SP_DEF_DOWN         ( 26)
#define ADD_STATUS_EFF_BOOST_STATS_ACCURACY_DOWN       ( 27)
#define ADD_STATUS_EFF_BOOST_STATS_EVASION_DOWN        ( 28)
#define ADD_STATUS_EFF_RECHARGE_MOVE                   ( 29)
#define ADD_STATUS_EFF_RAGE_SET                        ( 30)
#define ADD_STATUS_EFF_THIEF                           ( 31)
#define ADD_STATUS_EFF_MEAN_LOOK                       ( 32)
#define ADD_STATUS_EFF_APPLY_NIGHTMARE                 ( 33)
#define ADD_STATUS_EFF_OMNIBOOST                       ( 34)
#define ADD_STATUS_EFF_RAPID_SPIN                      ( 35)
#define ADD_STATUS_EFF_HEAL_PARALYSIS                  ( 36)
#define ADD_STATUS_EFF_SUPERPOWER_DEBUFF               ( 37)
#define ADD_STATUS_EFF_RECOIL_1_3                      ( 38)
#define ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_2         ( 39)
#define ADD_STATUS_EFF_BOOST_STATS_DEFENSE_UP_2        ( 40)
#define ADD_STATUS_EFF_BOOST_STATS_SPEED_UP_2          ( 41)
#define ADD_STATUS_EFF_BOOST_STATS_SP_ATK_UP_2         ( 42)
#define ADD_STATUS_EFF_BOOST_STATS_SP_DEF_UP_2         ( 43)
#define ADD_STATUS_EFF_BOOST_STATS_ACCURACY_UP_2       ( 44)
#define ADD_STATUS_EFF_BOOST_STATS_EVASION_UP_2        ( 45)
#define ADD_STATUS_EFF_BOOST_STATS_ATTACK_DOWN_2       ( 46)
#define ADD_STATUS_EFF_BOOST_STATS_DEFENSE_DOWN_2      ( 47)
#define ADD_STATUS_EFF_BOOST_STATS_SPEED_DOWN_2        ( 48)
#define ADD_STATUS_EFF_BOOST_STATS_SP_ATK_DOWN_2       ( 49)
#define ADD_STATUS_EFF_BOOST_STATS_SP_DEF_DOWN_2       ( 50)
#define ADD_STATUS_EFF_BOOST_STATS_ACCURACY_DOWN_2     ( 51)
#define ADD_STATUS_EFF_BOOST_STATS_EVASION_DOWN_2      ( 52)
#define ADD_STATUS_EFF_THRASHING                       ( 53)
#define ADD_STATUS_EFF_KNOCK_OFF                       ( 54)
#define ADD_STATUS_EFF_COSMIC_POWER                    ( 55)
#define ADD_STATUS_EFF_BULK_UP                         ( 56)
#define ADD_STATUS_EFF_TICKLE                          ( 57)
#define ADD_STATUS_EFF_CALM_MIND                       ( 58)
#define ADD_STATUS_EFF_DRAGON_DANCE                    ( 59)
#define ADD_STATUS_EFF_DRAIN_HALF                      ( 60)
#define ADD_STATUS_EFF_DREAM_EATER                     ( 61)
#define ADD_STATUS_EFF_CLEAR_ALL_BOOSTS                ( 62)
#define ADD_STATUS_EFF_START_BIDE                      ( 63)
#define ADD_STATUS_EFF_STRUGGLE                        ( 64)
#define ADD_STATUS_EFF_CONVERSION                      ( 65)
#define ADD_STATUS_EFF_RECOVER_HALF_HP                 ( 66)
#define ADD_STATUS_EFF_LIGHT_SCREEN                    ( 67)
#define ADD_STATUS_EFF_REFLECT                         ( 68)
#define ADD_STATUS_EFF_APPLY_MIST                      ( 69)
#define ADD_STATUS_EFF_FOCUS_ENERGY                    ( 70)
#define ADD_STATUS_EFF_MIMIC                           ( 71)
#define ADD_STATUS_EFF_APPLY_LEECH_SEED                ( 72)
#define ADD_STATUS_EFF_APPLY_DISABLE                   ( 73)
#define ADD_STATUS_EFF_APPLY_ENCORE                    ( 74)
#define ADD_STATUS_EFF_PAIN_SPLIT                      ( 75)
#define ADD_STATUS_EFF_CONVERSION_2                    ( 76)
#define ADD_STATUS_EFF_LOCKON                          ( 77)
#define ADD_STATUS_EFF_SKETCH                          ( 78)
#define ADD_STATUS_EFF_FEINT                           ( 79)
#define ADD_STATUS_EFF_DESTINY_BOND                    ( 80)
#define ADD_STATUS_EFF_SPITE                           ( 81)
#define ADD_STATUS_EFF_PROTECT                         ( 82)
#define ADD_STATUS_EFF_HEAL_BELL                       ( 83)
#define ADD_STATUS_EFF_TRY_SUBSTITUTE                  ( 84)
#define ADD_STATUS_EFF_FORCE_OUT                       ( 85)
#define ADD_STATUS_EFF_TRANSFORM                       ( 86)
#define ADD_STATUS_EFF_EVA_PLUS_ONE                    ( 87)
#define ADD_STATUS_EFF_CURSE_BOOST                     ( 88)
#define ADD_STATUS_EFF_CURSE_GHOST                     ( 89)
#define ADD_STATUS_EFF_PRINT_MESSAGE                   ( 90)
#define ADD_STATUS_EFF_FORESIGHT                       ( 91)
#define ADD_STATUS_EFF_START_PERISH_SONG               ( 92)
#define ADD_STATUS_EFF_WEATHER_MESSAGE                 ( 93)
#define ADD_STATUS_EFF_SWAGGER                         ( 94)
#define ADD_STATUS_EFF_APPLY_ATTRACT                   ( 95)
#define ADD_STATUS_EFF_APPLY_SAFEGUARD                 ( 96)
#define ADD_STATUS_EFF_PRESENT                         ( 97)
#define ADD_STATUS_EFF_MAGNITUDE                       ( 98)
#define ADD_STATUS_EFF_BATON_PASS                      ( 99)
#define ADD_STATUS_EFF_BELLY_DRUM                      (100)
#define ADD_STATUS_EFF_TELEPORT                        (101)
#define ADD_STATUS_EFF_FUTURE_SIGHT_ATTACK_MESSAGE     (102)
#define ADD_STATUS_EFF_STOCKPILE                       (103)
#define ADD_STATUS_EFF_SWALLOW                         (104)
#define ADD_STATUS_EFF_APPLY_TORMENT                   (105)
#define ADD_STATUS_EFF_FLATTER                         (106)
#define ADD_STATUS_EFF_MEMENTO                         (107)
#define ADD_STATUS_EFF_CHARGE                          (108)
#define ADD_STATUS_EFF_APPLY_TAUNT                     (109)
#define ADD_STATUS_EFF_TRICK                           (110)
#define ADD_STATUS_EFF_ROLE_PLAY                       (111)
#define ADD_STATUS_EFF_BREAK_SCREENS                   (112)
#define ADD_STATUS_EFF_YAWN                            (113)
#define ADD_STATUS_EFF_SKILL_SWAP                      (114)
#define ADD_STATUS_EFF_REFRESH                         (115)
#define ADD_STATUS_EFF_ROOST                           (116)
#define ADD_STATUS_EFF_FORCE_WAKE_UP                   (117)
#define ADD_STATUS_EFF_APPLY_GRAVITY                   (118)
#define ADD_STATUS_EFF_MIRACLE_EYE                     (119)
#define ADD_STATUS_EFF_HEALING_WISH                    (120)
#define ADD_STATUS_EFF_APPLY_TAILWIND                  (121)
#define ADD_STATUS_EFF_CLOSE_COMBAT_DEBUFF             (122)
#define ADD_STATUS_EFF_POWER_TRICK                     (123)
#define ADD_STATUS_EFF_GASTRO_ACID                     (124)
#define ADD_STATUS_EFF_APPLY_LUCKY_CHANT               (125)
#define ADD_STATUS_EFF_POWER_SWAP                      (126)
#define ADD_STATUS_EFF_GUARD_SWAP                      (127)
#define ADD_STATUS_EFF_WORRY_SEED                      (128)
#define ADD_STATUS_EFF_HEART_SWAP                      (129)
#define ADD_STATUS_EFF_FLARE_BLITZ                     (130)
#define ADD_STATUS_EFF_DEFOG                           (131)
#define ADD_STATUS_EFF_APPLY_HEAL_BLOCK                (132)
#define ADD_STATUS_EFF_PIVOT_ATTACK                    (133)
#define ADD_STATUS_EFF_EMBARGO                         (134)
#define ADD_STATUS_EFF_PLUCK                           (135)
#define ADD_STATUS_EFF_FLING                           (136)
#define ADD_STATUS_EFF_VOLT_TACKLE                     (137)
#define ADD_STATUS_EFF_RECOIL_1_2                      (138)
#define ADD_STATUS_EFF_BURN_OR_FLINCH                  (139)
#define ADD_STATUS_EFF_FREEZE_OR_FLINCH                (140)
#define ADD_STATUS_EFF_PARA_OR_FLINCH                  (141)
#define ADD_STATUS_EFF_CHATTER                         (142)
#define ADD_STATUS_EFF_LUNAR_DANCE                     (143)
#define ADD_STATUS_EFF_SYNCHRONIZE                     (144)
#define ADD_STATUS_EFF_RAISE_ATTACK_AND_ACCURACY       (145)
#define ADD_STATUS_EFF_GUARD_SPLIT                     (146)
#define ADD_STATUS_EFF_POWER_SPLIT                     (147)
#define ADD_STATUS_EFF_QUIVER_DANCE                    (148)
#define ADD_STATUS_EFF_CHANGE_TARGET_TO_WATER_TYPE     (149)
#define ADD_STATUS_EFF_COIL                            (150)
#define ADD_STATUS_EFF_SHIFT_GEAR                      (151)
#define ADD_STATUS_EFF_SHELL_SMASH                     (152)
#define ADD_STATUS_EFF_V_CREATE                        (153)
#define ADD_STATUS_EFF_AUTOTOMIZE                      (154)
#define ADD_STATUS_EFF_HANDLE_GROWTH                   (155)
#define ADD_STATUS_EFF_WORK_UP                         (156)
#define ADD_STATUS_EFF_SPICY_EXTRACT                   (157)
#define ADD_STATUS_EFF_FILLET_AWAY                     (158)
#define ADD_STATUS_EFF_SHED_TAIL                       (159)
#define ADD_STATUS_EFF_AFTER_YOU                       (160)
#define ADD_STATUS_EFF_QUASH                           (161)
#define ADD_STATUS_EFF_DRAIN_FULL                      (162)
#define ADD_STATUS_EFF_SIMPLE_BEAM                     (163)



// additional effect constants
#define ADD_STATUS_NONE (0)
#define ADD_STATUS_DIRECT (1)
#define ADD_STATUS_INDIRECT (2)
#define ADD_STATUS_ABILITY (3)
#define ADD_STATUS_WAZA_KOUKA (4)
#define ADD_STATUS_SOUBIITEM (5)
#define ADD_STATUS_DOKUBISI (6)
#define ADD_STATUS_IGNORE (7)

#define ADD_STAGE_ATTACK_UP (15)
#define ADD_STAGE_SP_ATK_UP (18)

#define BATTLE_ANIMATION_NONE               0
#define BATTLE_ANIMATION_ASLEEP             1
#define BATTLE_ANIMATION_POISONED           2
#define BATTLE_ANIMATION_BURNED             3
#define BATTLE_ANIMATION_FROZEN             4
#define BATTLE_ANIMATION_PARALYZED          5
#define BATTLE_ANIMATION_CONFUSED           6
#define BATTLE_ANIMATION_INFATUATED         7
#define BATTLE_ANIMATION_LEVEL_UP           8
#define BATTLE_ANIMATION_BAG_ITEM           9
#define BATTLE_ANIMATION_HELD_ITEM          10
#define BATTLE_ANIMATION_SHINY              11
#define BATTLE_ANIMATION_STAT_BOOST         12
#define BATTLE_ANIMATION_STAT_DROP          13
#define BATTLE_ANIMATION_RESTORE_HP         14
#define BATTLE_ANIMATION_SUB_OUT            15
#define BATTLE_ANIMATION_SUB_IN             16
#define BATTLE_ANIMATION_ITEM_ESCAPE        17
#define BATTLE_ANIMATION_WEATHER_FOG        18
#define BATTLE_ANIMATION_WEATHER_RAIN       19
#define BATTLE_ANIMATION_WEATHER_HAIL       20
#define BATTLE_ANIMATION_WEATHER_SAND       21
#define BATTLE_ANIMATION_WEATHER_SUN        22

#endif