--[[
ShotSpotter - Created by Lama	
For support - https://discord.gg/etkAKTw3M7
Do not edit below if you don't know what you are doing
]]--

RegisterNetEvent('gunshotLocation', function(gx, gy, gz)
    if QBCore.Functions.GetPlayerData().job.name == 'police' and QBCore.Functions.GetPlayerData().job.onduty == true then
        Wait(Config.NotifyTime)
        local gunshotBlip = AddBlipForRadius(gx, gy, gz, Config.BlipRadius)
        SetBlipSprite(gunshotBlip, 161)
        SetBlipColour(gunshotBlip, Config.BlipColor)
        SetBlipAsShortRange(gunshotBlip, 0)
        Wait(Config.BlipTime)
        SetBlipSprite(gunshotBlip, 2)
    end
end)
-- Notify event
RegisterNetEvent('playerNotify', function(alert)
    if QBCore.Functions.GetPlayerData().job.name == 'police' and QBCore.Functions.GetPlayerData().job.onduty == true then
        Wait(Config.NotifyTime)
        PlaySoundFrontend(-1, "TIMER_STOP", "HUD_MINI_GAME_SOUNDSET", 1)
        SetNotificationTextEntry('STRING')
        AddTextComponentString(alert)
        DrawNotification(false, false)
    end
end)

-- Gunshot detection
CreateThread( function()
    while true do
        Wait(100) 
        local ped = PlayerPedId()
        local weapon = GetSelectedPedWeapon(ped)
        local isSilenced = IsPedCurrentWeaponSilenced(ped)
        local plyPos = GetEntityCoords(ped,  true)
        local s1, s2 = GetStreetNameAtCoord(plyPos.x, plyPos.y, plyPos.z)
        local street1 = GetStreetNameFromHashKey(s1)
        local street2 = GetStreetNameFromHashKey(s2)

        if IsPedShooting(ped) and not isSilenced and not isBlacklisted(weapon) then
            TriggerServerEvent('inProgressBlip', plyPos.x, plyPos.y, plyPos.z)
            if s2 == 0 then
                TriggerServerEvent('inProgress1S', street1)
            elseif s2 ~= 0 then
                TriggerServerEvent('inProgress2S', street1, street2)
            end
            Wait(Config.AlertCooldown)
        end
    end
end)

-- Weapon blacklist function
function isBlacklisted(model)
    for _, blacklistedWeapon in pairs(Config.Blacklist) do
        if model == blacklistedWeapon then
            return true
        end
    end
    return false
end