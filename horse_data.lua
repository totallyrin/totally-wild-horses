---
--- hose_data.lua
---
--- This file contains the horse spawn locations and models for the wild_horses script.
---

-- debug mode (enables print statements)
debug = false
-- spawn area radius, default 100.0
spawnRadius = 100.0
-- player in range radius, default 150.0
playerRadius = 200.0
-- attempt spawn every x seconds, default 30s
checkEvery = 30
-- minimum distance from player at which the horse can spawn, default 25.0
spawnDistance = 25.0

--- horse data stored as a list of spawn locs, and list of possible models for those areas
--- model is picked at random when player enters one of the spawn areas
--- each breed / group has a spawnRate, which is a percentage (1.0 = 100% chance of spawning)
--- default 0.25 for "rare" horses and 0.50 for everything else
--- commented out models are models that already get spawned by the game itself. this script DOES NOT alter existing
--- spawn areas for horses, only adds new spawn areas
--- where possible I have tried to keep spawn areas consistent. I.e. if there is a base game spawn for Mustangs, I
--- have added a Mustang spawn point in the same area.
horseData = {
    -- american paint
    { spawnRate = 0.5, locations = {
        { x = 666.68, y = 1909.22, z = 219.3, horse = nil }, -- ambarino, donner falls
        { x = -1368.36, y = -2570.1, z = 74.33, horse = nil }, -- hennigan's stead
        { x = -3127.05, y = -3138.27, z = 2.62, horse = nil }, -- cholla springs, lake don julio
        { x = -5703.14, y = -3309.0, z = -23.16, horse = nil }, -- gaptooth ridge
    }, horses = {
        --"a_c_horse_americanpaint_tobiano",
        --"a_c_horse_americanpaint_overo",
        "a_c_horse_americanpaint_greyovero",
        "a_c_horse_americanpaint_splashedwhite",
        "a_c_horse_eagleflies",
    } },
    -- american standardbred
    { spawnRate = 0.5, locations = {
        { x = 469.64, y = 1513.77, z = 172.13, horse = nil }, -- cumberland forest, fort wallace
        { x = -1858.81, y = 523.15, z = 114.95, horse = nil }, -- big valley
        { x = -3533.14, y = -3333.79, z = 11.95, horse = nil }, -- cholla springs, lake don julio
        { x = -4253.65, y = -2953.35, z = -5.29, horse = nil }, -- cholla springs, mercer station
    }, horses = {
        --"a_c_horse_americanstandardbred_black",
        --"a_c_horse_americanstandardbred_buckskin",
        "a_c_horse_americanstandardbred_lightbuckskin",
        "a_c_horse_americanstandardbred_palominodapple",
        "a_c_horse_americanstandardbred_silvertailbuckskin",
    } },
    -- andalusian
    { spawnRate = 0.5, locations = {
        { x = -1011.04, y = -1022.52, z = 61.13, horse = nil }, -- great plains, north of blackwater
    }, horses = {
        "a_c_horse_andalusian_darkbay",
        "a_c_horse_andalusian_perlino",
        "a_c_horse_andalusian_rosegray",
    } },
    -- appaloosa
    { spawnRate = 0.5, locations = {
        { x = 336.46, y = 2007.97, z = 215.31, horse = nil }, -- ambarino, wapiti
        { x = -979.31, y = 814.5, z = 121.49, horse = nil }, -- cattail pond
        { x = -2494.9, y = 559.25, z = 137.26, horse = nil }, -- big valley
        { x = -4555.11, y = -2656.87, z = -7.45, horse = nil }, -- cholla springs
    }, horses = {
        --"a_c_horse_appaloosa_blanket",
        --"a_c_horse_appaloosa_leopardblanket",
        --"a_c_horse_appaloosa_fewspotted_pc",
        "a_c_horse_appaloosa_brownleopard",
        "a_c_horse_appaloosa_leopard",
        "a_c_horse_appaloosa_blacksnowflake",
        "a_c_horse_gang_uncle_endlesssummer",
        "a_c_horse_gang_charles",
    } },
    -- arabian
    { spawnRate = 0.25, locations = {
        { x = 258.14, y = 2315.69, z = 300.85, horse = nil }, -- ambarino, wapiti
        { x = -2042.91, y = 1810.61, z = 243.52, horse = nil }, -- ambarino, lake isabella
    }, horses = {
        "a_c_horse_arabian_black",
        "a_c_horse_arabian_grey",
        "a_c_horse_arabian_redchestnut",
        "a_c_horse_arabian_redchestnut_pc",
        "a_c_horse_arabian_rosegreybay",
        "a_c_horse_arabian_warpedbrindle_pc",
        "a_c_horse_arabian_white",
    } },
    -- ardennes
    { spawnRate = 0.5, locations = {
        { x = 1424.4, y = 1354.95, z = 163.25, horse = nil }, -- ambarino, o'creagh's run
        { x = -1793.89, y = -930.72, z = 107.38, horse = nil }, -- big valley, south of strawberry
    }, horses = {
        "a_c_horse_ardennes_bayroan",
        "a_c_horse_ardennes_irongreyroan",
        "a_c_horse_ardennes_strawberryroan",
        "a_c_horse_gang_bill",
    } },
    -- belgian draft horse
    { spawnRate = 0.5, locations = {
        { x = 1231.4, y = 326.07, z = 93.15, horse = nil }, -- emerald ranch
        { x = -1555.72, y = -1598.41, z = 83.28, horse = nil }, -- great plains
    }, horses = {
        "a_c_horse_belgian_blondchestnut",
        "a_c_horse_belgian_mealychestnut",
    } },
    -- breton
    { spawnRate = 0.5, locations = {
        { x = -2884.05, y = -252.41, z = 185.8, horse = nil }, -- big valley, owanjila
        { x = 1524.25, y = 2189.75, z = 334.68, horse = nil }, -- grizzlies east
    }, horses = {
        "a_c_horse_breton_grullodun",
        "a_c_horse_breton_mealydapplebay",
        "a_c_horse_breton_redroan",
        "a_c_horse_breton_sealbrown",
        "a_c_horse_breton_sorrel",
        "a_c_horse_breton_steelgrey",
    } },
    -- criollo
    { spawnRate = 0.5, locations = {
        { x = 1412.82, y = -2135.1, z = 50.64, horse = nil }, -- south of braithwaite manor
        { x = -3872.7, y = -3556.77, z = 53.84, horse = nil }, -- rio bravo
    }, horses = {
        "a_c_horse_criollo_baybrindle",
        "a_c_horse_criollo_bayframeovero",
        "a_c_horse_criollo_blueroanovero",
        "a_c_horse_criollo_dun",
        "a_c_horse_criollo_marblesabino",
        "a_c_horse_criollo_sorrelovero",
    } },
    -- dutch warmblood
    { spawnRate = 0.5, locations = {
        { x = -18.86, y = 1339.02, z = 177.49, horse = nil }, -- cumberland forest
        { x = 1557.39, y = 2.31, z = 99.23, horse = nil }, -- scarlett meadows / emerald ranch
    }, horses = {
        "a_c_horse_dutchwarmblood_chocolateroan",
        "a_c_horse_dutchwarmblood_sealbrown",
        "a_c_horse_dutchwarmblood_sootybuckskin",
        "a_c_horse_buell_warvets",
    } },
    -- gypsy cob
    { spawnRate = 0.5, locations = {
        { x = -1211.05, y = 2173.38, z = 335.86, horse = nil }, -- ambarino, colter
        { x = -2702.84, y = -1469.91, z = 149.17, horse = nil }, -- tall tress, aurora basin
    }, horses = {
        "a_c_horse_gypsycob_palominoblagdon",
        "a_c_horse_gypsycob_piebald",
        "a_c_horse_gypsycob_skewbald",
        "a_c_horse_gypsycob_splashedbay",
        "a_c_horse_gypsycob_splashedpiebald",
        "a_c_horse_gypsycob_whiteblagon",
    } },
    -- hungarian half-bred
    { spawnRate = 0.5, locations = {
        { x = -1391.68, y = -1110.36, z = 75.65, horse = nil }, -- great plains
        { x = -4117.64, y = -2582.63, z = -1.11, horse = nil }, -- cholla springs
    }, horses = {
        --"a_c_horse_hungarianhalfbred_flaxenchestnut",
        "a_c_horse_hungarianhalfbred_darkdapplebay",
        "a_c_horse_hungarianhalfbred_liverchestnut",
        "a_c_horse_hungarianhalfbred_piebaldtobiano",
        "a_c_horse_gang_john",
    } },
    -- kentucky saddler
    --{ spawnRate = 0.5, locations = {
    -- ADD SPAWN LOCATIONS HERE
    --}, horses = {
    --    --"a_c_horse_kentuckysaddle_black",
    --    --"a_c_horse_kentuckysaddle_buttermilkbuckskin_pc",
    --    --"a_c_horse_kentuckysaddle_chestnutpinto",
    --    --"a_c_horse_kentuckysaddle_grey",
    --    --"a_c_horse_kentuckysaddle_silverbay",
    --    "a_c_horse_gang_uncle", -- BUGGED; shows up as "Nell II". Not tested with saving tamed horse
    --} },
    -- kladruber
    { spawnRate = 0.5, locations = {
        { x = 2353.74, y = 1455.02, z = 143.56, horse = nil }, -- roanoke ridge
        { x = -2901.37, y = -2155.15, z = 72.53, horse = nil }, -- hennigan's stead
    }, horses = {
        "a_c_horse_kladruber_black",
        "a_c_horse_kladruber_cremello",
        "a_c_horse_kladruber_dapplerosegrey",
        "a_c_horse_kladruber_grey",
        "a_c_horse_kladruber_silver",
        "a_c_horse_kladruber_white",
    } },
    -- missouri fox trotter
    { spawnRate = 0.25, locations = {
        { x = 1320.33, y = 661.62, z = 87.26, horse = nil }
    }, horses = {
        "a_c_horse_missourifoxtrotter_amberchampagne",
        "a_c_horse_missourifoxtrotter_blacktovero",
        "a_c_horse_missourifoxtrotter_blueroan",
        "a_c_horse_missourifoxtrotter_buckskinbrindle",
        "a_c_horse_missourifoxtrotter_dapplegrey",
        "a_c_horse_missourifoxtrotter_sablechampagne",
        "a_c_horse_missourifoxtrotter_silverdapplepinto",
        "a_c_horse_gang_micah",
    } },
    -- morgan
    --{ spawnRate = 0.5, locations = {
    -- ADD SPAWN LOCATIONS HERE
    --}, horses = {
    --    "a_c_horse_morgan_bay",
    --    "a_c_horse_morgan_bayroan",
    --    "a_c_horse_morgan_flaxenchestnut",
    --    "a_c_horse_morgan_liverchestnut_pc",
    --    "a_c_horse_morgan_palomino",
    --} },
    -- mustang
    { spawnRate = 0.5, locations = {
        { x = 564.89, y = 78.4, z = 151.89, horse = nil }, -- heartlands
        { x = -2820.49, y = -2745.67, z = 78.82, horse = nil }, -- hennigan's stead
        { x = -3486.73, y = -2081.29, z = -2.05, horse = nil }, -- cholla springs, north of armadillo
        { x = -4676.37, y = -3584.72, z = 16.43, horse = nil }, -- rio bravo
    }, horses = {
        --"a_c_horse_mustang_grullodun",
        --"a_c_horse_mustang_wildbay",
        "a_c_horse_mustang_tigerstripedbay",
        "a_c_horse_mustang_goldendun",
        "a_c_horse_mustang_blackovero",
        "a_c_horse_mustang_buckskin",
        "a_c_horse_mustang_chestnutovero",
        "a_c_horse_mustang_reddunovero",
        "a_c_horse_gang_sadie_endlesssummer",
    } },
    -- nokota
    { spawnRate = 0.5, locations = {
        { x = 510.66, y = 1114.48, z = 193.3, horse = nil }, -- cumberland forest
        { x = -782.64, y = -845.57, z = 53.2, horse = nil }, -- big valley, south of bard's crossing
        { x = -2311.65, y = -2970.0, z = 4.97, horse = nil }, -- hennigan's stead
        { x = -3508.05, y = -2903.23, z = 1.7, horse = nil }, -- cholla springs, lake don julio
        { x = -4253.65, y = -2953.35, z = -5.29, horse = nil }, -- cholla springs, mercer station
        { x = -5060.98, y = -3597.31, z = -2.63, horse = nil }, -- rio bravo
    }, horses = {
        --"a_c_horse_nokota_blueroan",
        --"a_c_horse_nokota_whiteroan",
        "a_c_horse_nokota_reversedappleroan",
        "a_c_horse_gang_karen",
        "a_c_horse_gang_charles_endlesssummer",
    } },
    -- norfolk roadster
    { spawnRate = 0.5, locations = {
        { x = 2154.24, y = 122.66, z = 71.14, horse = nil }, -- roanoke ridge, kamassa river
        { x = -2598.05, y = 1088.8, z = 205.06, horse = nil }, -- big valley
    }, horses = {
        "a_c_horse_norfolkroadster_black",
        "a_c_horse_norfolkroadster_dappledbuckskin",
        "a_c_horse_norfolkroadster_piebaldroan",
        "a_c_horse_norfolkroadster_rosegrey",
        "a_c_horse_norfolkroadster_speckledgrey",
        "a_c_horse_norfolkroadster_spottedtricolor",
    } },
    -- shire
    { spawnRate = 0.5, locations = {
        { x = -254.13, y = 1026.25, z = 127.19, horse = nil }, -- valentine
        { x = -523.57, y = -398.59, z = 82.72, horse = nil }, -- flatneck station
    }, horses = {
        "a_c_shire_darkbay",
        "a_c_shire_lightgrey",
        "a_c_shire_ravenblack",
    } },
    -- suffolk punch
    { spawnRate = 0.5, locations = {
        { x = 1719.27, y = -1886.4, z = 47.75, horse = nil }, -- lemoyne, bolger glade
        { x = 1009.59, y = -781.91, z = 83.63, horse = nil }, -- scarlett meadows
    }, horses = {
        "a_c_horse_suffolkpunch_redchestnut",
        "a_c_horse_suffolkpunch_sorrel",
    } },
    -- tennessee walker (some locs may be missing)
    { spawnRate = 0.5, locations = {
        { x = 1016.22, y = 237.16, z = 116.7, horse = nil }, -- heartlands
        { x = 564.89, y = 78.4, z = 151.89, horse = nil }, -- heartlands
        { x = 301.05, y = -68.16, z = 108.97, horse = nil }, -- heartlands
        { x = 822.1, y = 2092.26, z = 279.09, horse = nil }, -- ambarino, near wapiti
        { x = -492.5, y = -385.79, z = 83.88, horse = nil }, -- flatneck station
        { x = -1391.68, y = -1110.36, z = 75.65, horse = nil }, -- great plains
        { x = -2471.0, y = -2770.56, z = 72.16, horse = nil }, -- hennigan's stead
        { x = -2820.49, y = -2745.67, z = 78.82, horse = nil }, -- hennigan's stead
        { x = -3486.73, y = -2081.29, z = -2.05, horse = nil }, -- cholla springs, north of armadillo
    }, horses = {
        --"a_c_horse_tennesseewalker_blackrabicano",
        --"a_c_horse_tennesseewalker_chestnut",
        --"a_c_horse_tennesseewalker_dapplebay",
        --"a_c_horse_tennesseewalker_redroan",
        --"a_c_horse_tennesseewalker_goldpalomino_pc",
        "a_c_horse_tennesseewalker_flaxenroan",
        "a_c_horse_tennesseewalker_mahoganybay",
    } },
    -- thoroughbred
    { spawnRate = 0.5, locations = {
        { x = 998.17, y = 33.41, z = 94.34, horse = nil }, -- heartlands
        { x = -2471.0, y = -2770.56, z = 72.16, horse = nil }, -- hennigan's stead
        { x = -4117.64, y = -2582.63, z = -1.11, horse = nil }, -- cholla springs
    }, horses = {
        --"a_c_horse_thoroughbred_bloodbay",
        --"a_c_horse_thoroughbred_dapplegrey",
        "a_c_horse_thoroughbred_blackchestnut",
        "a_c_horse_thoroughbred_brindle",
        "a_c_horse_thoroughbred_reversedappleblack",
        "a_c_horse_gang_john",
        "a_c_horse_gang_john_endlesssummer",
    } },
    -- turkoman
    { spawnRate = 0.25, locations = {
        { x = 2811.58, y = 2304.32, z = 157.03, horse = nil }, -- brandywine drop
        { x = -5667.54, y = -2632.1, z = -5.36, horse = nil }, -- gaptooth ridge
    }, horses = {
        "a_c_horse_turkoman_black",
        "a_c_horse_turkoman_chestnut",
        "a_c_horse_turkoman_darkbay",
        "a_c_horse_turkoman_gold",
        "a_c_horse_turkoman_grey",
        "a_c_horse_turkoman_perlino",
        "a_c_horse_turkoman_silver",
        "a_c_horse_gang_sadie",
    } },
}