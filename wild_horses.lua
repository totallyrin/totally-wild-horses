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
        -- Make horse not-a-mission-entity so it can be despawned naturally
        SetEntityAsNoLongerNeeded(horse)
        -- Set random gender (0.0 = male, 1.0 = female)
        Citizen.InvokeNative(0x5653AB26C82938CF, horse, 41611, math.random(0, 1) * 1.0) -- SetCharExpression
        -- Update ped variation (required after horse gender change)
        Citizen.InvokeNative(0xCC8CA3E88256E58F, horse, false, true, true, true, false) -- UpdatePedVariation
        
        print("wild horse spawned at coordinates: x = " .. coords.x .. ", y = " .. coords.y .. ", z = " .. coords.z)
        return horse
    else
        print("failed to create horse. model: " .. modelName)
    end
    return nil
end



-- Main code

-- seed random
math.randomseed(GetGameTimer()) -- seed
for i = 1, 5 do math.random() end -- warm up

RegisterCommand('spawnWildHorse', function(source, args, rawCommand)
    spawnWildHorse(args[1], {x = tonumber(args[2]), y = tonumber(args[3]), z = tonumber(args[4])})
end, false)

Citizen.CreateThread(function()
    print("wild_horses script loaded and running")
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

                        -- generate random num between 0 and 1
                        local p = math.random()
                        -- check against spawnRate
                        if p <= horseBreed.spawnRate then
                            -- spawn horse at a random location within the spawn area
                            local spawnCoords = {
                                x = location.x + math.random(-spawnRadius, spawnRadius),
                                y = location.y + math.random(-spawnRadius, spawnRadius),
                                z = location.z + 1000.0 -- ensure horse is above ground level
                            }
                            -- set ground level
                            num, groundZ = GetGroundZAndNormalFor_3dCoord(spawnCoords.x, spawnCoords.y, spawnCoords.z)
                            spawnCoords.z = groundZ

                            -- horse should not spawn if within 50 units of player
                            local distanceToPlayer = #(playerCoords - vector3(spawnCoords.x, spawnCoords.y, spawnCoords.z))
                            if distanceToPlayer < 50.0 then
                                print("spawn loc too close to player")
                            else
                                -- select a random horse model from the breed
                                local horseModel = horseBreed.horses[math.random(#horseBreed.horses)]
                                -- spawn the horse
                                location.horse = spawnWildHorse(horseModel, spawnCoords)
                            end
                        else
                            print("horse not spawned; did not meet probability")
                        end
                    else
                        -- check if horse was despawned
                        if not Citizen.InvokeNative(0xD42BD6EB2E0F1677, location.horse) then -- DoesEntityExist
                            location.horse = nil
                        else
                            print("horse already exists")
                        end
                    end
                else
                    -- if area has a horse
                    if location.horse ~= nil then
                        -- if horse has been tamed or despawned, reset area horse
                        if not Citizen.InvokeNative(0x3B005FF0538ED2A9, location.horse) -- GetAnimalIsWild
                        or not Citizen.InvokeNative(0xD42BD6EB2E0F1677, location.horse) then -- DoesEntityExist
                            print("horse has been tamed or does not exist")
                            location.horse = nil
                        else
                            print("horse still exists")
                        end
                    end
                end
            end
        end
        Wait(5 * 1000) -- wait for 5 seconds
--         Wait(1 * 1000 * 60)  -- wait for 1 minute
    end
end)