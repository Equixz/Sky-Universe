local ragdoll_chance = 0.23 -- 1.0 = 100% - 0.23 = 23%...
local playerSkadet = false
local hasWeaponActive = false

----------- START RUN + JUMP = Failling chance...

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        local ped = PlayerPedId()
        if IsPedOnFoot(ped) and not IsPedSwimming(ped) and (IsPedRunning(ped) or IsPedSprinting(ped)) and not IsPedClimbing(ped) and IsPedJumping(ped) and not IsPedRagdoll(ped) then
            local chance_result = math.random()
           
            if chance_result < ragdoll_chance then 
                Citizen.Wait(400)
                SetPedToRagdoll(ped, 5000, 1, 2)
            elseif playerSkadet then
                SetPedToRagdoll(ped, 5000, 1, 2)
            else
                Citizen.Wait(2000)
            end
        end
    end
end)

----------- STOP RUN + JUMP = Failling chance...

-------- tjekker om man er skadet...

Citizen.CreateThread(function()
    time = 500
    while true do
        Citizen.Wait(time)
        local playerPed = GetPlayerPed(-1)
        local Stamina = 100-GetPlayerSprintStaminaRemaining(PlayerId())
                if GetEntityHealth(GetPlayerPed(-1)) <= 70 then 
                playerSkadet = true
                time = 500
            else
                playerSkadet = false
                time = 1000
            end
        end
end)

--------- Start /terning

RegisterCommand('terning', function(source, args, rawCommand)
    -- Interpret the number of sides
    local die = 6
        -- Interpret the number of rolls
    rolls = 1
    if args[1] ~= nil and tonumber(args[1]) then
        rolls = tonumber(args[1])
    end

    -- Roll and add up rolls
    local number = 0
    for i = rolls,1,-1
    do
        number = number + math.random(1,die)
    end

    loadAnimDict("anim@mp_player_intcelebrationmale@wank")
    TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@wank", "wank", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    Citizen.Wait(1500)
    ClearPedTasks(GetPlayerPed(-1))
    TriggerServerEvent('3dme:shareDisplay', 'Kastede <b>' .. rolls .. '</b> terninger. Fik i alt <b><u>' .. number .. '</b></u>')
end)

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict( dict )
        Citizen.Wait(5)
    end
end

--------- Slut  /terning