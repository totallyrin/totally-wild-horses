-- spawn area radius
spawnRadius = 100.0

-- horse data stored as a list of spawn locs, and list of models for those areas
-- model is picked at random when player enters one of the spawn areas
horseData = {
        -- american paint
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
--                 "a_c_horse_americanpaint_tobiano",
--                 "a_c_horse_americanpaint_overo",
                "a_c_horse_americanpaint_greyovero",
                "a_c_horse_americanpaint_splashedwhite",
                "a_c_horse_eagleflies",
        }},
        -- american standardbred
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
--                 "a_c_horse_americanstandardbred_black",
--                 "a_c_horse_americanstandardbred_buckskin",
                "a_c_horse_americanstandardbred_lightbuckskin",
                "a_c_horse_americanstandardbred_palominodapple",
                "a_c_horse_americanstandardbred_silvertailbuckskin",
        }},
        -- andalusian
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
                "a_c_horse_andalusian_darkbay",
                "a_c_horse_andalusian_perlino",
                "a_c_horse_andalusian_rosegray",
        }},
        -- appaloosa
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
--                 "a_c_horse_appaloosa_blanket",
--                 "a_c_horse_appaloosa_leopardblanket",
--                 "a_c_horse_appaloosa_fewspotted_pc",
                "a_c_horse_appaloosa_brownleopard",
                "a_c_horse_appaloosa_leopard",
                "a_c_horse_appaloosa_blacksnowflake",
                "a_c_horse_gang_uncle_endlesssummer",
                "a_c_horse_gang_charles",
        }},
        -- arabian
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
                "a_c_horse_arabian_black",
                "a_c_horse_arabian_grey",
                "a_c_horse_arabian_redchestnut",
                "a_c_horse_arabian_redchestnut_pc",
                "a_c_horse_arabian_rosegreybay",
                "a_c_horse_arabian_warpedbrindle_pc",
                "a_c_horse_arabian_white",
        }},
        -- ardennes
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
                "a_c_horse_ardennes_bayroan",
                "a_c_horse_ardennes_irongreyroan",
                "a_c_horse_ardennes_strawberryroan",
                "a_c_horse_gang_bill",
        }},
        -- belgian draft horse
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
                "a_c_horse_belgian_blondchestnut",
                "a_c_horse_belgian_mealychestnut",
        }},
        -- breton
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
                "a_c_horse_breton_grullodun",
                "a_c_horse_breton_mealydapplebay",
                "a_c_horse_breton_redroan",
                "a_c_horse_breton_sealbrown",
                "a_c_horse_breton_sorrel",
                "a_c_horse_breton_steelgrey",
        }},
        -- criollo
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
                "a_c_horse_criollo_baybrindle",
                "a_c_horse_criollo_bayframeovero",
                "a_c_horse_criollo_blueroanovero",
                "a_c_horse_criollo_dun",
                "a_c_horse_criollo_marblesabino",
                "a_c_horse_criollo_sorrelovero",
        }},
        -- dutch warmblood
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
                "a_c_horse_dutchwarmblood_chocolateroan",
                "a_c_horse_dutchwarmblood_sealbrown",
                "a_c_horse_dutchwarmblood_sootybuckskin",
                "a_c_horse_buell_warvets",
        }},
        -- gypsy cob
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
                "a_c_horse_gypsycob_palominoblagdon",
                "a_c_horse_gypsycob_piebald",
                "a_c_horse_gypsycob_skewbald",
                "a_c_horse_gypsycob_splashedbay",
                "a_c_horse_gypsycob_splashedpiebald",
                "a_c_horse_gypsycob_whiteblagon",
        }},
        -- hungarian half-bred
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
--                 "a_c_horse_hungarianhalfbred_flaxenchestnut",        
                "a_c_horse_hungarianhalfbred_darkdapplebay",
                "a_c_horse_hungarianhalfbred_liverchestnut",
                "a_c_horse_hungarianhalfbred_piebaldtobiano",
                "a_c_horse_gang_john",
        }},
        -- kentucky saddler
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
--                 "a_c_horse_kentuckysaddle_black",
--                 "a_c_horse_kentuckysaddle_buttermilkbuckskin_pc",
--                 "a_c_horse_kentuckysaddle_chestnutpinto",
--                 "a_c_horse_kentuckysaddle_grey",
--                 "a_c_horse_kentuckysaddle_silverbay",
                "a_c_horse_gang_uncle",
        }},
        -- kladruber
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
                "a_c_horse_kladruber_black",
                "a_c_horse_kladruber_cremello",
                "a_c_horse_kladruber_dapplerosegrey",
                "a_c_horse_kladruber_grey",
                "a_c_horse_kladruber_silver",
                "a_c_horse_kladruber_white",
        }},
        -- missouri fox trotter
        {spawnRate = 1, locations = {{x = 1320.33, y = 661.62, z = 87.26, horse = nil}}, horses = {
                "a_c_horse_missourifoxtrotter_amberchampagne",
                "a_c_horse_missourifoxtrotter_blacktovero",
                "a_c_horse_missourifoxtrotter_blueroan",
                "a_c_horse_missourifoxtrotter_buckskinbrindle",
                "a_c_horse_missourifoxtrotter_dapplegrey",
                "a_c_horse_missourifoxtrotter_sablechampagne",
                "a_c_horse_missourifoxtrotter_silverdapplepinto",
                "a_c_horse_gang_micah",
        }},
        -- morgan
--         {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
--                 "a_c_horse_morgan_bay",
--                 "a_c_horse_morgan_bayroan",
--                 "a_c_horse_morgan_flaxenchestnut",
--                 "a_c_horse_morgan_liverchestnut_pc",
--                 "a_c_horse_morgan_palomino",
--         }},
        -- mustang
        {spawnRate = 1, locations = {{x = -420.62, y = 921.22, z = 117.48, horse = nil}}, horses = {
--                 "a_c_horse_mustang_grullodun",
--                 "a_c_horse_mustang_wildbay",
                "a_c_horse_mustang_tigerstripedbay",
                "a_c_horse_mustang_goldendun",
                "a_c_horse_mustang_blackovero",
                "a_c_horse_mustang_buckskin",
                "a_c_horse_mustang_chestnutovero",
                "a_c_horse_mustang_reddunovero",
                "a_c_horse_gang_sadie_endlesssummer",
        }},
        -- nokota
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
--                 "a_c_horse_nokota_blueroan",
--                 "a_c_horse_nokota_whiteroan",
                "a_c_horse_nokota_reversedappleroan",
                "a_c_horse_gang_karen",
                "a_c_horse_gang_charles_endlesssummer",
        }},
        -- norfolk roadster
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
                "a_c_horse_norfolkroadster_black",
                "a_c_horse_norfolkroadster_dappledbuckskin",
                "a_c_horse_norfolkroadster_piebaldroan",
                "a_c_horse_norfolkroadster_rosegrey",
                "a_c_horse_norfolkroadster_speckledgrey",
                "a_c_horse_norfolkroadster_spottedtricolor",
        }},
        -- shire
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
                "a_c_shire_darkbay",
                "a_c_shire_lightgrey",
                "a_c_shire_ravenblack",
        }},
        -- suffolk punch
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
                "a_c_horse_suffolkpunch_redchestnut",
                "a_c_horse_suffolkpunch_sorrel",
        }},
        -- tennessee walker
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
--                 "a_c_horse_tennesseewalker_blackrabicano",
--                 "a_c_horse_tennesseewalker_chestnut",
--                 "a_c_horse_tennesseewalker_dapplebay",
--                 "a_c_horse_tennesseewalker_redroan",
--                 "a_c_horse_tennesseewalker_goldpalomino_pc",
                "a_c_horse_tennesseewalker_flaxenroan",
                "a_c_horse_tennesseewalker_mahoganybay",
        }},
        -- thoroughbred
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
--                 "a_c_horse_thoroughbred_bloodbay",
--                 "a_c_horse_thoroughbred_dapplegrey",
                "a_c_horse_thoroughbred_blackchestnut",
                "a_c_horse_thoroughbred_brindle",
                "a_c_horse_thoroughbred_reversedappleblack",
                "a_c_horse_gang_john",
                "a_c_horse_gang_john_endlesssummer",
        }},
        -- turkoman
        {spawnRate = 1, locations = {{x = -406.17, y = 928.29, z = 117.35, horse = nil}}, horses = {
                "a_c_horse_turkoman_black",
                "a_c_horse_turkoman_chestnut",
                "a_c_horse_turkoman_darkbay",
                "a_c_horse_turkoman_gold",
                "a_c_horse_turkoman_grey",
                "a_c_horse_turkoman_perlino",
                "a_c_horse_turkoman_silver",
                "a_c_horse_gang_sadie",
        }},
}