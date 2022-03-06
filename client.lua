---------------------------------------------------------------------------------------------
-------------------------------------- VALENTINE SAFE ZONE ----------------------------------
---------------------------------------------------------------------------------------------
local config = {}
    config = Config
    Citizen.CreateThread(function()
    
        local x,y,z = table.unpack(config.ValZone)
        local outsideSafeZone = true
         while true do
            local playerCoords = GetEntityCoords(PlayerPedId())
            if Vdist(playerCoords, config.ValZone) <= config.ValDistance and outsideSafeZone then
                outsideSafeZone = false
                SetRelationshipBetweenGroups(1, `PLAYER`, `PLAYER`)
                NetworkSetFriendlyFireOption(false)
                --Citizen.InvokeNative(0xF808475FA571D823, false)
                TriggerEvent("vorp:TipBottom", Config.MessageIn, 6000)
            else
                if Vdist(playerCoords, config.ValZone) > config.ValDistance and not outsideSafeZone then
                  outsideSafeZone = true
                  SetRelationshipBetweenGroups(5, `PLAYER`, `PLAYER`)
                  NetworkSetFriendlyFireOption(true)
                  --Citizen.InvokeNative(0xF808475FA571D823, true)
                  TriggerEvent("vorp:TipBottom", Config.MessageOut, 6000)
                end
            end
            Citizen.Wait(1000)     
        end 
    end)
RegisterNetEvent("chen:safezone")
AddEventHandler("chen:safezone", function()
end)
--------------------------------------------------------------------------------------------
---------------------------------- END OF VALENTINE SAFE ZONE ------------------------------
--------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------
------------------------------------- BLACKWATER SAFE ZONE ----------------------------------
---------------------------------------------------------------------------------------------
local config = {}
    config = Config
    Citizen.CreateThread(function()
    
        local x,y,z = table.unpack(config.BwZone)
        local outsideSafeZone = true
         while true do
            local playerCoords = GetEntityCoords(PlayerPedId())
            if Vdist(playerCoords, config.BwZone) <= config.BwDistance and outsideSafeZone then
                outsideSafeZone = false
                SetRelationshipBetweenGroups(1, `PLAYER`, `PLAYER`)
                NetworkSetFriendlyFireOption(false)
                --Citizen.InvokeNative(0xF808475FA571D823, false)
                TriggerEvent("vorp:TipBottom", Config.MessageIn, 6000)
            else
                if Vdist(playerCoords, config.BwZone) > config.BwDistance and not outsideSafeZone then
                  outsideSafeZone = true
                  SetRelationshipBetweenGroups(5, `PLAYER`, `PLAYER`)
                  NetworkSetFriendlyFireOption(true)
                  --Citizen.InvokeNative(0xF808475FA571D823, true)
                  TriggerEvent("vorp:TipBottom", Config.MessageOut, 6000)
                end
            end
            Citizen.Wait(1000)     
        end 
    end)
RegisterNetEvent("chen:safezone")
AddEventHandler("chen:safezone", function()
end)
--------------------------------------------------------------------------------------------
--------------------------------- END OF BLACKWATER SAFE ZONE ------------------------------
--------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
------------------------------------- SAINT DENIS SAFE ZONE ----------------------------------
----------------------------------------------------------------------------------------------
local config = {}
    config = Config
    Citizen.CreateThread(function()
    
        local x,y,z = table.unpack(config.SdZone)
        local outsideSafeZone = true
         while true do
            local playerCoords = GetEntityCoords(PlayerPedId())
            if Vdist(playerCoords, config.SdZone) <= config.SdDistance and outsideSafeZone then
                outsideSafeZone = false
                SetRelationshipBetweenGroups(1, `PLAYER`, `PLAYER`)
                NetworkSetFriendlyFireOption(false)
                --Citizen.InvokeNative(0xF808475FA571D823, false)
                TriggerEvent("vorp:TipBottom", Config.MessageIn, 6000)
            else
                if Vdist(playerCoords, config.SdZone) > config.SdDistance and not outsideSafeZone then
                  outsideSafeZone = true
                  SetRelationshipBetweenGroups(5, `PLAYER`, `PLAYER`)
                  NetworkSetFriendlyFireOption(true)
                  --Citizen.InvokeNative(0xF808475FA571D823, true)
                  TriggerEvent("vorp:TipBottom", Config.MessageOut, 6000)
                end
            end
            Citizen.Wait(1000)     
        end 
    end)
RegisterNetEvent("chen:safezone")
AddEventHandler("chen:safezone", function()
end)
---------------------------------------------------------------------------------------------
--------------------------------- END OF SAINT DENIS SAFE ZONE ------------------------------
---------------------------------------------------------------------------------------------

