local useColors = true -- Do you want the FPS to change color based on the FPS.
local fpsAlarm = false
local strikes = 0
local prevframes, prevtime, curtime, curframes, fps = 0, 0, 0, 0, 0

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "su_perfnoti")

Citizen.CreateThread(function()
    while not NetworkIsPlayerActive(PlayerId()) or not NetworkIsSessionStarted() do
        Citizen.Wait(0)
        prevframes = GetFrameCount()
        prevtime = GetGameTimer()
    end

    while true do
        Citizen.Wait(10)
        curtime = GetGameTimer()
        curframes = GetFrameCount()

        if (curtime - prevtime) > 1000 then
            fps = (curframes - prevframes) - 1              
            prevtime = curtime
            prevframes = curframes
        end

		    if fps > 0 and fps < 40 then
               fpsAlarm = true
            else
                fpsAlarm = false
		    end
            
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(150000)
        if fpsAlarm then
            TriggerServerEvent('su_perfnoti:sendnotifps', fps)
        end
        if strikes >= 3 then
            TriggerServerEvent("su_perfnoti:kick")
        end
        TriggerServerEvent("su_perfnoti:sendnotiping")
    end
end)

RegisterNetEvent('su_perfnoti:strike')
AddEventHandler('su_perfnoti:strike', function()
    strikes = strikes + 1
end)
 