local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","su_afknoti")

RegisterServerEvent("su_afknotiKICK")
AddEventHandler("su_afknotiKICK", function()
	local source = source
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})

    local moderator = vRP.hasGroup({user_id,"moderator"})
    local admin = vRP.hasGroup({user_id,"admin"})
    local ledelse = vRP.hasGroup({user_id,"Ledelse"})
    local thanighthawk = vRP.hasGroup({user_id,"thanighthawk"})

    if moderator or admin or ledelse or thanighthawk then
    --Intet
	else
		DropPlayer(source, "AFK Detected")
		PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/607377355459264549/UdmqUkhxE00JThYsj3TWzl7onhCwPnbSczVl2ogiVZoTIBW-LDb7kR_XK6rc5qt8tfOJ', function(err, text, headers) end, 'POST', json.encode({username = "AFK KICK", content = "```\nBorger ID: "..user_id.."\n```"}), { ['Content-Type'] = 'application/json' })
	end
end)

RegisterServerEvent("su_afknoti")
AddEventHandler("su_afknoti", function()
	local source = source
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})

    local moderator = vRP.hasGroup({user_id,"moderator"})
    local admin = vRP.hasGroup({user_id,"admin"})
    local ledelse = vRP.hasGroup({user_id,"Ledelse"})
    local thanighthawk = vRP.hasGroup({user_id,"thanighthawk"})

    if moderator or admin or ledelse or thanighthawk then
    --Intet
	else
		TriggerClientEvent("pNotify:SendNotification", source, {
		   	text = "<b style = 'color:red'><center><h2> AFK WARNING!!</h2><br><center><b style = 'color:white'> Du vil få kick om<br><center><u>2</u> minutter<br></b>",
		   	type = "alert",
		   	queue = "lmao",
		   	timeout = 15000,
		   	layout = "topCenter"
	})
	
	end
end)



