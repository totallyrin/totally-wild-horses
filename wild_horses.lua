-- Function to spawn a wild horse
function spawnWildHorse(modelName, coords)
    local horseModel = GetHashKey(modelName)
    
    RequestModel(horseModel)
    while not HasModelLoaded(horseModel) do
        Wait(500)
    end
    
    local horse = CreatePed(horseModel, coords.x, coords.y, coords.z, false, false)
    if DoesEntityExist(horse) then
        -- Make horse model visible
        Citizen.InvokeNative(0x283978A15512B2FE, horse) -- SetRandomOutfitVariation
        -- Make horse wild
        Citizen.InvokeNative(0xAEB97D84CDF3C00B, horse, true) -- SetAnimalIsWild
        
        print("wild horse spawned at coordinates: x = " .. coords.x .. ", y = " .. coords.y .. ", z = " .. coords.z)
        return horse
    else
        print("failed to create horse. model: " .. modelName)
    end
    return nil
end



-- Main code

RegisterCommand('spawnWildHorse', function(source, args, rawCommand)
    spawnWildHorse(args[1], {x = tonumber(args[2]), y = tonumber(args[3]), z = tonumber(args[4])})
end, false)

Citizen.CreateThread(function()
    print("wild_horses script loaded and running")
--     spawnWildHorse("a_c_horse_mustang_wildbay", {x = -289.66, y = 841.45, z = 120.03})
    while true do
        -- get player coordinates
        local player = PlayerPedId()
        local playerCoords = GetEntityCoords(player, false)
        -- check each spawn loc
        for _, horseBreed in ipairs(horseData) do
            for _, location in ipairs(horseBreed.locations) do
                local distance = #(playerCoords - vector3(location.x, location.y, location.z))
                -- if player is within spawn radius
                if distance < spawnRadius then
                    -- check if horse already exists
                    if location.horse == nil then
                        -- spawn horse at a random location within the spawn area
                        local spawnCoords = {
                            x = location.x + math.random(-spawnRadius, spawnRadius),
                            y = location.y + math.random(-spawnRadius, spawnRadius),
                            z = location.z
                        }
                        
                        -- horse should not spawn if within 50 units of player
                        local distanceToPlayer = #(playerCoords - vector3(spawnCoords.x, spawnCoords.y, spawnCoords.z))
                        if distanceToPlayer < 50.0 then
                            print("spawn loc too close to player")
                        else
                            -- set ground level
                            num, groundZ = GetGroundZAndNormalFor_3dCoord(spawnCoords.x, spawnCoords.y, spawnCoords.z)
                            spawnCoords.z = groundZ
                            
                            -- select a random horse model from the breed
                            local horseModel = horseBreed.horses[math.random(#horseBreed.horses)]
                            -- spawn the horse
                            location.horse = spawnWildHorse(horseModel, spawnCoords)
                        end
                    else
                        print("horse already exists")
                    end
                else
                    -- if player is not in area, delete the horse
                    -- horse despawn should be handled naturally by game?
                    if location.horse ~= nil then
--                         DeletePed(location.horse)
                        location.horse = nil
--                         print("deleted horse")
                    end
                end
            end
        end
        Wait(5 * 1000) -- wait for 5 seconds
--         Wait(1 * 1000 * 60)  -- wait for 1 minute
    end
end)