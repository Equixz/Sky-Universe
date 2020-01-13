local openwindow = true

RegisterNetEvent("openwindownow")
AddEventHandler('openwindownow', function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local playerCar = GetVehiclePedIsIn(playerPed, false)
        if ( GetPedInVehicleSeat( playerCar, -1 ) == playerPed ) then 
            SetEntityAsMissionEntity( playerCar, true, true )
        
            if ( openwindow ) then
                RollDownWindow(playerCar, 0)
                RollDownWindow(playerCar, 1)
                openwindow = false
            else
                RollUpWindow(playerCar, 0)
                RollUpWindow(playerCar, 1)
                openwindow = true
            end
        end
    end
end )


RegisterCommand("windows", function(source, args, raw)
    TriggerEvent("openwindownow")
end, false)

---Door1---
local opendoor1 = true
RegisterNetEvent("opendoor1now")
AddEventHandler('opendoor1now', function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local playerCar = GetVehiclePedIsIn(playerPed, false)
        if ( GetPedInVehicleSeat( playerCar, -1 ) == playerPed ) then 
            SetEntityAsMissionEntity( playerCar, true, true )
        
            if ( opendoor1 ) then
                SetVehicleDoorOpen(playerCar,0)
                opendoor1 = false
            else
                SetVehicleDoorShut(playerCar,0)
                opendoor1 = true
            end
        end
    end
end )

RegisterCommand("door1", function(source, args, raw)
    TriggerEvent("opendoor1now")
end, false)

---Door2---
local opendoor2 = true
RegisterNetEvent("opendoor2now")
AddEventHandler('opendoor2now', function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local playerCar = GetVehiclePedIsIn(playerPed, false)
        if ( GetPedInVehicleSeat( playerCar, -1 ) == playerPed ) then 
            SetEntityAsMissionEntity( playerCar, true, true )
        
            if ( opendoor2 ) then
                SetVehicleDoorOpen(playerCar,1)
                opendoor2 = false
            else
                SetVehicleDoorShut(playerCar,1)
                opendoor2 = true
            end
        end
    end
end )

RegisterCommand("door2", function(source, args, raw)
    TriggerEvent("opendoor2now")
end, false)

---Door3---
local opendoor3 = true
RegisterNetEvent("opendoor3now")
AddEventHandler('opendoor3now', function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local playerCar = GetVehiclePedIsIn(playerPed, false)
        if ( GetPedInVehicleSeat( playerCar, -1 ) == playerPed ) then 
            SetEntityAsMissionEntity( playerCar, true, true )
        
            if ( opendoor3 ) then
                SetVehicleDoorOpen(playerCar,2)
                opendoor3 = false
            else
                SetVehicleDoorShut(playerCar,2)
                opendoor3 = true
            end
        end
    end
end )

RegisterCommand("door3", function(source, args, raw)
    TriggerEvent("opendoor3now")
end, false)

---Door4---
local opendoor4 = true
RegisterNetEvent("opendoor4now")
AddEventHandler('opendoor4now', function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local playerCar = GetVehiclePedIsIn(playerPed, false)
        if ( GetPedInVehicleSeat( playerCar, -1 ) == playerPed ) then 
            SetEntityAsMissionEntity( playerCar, true, true )
        
            if ( opendoor4 ) then
                SetVehicleDoorOpen(playerCar,3)
                opendoor4 = false
            else
                SetVehicleDoorShut(playerCar,3)
                opendoor4 = true
            end
        end
    end
end )

RegisterCommand("door4", function(source, args, raw)
    TriggerEvent("opendoor4now")
end, false)

---Hoood---
local openhood = true
RegisterNetEvent("openhoodnow")
AddEventHandler('openhoodnow', function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local playerCar = GetVehiclePedIsIn(playerPed, false)
        if ( GetPedInVehicleSeat( playerCar, -1 ) == playerPed ) then 
            SetEntityAsMissionEntity( playerCar, true, true )
        
            if ( openhood ) then
                SetVehicleDoorOpen(playerCar,4)
                openhood = false
            else
                SetVehicleDoorShut(playerCar,4)
                openhood = true
            end
        end
    end
end )

RegisterCommand("hood", function(source, args, raw)
    TriggerEvent("openhoodnow")
end, false)

---Trunk---
local opentrunk = true
RegisterNetEvent("opentrunknow")
AddEventHandler('opentrunknow', function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local playerCar = GetVehiclePedIsIn(playerPed, false)
        if ( GetPedInVehicleSeat( playerCar, -1 ) == playerPed ) then 
            SetEntityAsMissionEntity( playerCar, true, true )
        
            if ( opentrunk ) then
                SetVehicleDoorOpen(playerCar,5)
                opentrunk = false
            else
                SetVehicleDoorShut(playerCar,5)
                opentrunk = true
            end
        end
    end
end )

RegisterCommand("trunk", function(source, args, raw)
    TriggerEvent("opentrunknow")
end, false)
