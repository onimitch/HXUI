require('common');

local buffTable = 
{
    spellToDebuff = T{};
};

-- initialize our spell to debuff table for lookups later
--spellID = debuffID
buffTable.spellToDebuff[230] = 135 --bio
buffTable.spellToDebuff[23] = 134 --dia
buffTable.spellToDebuff[24] = 134 --dia_II
buffTable.spellToDebuff[25] = 134 --dia_III
buffTable.spellToDebuff[58] = 4 --paralyze
buffTable.spellToDebuff[80] = 4 --paralyze_II
buffTable.spellToDebuff[56] = 13 --slow
buffTable.spellToDebuff[79] = 13 --slow_II
buffTable.spellToDebuff[357] = 13 -- slowga
buffTable.spellToDebuff[216] = 12 --gravity
buffTable.spellToDebuff[217] = 12 --gravity_II
buffTable.spellToDebuff[254] = 5 --blind
buffTable.spellToDebuff[276] = 5 --blind_II
buffTable.spellToDebuff[361] = 5 --blindga
buffTable.spellToDebuff[59] = 6 --silence
buffTable.spellToDebuff[359] = 6 --silencega
buffTable.spellToDebuff[253] = 2 --sleep
buffTable.spellToDebuff[259] = 2 --sleep_II
buffTable.spellToDebuff[273] = 2 --sleepga
buffTable.spellToDebuff[274] = 2 --sleepga_II
buffTable.spellToDebuff[258] = 11 --bind
buffTable.spellToDebuff[362] = 11 --bindga
buffTable.spellToDebuff[252] = 10 --stun
buffTable.spellToDebuff[220] = 3 --poison
buffTable.spellToDebuff[221] = 3 --poison_II
buffTable.spellToDebuff[222] = 3 --poison_III
buffTable.spellToDebuff[223] = 3 --poison_IV
buffTable.spellToDebuff[224] = 3 --poison_V
buffTable.spellToDebuff[225] = 3 --poisonga
buffTable.spellToDebuff[226] = 3 --poisonga_II
buffTable.spellToDebuff[227] = 3 --poisonga_III
buffTable.spellToDebuff[228] = 3 --poisonga_IV
buffTable.spellToDebuff[229] = 3 --poisonga_V
buffTable.spellToDebuff[536] = 3 --poison_breath ? is this correct?
buffTable.spellToDebuff[239] = 132 --shock
buffTable.spellToDebuff[238] = 131 --rasp
buffTable.spellToDebuff[237] = 130 --choke
buffTable.spellToDebuff[236] = 129 --frost
buffTable.spellToDebuff[608] = 129 --frost_breath ? is this correct?
buffTable.spellToDebuff[235] = 128 --burn
buffTable.spellToDebuff[240] = 133 --drown
buffTable.spellToDebuff[421] = 194 --battlefield_elegy
buffTable.spellToDebuff[422] = 194 --carnage_elegy
buffTable.spellToDebuff[423] = 194 --massacre_elegy
buffTable.spellToDebuff[368] = 192 --requiem_1
buffTable.spellToDebuff[369] = 192 --requiem_2
buffTable.spellToDebuff[370] = 192 --requiem_3
buffTable.spellToDebuff[371] = 192 --requiem_4
buffTable.spellToDebuff[372] = 192 --requiem_5
buffTable.spellToDebuff[373] = 192 --requiem_6
buffTable.spellToDebuff[463] = 193 --foe_lullaby
buffTable.spellToDebuff[376] = 193 --horde_lullaby
buffTable.spellToDebuff[454] = 217 --fire_threnody
buffTable.spellToDebuff[455] = 217 --ice_threnody
buffTable.spellToDebuff[456] = 217 --wind_threnody
buffTable.spellToDebuff[457] = 217 --earth_threnody
buffTable.spellToDebuff[458] = 217 --lightning_threnody
buffTable.spellToDebuff[459] = 217 --water_threnody
buffTable.spellToDebuff[460] = 217 --light_threnody
buffTable.spellToDebuff[461] = 217 --dark_threnody

buffTable.buffs =
T{
    FLEE                     = 32,
    HASTE                    = 33,
    BLAZE_SPIKES             = 34,
    ICE_SPIKES               = 35,
    BLINK                    = 36,
    STONESKIN                = 37,
    SHOCK_SPIKES             = 38,
    AQUAVEIL                 = 39,
    PROTECT                  = 40,
    SHELL                    = 41,
    REGEN                    = 42,
    REFRESH                  = 43,
    MIGHTY_STRIKES           = 44,
    BOOST                    = 45,
    HUNDRED_FISTS            = 46,
    MANAFONT                 = 47,
    CHAINSPELL               = 48,
    PERFECT_DODGE            = 49,
    INVINCIBLE               = 50,
    BLOOD_WEAPON             = 51,
    SOUL_VOICE               = 52,
    EAGLE_EYE_SHOT           = 53,
    MEIKYO_SHISUI            = 54,
    ASTRAL_FLOW              = 55,
    BERSERK                  = 56,
    DEFENDER                 = 57,
    AGGRESSOR                = 58,
    FOCUS                    = 59,
    DODGE                    = 60,
    COUNTERSTANCE            = 61,
    SENTINEL                 = 62,
    SOULEATER                = 63,
    LAST_RESORT              = 64,
    SNEAK_ATTACK             = 65,
    COPY_IMAGE               = 66,
    THIRD_EYE                = 67,
    WARCRY                   = 68,
    INVISIBLE                = 69,
    DEODORIZE                = 70,
    SNEAK                    = 71,
    SHARPSHOT                = 72,
    BARRAGE                  = 73,
    HOLY_CIRCLE              = 74,
    ARCANE_CIRCLE            = 75,
    HIDE                     = 76,
    CAMOUFLAGE               = 77,
    DIVINE_SEAL              = 78,
    ELEMENTAL_SEAL           = 79,
    STR_BOOST                = 80,
    DEX_BOOST                = 81,
    VIT_BOOST                = 82,
    AGI_BOOST                = 83,
    INT_BOOST                = 84,
    MND_BOOST                = 85,
    CHR_BOOST                = 86,
    TRICK_ATTACK             = 87,
    MAX_HP_BOOST             = 88,
    MAX_MP_BOOST             = 89,
    ACCURACY_BOOST           = 90,
    ATTACK_BOOST             = 91,
    EVASION_BOOST            = 92,
    DEFENSE_BOOST            = 93,
    ENFIRE                   = 94,
    ENBLIZZARD               = 95,
    ENAERO                   = 96,
    ENSTONE                  = 97,
    ENTHUNDER                = 98,
    ENWATER                  = 99,
    BARFIRE                  = 100,
    BARBLIZZARD              = 101,
    BARAERO                  = 102,
    BARSTONE                 = 103,
    BARTHUNDER               = 104,
    BARWATER                 = 105,
    BARSLEEP                 = 106,
    BARPOISON                = 107,
    BARPARALYZE              = 108,
    BARBLIND                 = 109,
    BARSILENCE               = 110,
    BARPETRIFY               = 111,
    BARVIRUS                 = 112,
    RERAISE                  = 113,
    COVER                    = 114,
    UNLIMITED_SHOT           = 115,
    PHALANX                  = 116,
    WARDING_CIRCLE           = 117,
    ANCIENT_CIRCLE           = 118,
    STR_BOOST_II             = 119,
    DEX_BOOST_II             = 120,
    VIT_BOOST_II             = 121,
    AGI_BOOST_II             = 122,
    INT_BOOST_II             = 123,
    MND_BOOST_II             = 124,
    CHR_BOOST_II             = 125,
    SPIRIT_SURGE             = 126,
    COSTUME                  = 127,
    PHYSICAL_SHIELD          = 150,
    ARROW_SHIELD             = 151,
    MAGIC_SHIELD             = 152,
    DAMAGE_SPIKES            = 153,
    SHINING_RUBY             = 154,
    SJ_RESTRICTION           = 157,
    PENALTY                  = 159,
    PREPARATIONS             = 160,
    SPRINT                   = 161,
    ENCHANTMENT              = 162,
    AZURE_LORE               = 163,
    CHAIN_AFFINITY           = 164,
    BURST_AFFINITY           = 165,
    OVERDRIVE                = 166,
    MAGIC_DEF_DOWN           = 167,
    POTENCY                  = 169,
    REGAIN                   = 170,
    QUICKENING               = 176,
    ENCUMBRANCE_II           = 177,
    FIRESTORM                = 178,
    HAILSTORM                = 179,
    WINDSTORM                = 180,
    SANDSTORM                = 181,
    THUNDERSTORM             = 182,
    RAINSTORM                = 183,
    AURORASTORM              = 184,
    VOIDSTORM                = 185,
    SUBLIMATION_ACTIVATED    = 187,
    SUBLIMATION_COMPLETE     = 188,
    MAGIC_ATK_BOOST          = 190,
    MAGIC_DEF_BOOST          = 191,
    PAEON                    = 195,
    BALLAD                   = 196,
    MINNE                    = 197,
    MINUET                   = 198,
    MADRIGAL                 = 199,
    PRELUDE                  = 200,
    MAMBO                    = 201,
    AUBADE                   = 202,
    PASTORAL                 = 203,
    HUM                      = 204,
    FANTASIA                 = 205,
    OPERETTA                 = 206,
    CAPRICCIO                = 207,
    SERENADE                 = 208,
    ROUND                    = 209,
    GAVOTTE                  = 210,
    FUGUE                    = 211,
    RHAPSODY                 = 212,
    ARIA                     = 213,
    MARCH                    = 214,
    ETUDE                    = 215,
    CAROL                    = 216,
    THRENODY                 = 217,
    HYMNUS                   = 218,
    MAZURKA                  = 219,
    SIRVENTE                 = 220,
    DIRGE                    = 221,
    SCHERZO                  = 222,
    STORE_TP                 = 227,
    EMBRAVA                  = 228,
    MANAWELL                 = 229,
    SPONTANEITY              = 230,
    MARCATO                  = 231,
    AUTO_REGEN               = 233,
    AUTO_REFRESH             = 234,
    FISHING_IMAGERY          = 235,
    WOODWORKING_IMAGERY      = 236,
    SMITHING_IMAGERY         = 237,
    GOLDSMITHING_IMAGERY     = 238,
    CLOTHCRAFT_IMAGERY       = 239,
    LEATHERCRAFT_IMAGERY     = 240,
    BONECRAFT_IMAGERY        = 241,
    ALCHEMY_IMAGERY          = 242,
    COOKING_IMAGERY          = 243,
    IMAGERY_1                = 244,
    IMAGERY_2                = 245,
    IMAGERY_3                = 246,
    IMAGERY_4                = 247,
    IMAGERY_5                = 248,
    DEDICATION               = 249,
    EF_BADGE                 = 250,
    FOOD                     = 251,
    MOUNTED                  = 252,
    SIGNET                   = 253,
    BATTLEFIELD              = 254,
    SANCTION                 = 256,
    BESIEGED                 = 257,
    ILLUSION                 = 258,
    FLURRY                   = 265,
    CONCENTRATION            = 266,
    ALLIED_TAGS              = 267,
    SIGIL                    = 268,
    LEVEL_SYNC               = 269,
    AFTERMATH_LV1            = 270,
    AFTERMATH_LV2            = 271,
    AFTERMATH_LV3            = 272,
    AFTERMATH                = 273,
    ENLIGHT                  = 274,
    AUSPICE                  = 275,
    CONFRONTATION            = 276,
    ENFIRE_II                = 277,
    ENBLIZZARD_II            = 278,
    ENAERO_II                = 279,
    ENSTONE_II               = 280,
    ENTHUNDER_II             = 281,
    ENWATER_II               = 282,
    PERFECT_DEFENSE          = 283,
    EGG                      = 284,
    VISITANT                 = 285,
    BARAMNESIA               = 286,
    ATMA                     = 287,
    ENDARK                   = 288,
    ENMITY_BOOST             = 289,
    SUBTLE_BLOW_PLUS         = 290,
    PENNANT                  = 292,
    NEGATE_PETRIFY           = 293,
    NEGATE_TERROR            = 294,
    NEGATE_AMNESIA           = 295,
    NEGATE_DOOM              = 296,
    NEGATE_POISON            = 297,
    FIRE_MANEUVER            = 300,
    ICE_MANEUVER             = 301,
    WIND_MANEUVER            = 302,
    EARTH_MANEUVER           = 303,
    THUNDER_MANEUVER         = 304,
    WATER_MANEUVER           = 305,
    LIGHT_MANEUVER           = 306,
    DARK_MANEUVER            = 307,
    DOUBLE_UP_CHANCE         = 308,
    FIGHTERS_ROLL            = 310,
    MONKS_ROLL               = 311,
    HEALERS_ROLL             = 312,
    WIZARDS_ROLL             = 313,
    WARLOCKS_ROLL            = 314,
    ROGUES_ROLL              = 315,
    GALLANTS_ROLL            = 316,
    CHAOS_ROLL               = 317,
    BEAST_ROLL               = 318,
    CHORAL_ROLL              = 319,
    HUNTERS_ROLL             = 320,
    SAMURAI_ROLL             = 321,
    NINJA_ROLL               = 322,
    DRACHEN_ROLL             = 323,
    EVOKERS_ROLL             = 324,
    MAGUSS_ROLL              = 325,
    CORSAIRS_ROLL            = 326,
    PUPPET_ROLL              = 327,
    DANCERS_ROLL             = 328,
    SCHOLARS_ROLL            = 329,
    BOLTERS_ROLL             = 330,
    CASTERS_ROLL             = 331,
    COURSERS_ROLL            = 332,
    BLITZERS_ROLL            = 333,
    TACTICIANS_ROLL          = 334,
    ALLIES_ROLL              = 335,
    MISERS_ROLL              = 336,
    COMPANIONS_ROLL          = 337,
    AVENGERS_ROLL            = 338,
    NATURALISTS_ROLL         = 339,
    WARRIORS_CHARGE          = 340,
    FORMLESS_STRIKES         = 341,
    ASSASSINS_CHARGE         = 342,
    FEINT                    = 343,
    FEALTY                   = 344,
    DARK_SEAL                = 345,
    DIABOLIC_EYE             = 346,
    NIGHTINGALE              = 347,
    TROUBADOUR               = 348,
    KILLER_INSTINCT          = 349,
    STEALTH_SHOT             = 350,
    FLASHY_SHOT              = 351,
    SANGE                    = 352,
    HASSO                    = 353,
    SEIGAN                   = 354,
    CONVERGENCE              = 355,
    DIFFUSION                = 356,
    SNAKE_EYE                = 357,
    LIGHT_ARTS               = 358,
    DARK_ARTS                = 359,
    PENURY                   = 360,
    PARSIMONY                = 361,
    CELERITY                 = 362,
    ALACRITY                 = 363,
    RAPTURE                  = 364,
    EBULLIENCE               = 365,
    ACCESSION                = 366,
    MANIFESTATION            = 367,
    DRAIN_SAMBA              = 368,
    ASPIR_SAMBA              = 369,
    HASTE_SAMBA              = 370,
    VELOCITY_SHOT            = 371,
    BUILDING_FLOURISH        = 375,
    TRANCE                   = 376,
    TABULA_RASA              = 377,
    DRAIN_DAZE               = 378,
    ASPIR_DAZE               = 379,
    HASTE_DAZE               = 380,
    FINISHING_MOVE_1         = 381,
    FINISHING_MOVE_2         = 382,
    FINISHING_MOVE_3         = 383,
    FINISHING_MOVE_4         = 384,
    FINISHING_MOVE_5         = 385,
    LETHARGIC_DAZE_1         = 386,
    LETHARGIC_DAZE_2         = 387,
    LETHARGIC_DAZE_3         = 388,
    LETHARGIC_DAZE_4         = 389,
    LETHARGIC_DAZE_5         = 390,
    ADDENDUM_WHITE           = 401,
    ADDENDUM_BLACK           = 402,
    REPRISAL                 = 403,
    RETALIATION              = 405,
    FOOTWORK                 = 406,
    KLIMAFORM                = 407,
    SEKKANOKI                = 408,
    PIANISSIMO               = 409,
    SABER_DANCE              = 410,
    FAN_DANCE                = 411,
    ALTRUISM                 = 412,
    FOCALIZATION             = 413,
    TRANQUILITY              = 414,
    EQUANIMITY               = 415,
    ENLIGHTENMENT            = 416,
    AFFLATUS_SOLACE          = 417,
    AFFLATUS_MISERY          = 418,
    COMPOSURE                = 419,
    YONIN                    = 420,
    INNIN                    = 421,
    CARBUNCLES_FAVOR         = 422,
    IFRITS_FAVOR             = 423,
    SHIVAS_FAVOR             = 424,
    GARUDAS_FAVOR            = 425,
    TITANS_FAVOR             = 426,
    RAMUHS_FAVOR             = 427,
    LEVIATHANS_FAVOR         = 428,
    FENRIRS_FAVOR            = 429,
    DIABOLOSS_FAVOR          = 430,
    AVATARS_FAVOR            = 431,
    MULTI_STRIKES            = 432,
    DOUBLE_SHOT              = 433,
    TRANSCENDENCY            = 434,
    RESTRAINT                = 435,
    PERFECT_COUNTER          = 436,
    MANA_WALL                = 437,
    DIVINE_EMBLEM            = 438,
    NETHER_VOID              = 439,
    SENGIKORI                = 440,
    FUTAE                    = 441,
    PRESTO                   = 442,
    CLIMACTIC_FLOURISH       = 443,
    COPY_IMAGE_2             = 444,
    COPY_IMAGE_3             = 445,
    COPY_IMAGE_4             = 446,
    MULTI_SHOTS              = 447,
    DIVINE_CARESS_I          = 453,
    SABOTEUR                 = 454,
    TENUTO                   = 455,
    SPUR                     = 456,
    EFFLUX                   = 457,
    EARTHEN_ARMOR            = 458,
    DIVINE_CARESS_II         = 459,
    BLOOD_RAGE               = 460,
    IMPETUS                  = 461,
    CONSPIRATOR              = 462,
    SEPULCHER                = 463,
    ARCANE_CREST             = 464,
    HAMANOHA                 = 465,
    DRAGON_BREAKER           = 466,
    TRIPLE_SHOT              = 467,
    STRIKING_FLOURISH        = 468,
    PERPETUANCE              = 469,
    IMMANENCE                = 470,
    MIGAWARI                 = 471,
    TERNARY_FLOURISH         = 472,
    MUDDLE                   = 473,
    PROWESS                  = 474,
    VOIDWATCHER              = 475,
    ENSPHERE                 = 476,
    SACROSANCTITY            = 477,
    PALISADE                 = 478,
    SCARLET_DELIRIUM         = 479,
    SCARLET_DELIRIUM_1       = 480,
    ABDHALJS_SEAL            = 481,
    DECOY_SHOT               = 482,
    HAGAKURE                 = 483,
    ISSEKIGAN                = 484,
    UNBRIDLED_LEARNING       = 485,
    COUNTER_BOOST            = 486,
    ENDRAIN                  = 487,
    ENASPIR                  = 488,
    AFTERGLOW                = 489,
    BRAZEN_RUSH              = 490,
    INNER_STRENGTH           = 491,
    ASYLUM                   = 492,
    SUBTLE_SORCERY           = 493,
    STYMIE                   = 494,
    INTERVENE                = 496,
    SOUL_ENSLAVEMENT         = 497,
    UNLEASH                  = 498,
    CLARION_CALL             = 499,
    OVERKILL                 = 500,
    YAEGASUMI                = 501,
    MIKAGE                   = 502,
    FLY_HIGH                 = 503,
    ASTRAL_CONDUIT           = 504,
    UNBRIDLED_WISDOM         = 505,
    GRAND_PAS                = 507,
    WIDENED_COMPASS          = 508,
    ODYLLIC_SUBTERFUGE       = 509,
    ERGON_MIGHT              = 510,
    REIVE_MARK               = 511,
    IONIS                    = 512,
    BOLSTER                  = 513,
    LASTING_EMANATION        = 515,
    ECLIPTIC_ATTRITION       = 516,
    COLLIMATED_FERVOR        = 517,
    DEMATERIALIZE            = 518,
    THEURGIC_FOCUS           = 519,
    ELEMENTAL_SFORZO         = 522,
    IGNIS                    = 523,
    GELUS                    = 524,
    FLABRA                   = 525,
    TELLUS                   = 526,
    SULPOR                   = 527,
    UNDA                     = 528,
    LUX                      = 529,
    TENEBRAE                 = 530,
    VALLATION                = 531,
    SWORDPLAY                = 532,
    PFLUG                    = 533,
    EMBOLDEN                 = 534,
    VALIANCE                 = 535,
    LIEMENT                  = 537,
    ONE_FOR_ALL              = 538,
    GEO_REGEN                = 539,
    GEO_POISON               = 540,
    GEO_REFRESH              = 541,
    GEO_STR_BOOST            = 542,
    GEO_DEX_BOOST            = 543,
    GEO_VIT_BOOST            = 544,
    GEO_AGI_BOOST            = 545,
    GEO_INT_BOOST            = 546,
    GEO_MND_BOOST            = 547,
    GEO_CHR_BOOST            = 548,
    GEO_ATTACK_BOOST         = 549,
    GEO_DEFENSE_BOOST        = 550,
    GEO_MAGIC_ATK_BOOST      = 551,
    GEO_MAGIC_DEF_BOOST      = 552,
    GEO_ACCURACY_BOOST       = 553,
    GEO_EVASION_BOOST        = 554,
    GEO_MAGIC_ACC_BOOST      = 555,
    GEO_MAGIC_EVASION_BOOST  = 556,
    FOIL                     = 568,
    BLAZE_OF_GLORY           = 569,
    BATTUTA                  = 570,
    RAYKE                    = 571,
    DELUGE_SPIKES            = 573,
    FAST_CAST                = 574,
    GESTATION                = 575,
    CAIT_SITHS_FAVOR         = 577,
    FISHY_INTUITION          = 578,
    COMMITMENT               = 579,
    GEO_HASTE                = 580,
    FLURRY_II                = 581,
    CONTRADANCE              = 582,
    APOGEE                   = 583,
    ENTRUST                  = 584,
    COSTUME_II               = 585,
    CURING_CONDUIT           = 586,
    TP_BONUS                 = 587,
    FINISHING_MOVE_6         = 588,
    FIRESTORM_II             = 589,
    HAILSTORM_II             = 590,
    WINDSTORM_II             = 591,
    SANDSTORM_II             = 592,
    THUNDERSTORM_II          = 593,
    RAINSTORM_II             = 594,
    AURORASTORM_II           = 595,
    VOIDSTORM_II             = 596,
    CASCADE                  = 598,
    CONSUME_MANA             = 599,
    RUNEISTS_ROLL            = 600,
    CROOKED_CARDS            = 601,
    VORSEAL                  = 602,
    ELVORSEAL                = 603,
    MIGHTY_GUARD             = 604,
    GALE_SPIKES              = 605,
    CLOD_SPIKES              = 606,
    GLINT_SPIKES             = 607,
    NEGATE_VIRUS             = 608,
    NEGATE_CURSE             = 609,
    NEGATE_CHARM             = 610,
    MAGIC_EVASION_BOOST      = 611,
    COLURE_ACTIVE            = 612,
    MUMORS_RADIANCE          = 613,
    ULLEGORES_GLOOM          = 614,
    BOOST_II                 = 615,
    ARTISANAL_KNOWLEDGE      = 616,
    SACRIFICE                = 617,
    EMPOROXS_GIFT            = 618,
    SPIRIT_BOND              = 619,
    AWAKEN                   = 620,
    MAJESTY                  = 621,
    GUARDING_RATE_BOOST      = 622,
    RAMPART                  = 623,
    WINDS_BLESSING           = 624,
    SIRENS_FAVOR             = 625,
    NEGATE_SLEEP             = 626,
    MOBILIZATION             = 627,
    HOVER_SHOT               = 628,
    MOOGLE_AMPLIFIER         = 629,
    ABYSSEA_STR              = 768,
    ABYSSEA_DEX              = 769,
    ABYSSEA_VIT              = 770,
    ABYSSEA_AGI              = 771,
    ABYSSEA_INT              = 772,
    ABYSSEA_MND              = 773,
    ABYSSEA_CHR              = 774,
    ABYSSEA_HP               = 775,
    ABYSSEA_MP               = 776,
}

buffTable.debuffs =
T{
    WEAKNESS                 = 1,
    SLEEP_I                  = 2,
    POISON                   = 3,
    PARALYSIS                = 4,
    BLINDNESS                = 5,
    SILENCE                  = 6,
    PETRIFICATION            = 7,
    DISEASE                  = 8,
    CURSE_I                  = 9,
    STUN                     = 10,
    BIND                     = 11,
    WEIGHT                   = 12,
    SLOW                     = 13,
    CHARM_I                  = 14,
    DOOM                     = 15,
    AMNESIA                  = 16,
    CHARM_II                 = 17,
    GRADUAL_PETRIFICATION    = 18,
    SLEEP_II                 = 19,
    CURSE_II                 = 20,
    ADDLE                    = 21,
    INTIMIDATE               = 22,
    KAUSTRA                  = 23,
    TERROR                   = 28,
    MUTE                     = 29,
    BANE                     = 30,
    PLAGUE                   = 31,
    BURN                     = 128,
    FROST                    = 129,
    CHOKE                    = 130,
    RASP                     = 131,
    SHOCK                    = 132,
    DROWN                    = 133,
    DIA                      = 134,
    BIO                      = 135,
    STR_DOWN                 = 136,
    DEX_DOWN                 = 137,
    VIT_DOWN                 = 138,
    AGI_DOWN                 = 139,
    INT_DOWN                 = 140,
    MND_DOWN                 = 141,
    CHR_DOWN                 = 142,
    LEVEL_RESTRICTION        = 143,
    MAX_HP_DOWN              = 144,
    MAX_MP_DOWN              = 145,
    ACCURACY_DOWN            = 146,
    ATTACK_DOWN              = 147,
    EVASION_DOWN             = 148,
    DEFENSE_DOWN             = 149,
    MEDICINE                 = 155,
    FLASH                    = 156,
    INHIBIT_TP               = 168,
    PAX                      = 171,
    INTENSION                = 172,
    DREAD_SPIKES             = 173,
    MAGIC_ACC_DOWN           = 174,
    MAGIC_ATK_DOWN           = 175,
    HELIX                    = 186,
    MAX_TP_DOWN              = 189,
    REQUIEM                  = 192,
    LULLABY                  = 193,
    ELEGY                    = 194,
    ENCUMBRANCE_I            = 259,
    OBLIVISCENCE             = 260,
    IMPAIRMENT               = 261,
    OMERTA                   = 262,
    DEBILITATION             = 263,
    PATHOS                   = 264,
    ENMITY_DOWN              = 291,
    CRIT_HIT_EVASION_DOWN    = 298,
    OVERLOAD                 = 299,
    BUST                     = 309,
    SLUGGISH_DAZE_1          = 391,
    SLUGGISH_DAZE_2          = 392,
    SLUGGISH_DAZE_3          = 393,
    SLUGGISH_DAZE_4          = 394,
    SLUGGISH_DAZE_5          = 395,
    WEAKENED_DAZE_1          = 396,
    WEAKENED_DAZE_2          = 397,
    WEAKENED_DAZE_3          = 398,
    WEAKENED_DAZE_4          = 399,
    WEAKENED_DAZE_5          = 400,
    BEWILDERED_DAZE_1        = 448,
    BEWILDERED_DAZE_2        = 449,
    BEWILDERED_DAZE_3        = 450,
    BEWILDERED_DAZE_4        = 451,
    BEWILDERED_DAZE_5        = 452,
    MAGIC_EVASION_DOWN       = 404,
    GEO_ATTACK_DOWN          = 557,
    GAMBIT                   = 536,
    GEO_DEFENSE_DOWN         = 558,
    GEO_MAGIC_ATK_DOWN       = 559,
    GEO_MAGIC_DEF_DOWN       = 560,
    GEO_ACCURACY_DOWN        = 561,
    GEO_EVASION_DOWN         = 562,
    GEO_MAGIC_ACC_DOWN       = 563,
    GEO_MAGIC_EVASION_DOWN   = 564,
    GEO_SLOW                 = 565,
    GEO_PARALYSIS            = 566,
    GEO_WEIGHT               = 567,
    AVOIDANCE_DOWN           = 572,
    DOUBT                    = 576,
    INUNDATION               = 597,
    TAINT                    = 630,
    HAUNT                    = 631,
}

buffTable.GetBuffIdBySpellName = function(spell)
    local upperSpell = string.upper(spell);
    -- check our debuffs for this spell name
    for k,v in pairs(buffTable.debuffs) do
        if (string.find(k, upperSpell)) then
            return v;
        end
    end
    -- check our buffs for this spell name
    for k,v in pairs(buffTable.buffs) do
        if (string.find(k, upperSpell)) then
            return v;
        end
    end
end

buffTable.GetBuffIdBySpellId = function(spellId)
    -- check our debuffs for this spell name
    return buffTable.spellToDebuff[spellId];
end

return buffTable;