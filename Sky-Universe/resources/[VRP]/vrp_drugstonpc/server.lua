--[[
─────────────────────────────────────────────────────────────────────────────────────────────────────────
─██████──████████─██████████████─██████████████████─██████████████─██████████████─██████──────────██████─
─██░░██──██░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██████████──██░░██─
─██░░██──██░░████─██░░██████░░██─████████████░░░░██─██░░██████░░██─██░░██████░░██─██░░░░░░░░░░██──██░░██─
─██░░██──██░░██───██░░██──██░░██─────────████░░████─██░░██──██░░██─██░░██──██░░██─██░░██████░░██──██░░██─
─██░░██████░░██───██░░██████░░██───────████░░████───██░░██──██░░██─██░░██──██░░██─██░░██──██░░██──██░░██─
─██░░░░░░░░░░██───██░░░░░░░░░░██─────████░░████─────██░░██──██░░██─██░░██──██░░██─██░░██──██░░██──██░░██─
─██░░██████░░██───██░░██████░░██───████░░████───────██░░██──██░░██─██░░██──██░░██─██░░██──██░░██──██░░██─
─██░░██──██░░██───██░░██──██░░██─████░░████─────────██░░██──██░░██─██░░██──██░░██─██░░██──██░░██████░░██─
─██░░██──██░░████─██░░██──██░░██─██░░░░████████████─██░░██████░░██─██░░██████░░██─██░░██──██░░░░░░░░░░██─
─██░░██──██░░░░██─██░░██──██░░██─██░░░░░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██████████░░██─
─██████──████████─██████──██████─██████████████████─██████████████─██████████████─██████──────────██████─
─────────────────────────────────────────────────────────────────────────────────────────────────────────
]]--

local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")
local narkopris = 45

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_kekmememememes")

RegisterServerEvent('drugs:item')
AddEventHandler('drugs:item', function(antal)
	local antal = antal
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	if vRP.tryGetInventoryItem({user_id,"amf",antal,false}) then -- ITEM
		TriggerClientEvent('cancel', player)
		narkopris = math.random(399, 599)
		local reward = narkopris -- PRIS 
		local udbetaling = reward*antal
		vRP.giveMoney({user_id,udbetaling})
		PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/607377355459264549/UdmqUkhxE00JThYsj3TWzl7onhCwPnbSczVl2ogiVZoTIBW-LDb7kR_XK6rc5qt8tfOJ', function(err, text, headers) end, 'POST', json.encode({username = "blackmarket", content = "**ID: "..user_id.."** solgte "..antal.." meth til npcér for "..udbetaling.."."}), { ['Content-Type'] = 'application/json' })

	elseif	vRP.tryGetInventoryItem({user_id,"kokain",antal,false}) then
		TriggerClientEvent('cancel', player)
		narkopris = math.random(699, 899)
		local reward = narkopris -- PRIS 
		local udbetaling = reward*antal
		vRP.giveMoney({user_id,udbetaling})
		PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/607377355459264549/UdmqUkhxE00JThYsj3TWzl7onhCwPnbSczVl2ogiVZoTIBW-LDb7kR_XK6rc5qt8tfOJ', function(err, text, headers) end, 'POST', json.encode({username = "blackmarket", content = "**ID: "..user_id.."** solgte "..antal.." kokain til npcér for "..udbetaling.."."}), { ['Content-Type'] = 'application/json' })
		
	elseif	vRP.tryGetInventoryItem({user_id,"meth",antal,false}) then
		TriggerClientEvent('cancel', player)
		narkopris = math.random(576, 774)
		local reward = narkopris -- PRIS 
		local udbetaling = reward*antal
		vRP.giveMoney({user_id,udbetaling})
		PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/607377355459264549/UdmqUkhxE00JThYsj3TWzl7onhCwPnbSczVl2ogiVZoTIBW-LDb7kR_XK6rc5qt8tfOJ', function(err, text, headers) end, 'POST', json.encode({username = "blackmarket", content = "**ID: "..user_id.."** solgte "..antal.." kokain til npcér for "..udbetaling.."."}), { ['Content-Type'] = 'application/json' })
	elseif	vRP.tryGetInventoryItem({user_id,"klump10",antal,false}) then
		TriggerClientEvent('cancel', player)
		narkopris = math.random(399, 599)
		local reward = narkopris -- PRIS 
		local udbetaling = reward*antal
		vRP.giveMoney({user_id,udbetaling})
		PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/607377355459264549/UdmqUkhxE00JThYsj3TWzl7onhCwPnbSczVl2ogiVZoTIBW-LDb7kR_XK6rc5qt8tfOJ', function(err, text, headers) end, 'POST', json.encode({username = "blackmarket", content = "**ID: "..user_id.."** solgte "..antal.." skunk(10g) til npcér for "..udbetaling.."."}), { ['Content-Type'] = 'application/json' })
	else
		TriggerClientEvent("pNotify:SendNotification", source,{text = "Du har ikke flere stoffer!", type = "error", queue = "global", timeout = 4000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
		TriggerClientEvent('done', player)
		TriggerClientEvent('cancel', player)
	end
end)

RegisterServerEvent('drugs:money')
AddEventHandler('drugs:money', function(antal)
	local antal = antal
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local reward = narkopris -- PRIS 
	local udbetaling = reward*antal
	TriggerClientEvent("pNotify:SendNotification", source,{text = "Du solgte "..antal.." stk.", type = "error", queue = "global", timeout = 4000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
end)

RegisterServerEvent('drugs:checkitem')
AddEventHandler('drugs:checkitem', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
		if vRP.hasGroup({user_id,"Drugdealer"}) then
			if vRP.hasInventoryItem({user_id,"meth",1}) or vRP.hasInventoryItem({user_id,"kokain",1}) or vRP.hasInventoryItem({user_id,"amf",1}) or vRP.hasInventoryItem({user_id,"klump10",1}) then
				TriggerClientEvent('playerhasdrugs', player)
			else
				TriggerClientEvent('playerhasnodrugs', player)
			end
		else
			TriggerClientEvent('playerhasnodrugs', player)
		end
end)

RegisterServerEvent('vRP_drugNPC:policia')
AddEventHandler('vRP_drugNPC:policia', function(x,y,z)
message = "En person forsøger at sælge mig stoffer. Check Gps!"
		TriggerEvent('dispatch', x, y, z, message)
end)