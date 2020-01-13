local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "su_perfnoti")

pingLimit = 100
pingKick = 199
fpsLimit = 40
fpsKick = 20

RegisterServerEvent('su_perfnoti:sendnotifps')
AddEventHandler("su_perfnoti:sendnotifps", function(fps)
    local source = source
    local user_id = vRP.getUserId({source})
        if fps <= fpsLimit then
        PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/637743390582112299/OcSnY2WKtxauJReRHVuiQQNyWzH0GsMjVdXjfEXFcYfbMlHOyFGrPPS3T__nh6zcRWsb', function(err, text, headers) end, 'POST', json.encode({username = "perfnoti fps", content = "```BorgerID: "..user_id.."\n[FPS] "..fps.." fps```"}), { ['Content-Type'] = 'application/json' })
        end

        if fps <= fpsKick then
    	--DropPlayer(source, "Low fps")
        --PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/637743390582112299/OcSnY2WKtxauJReRHVuiQQNyWzH0GsMjVdXjfEXFcYfbMlHOyFGrPPS3T__nh6zcRWsb', function(err, text, headers) end, 'POST', json.encode({username = "FPS KICK", content = "```BorgerID: "..user_id.."\n[FPS] "..fps.." fps```"}), { ['Content-Type'] = 'application/json' })
        TriggerClientEvent('su_perfnoti:strike', source)
        TriggerClientEvent("pNotify:SendNotification", source,{
            text = "<b style = 'color:red'><center><h2> ADVARSEL!!</h2><br><center><b style = 'color:black'> Din fps er pt "..fps.."<br>Grænsen er sat til 20<br>Din trejde advarsel udløser et kick.<br><br></b>",
            type = "alert",
            theme = "alarm",
            queue = "lmao",
            timeout = 15000,
            layout = "topCenter"
        })
        
        end
end)

RegisterServerEvent("su_perfnoti:sendnotiping")
AddEventHandler("su_perfnoti:sendnotiping", function()
	ping = GetPlayerPing(source)
	local source = source
    local user_id = vRP.getUserId({source})
	if ping >= pingLimit then
		PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/637743390582112299/OcSnY2WKtxauJReRHVuiQQNyWzH0GsMjVdXjfEXFcYfbMlHOyFGrPPS3T__nh6zcRWsb', function(err, text, headers) end, 'POST', json.encode({username = "perfnoti ms", content = "```BorgerID: "..user_id.."\n[PING] "..ping.." ms```"}), { ['Content-Type'] = 'application/json' })
	end
    if ping >= pingKick then
		--DropPlayer(source, "High ping")
        --PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/637743390582112299/OcSnY2WKtxauJReRHVuiQQNyWzH0GsMjVdXjfEXFcYfbMlHOyFGrPPS3T__nh6zcRWsb', function(err, text, headers) end, 'POST', json.encode({username = "PING KICK", content = "```BorgerID: "..user_id.."\n[PING] "..ping.." ms```"}), { ['Content-Type'] = 'application/json' })
	   TriggerClientEvent('su_perfnoti:strike', source)
       TriggerClientEvent("pNotify:SendNotification", source,{
            text = "<b style = 'color:red'><center><h2> ADVARSEL!!</h2><br><center><b style = 'color:black'> Din ping(ms) er pt "..ping.." ms<br>Grænsen er sat til 199<br>Din trejde advarsel udløser et kick.<br><br></b>",
            type = "alert",
            theme = "alarm",
            queue = "lmao",
            timeout = 15000,
            layout = "topCenter"
        })
       
    end
end)

RegisterServerEvent("su_perfnoti:kick")
AddEventHandler("su_perfnoti:kick", function()
    local source = source
    local user_id = vRP.getUserId({source})
    vRP.kick({source,"Slow performance detected"})
    PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/637743390582112299/OcSnY2WKtxauJReRHVuiQQNyWzH0GsMjVdXjfEXFcYfbMlHOyFGrPPS3T__nh6zcRWsb', function(err, text, headers) end, 'POST', json.encode({username = "KICK", content = "```BorgerID: "..user_id.."\nKickreason: Slow performance detected```"}), { ['Content-Type'] = 'application/json' })
end)