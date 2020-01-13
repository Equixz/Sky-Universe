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

lock = false

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_bank")

RegisterServerEvent('kaz:virus')
AddEventHandler('kaz:virus', function(police1)
    local source = source
    local user_id = vRP.getUserId({source})
		if vRP.hasPermission({user_id, "player.loot"}) then 
			if vRP.tryFullPayment({user_id,50000}) then	
				vRP.giveInventoryItem({user_id,"virus",1,false})
				TriggerClientEvent("pNotify:SendNotification", source,{text = "Success! Der er "..police1.." betjente på arbejde.", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
			else
				TriggerClientEvent("pNotify:SendNotification", source,{text = "Du har ikke råd!", type = "error", queue = "global", timeout = 8000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
			end
		else
			TriggerClientEvent("pNotify:SendNotification", source,{text = "Du er ikke Kriminel", type = "error", queue = "global", timeout = 8000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
		end
end)

RegisterServerEvent('kaz:svej')
AddEventHandler('kaz:svej', function()
    local source = source
    local user_id = vRP.getUserId({source})
	if vRP.hasPermission({user_id, "player.loot"}) then 
			TriggerClientEvent("pNotify:SendNotification", source,{text = "Stjæler skære brænder... (vent 60 sekunder)", type = "error", queue = "global", timeout = 60000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
			Citizen.Wait(60000)
			vRP.giveInventoryItem({user_id,"svejser",1,false})
			TriggerClientEvent("pNotify:SendNotification", source,{text = "Du stjal 1 stk skære brænder.", type = "error", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
		else
			TriggerClientEvent("pNotify:SendNotification", source,{text = "Du er ikke Kriminel... (vent 60 sekunder)", type = "error", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
		end
end)

RegisterServerEvent('kaz:virusbrugt')
AddEventHandler('kaz:virusbrugt', function()
    local source = source
    local user_id = vRP.getUserId({source})
		if vRP.hasPermission({user_id, "player.loot"}) then 
			if vRP.tryGetInventoryItem({user_id,"virus",1,false}) then
				TriggerClientEvent('kaz:virusbrugt2', source)
			else
			TriggerClientEvent("pNotify:SendNotification", source,{text = "Du har inngen hackingtaske!", type = "error", queue = "global", timeout = 8000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
			end
		else
			TriggerClientEvent("pNotify:SendNotification", source,{text = "Du er ikke kriminel!", type = "error", queue = "global", timeout = 8000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
		end
end)

RegisterServerEvent('kaz:bankstartet')
AddEventHandler('kaz:bankstartet', function(bankname, x, y, z)
    local source = source
    local user_id = vRP.getUserId({source})
		  TriggerEvent('kaz_robbery:twitter', bankname)
		  TriggerClientEvent('chatMessage', source, 'SYSTEM', {255, 0, 0}, "Du har startet et bankrøveri ved: ^2 "..bankname.." ^0!")
		  message = "Et bankrøveri er startet ved "..bankname.."!"
		  TriggerEvent('dispatch2', x, y, z, message)
		  TriggerClientEvent('kaz:robberygoing', source)
		  TriggerClientEvent('kaz:circlesstart', -1, x, y, z)
end)

RegisterServerEvent('kaz:aktiverdoor')
AddEventHandler('kaz:aktiverdoor', function(PlayerPos, doorcurrent)
TriggerClientEvent('kaz:aktiverdoor2', -1, PlayerPos, doorcurrent)
end)

RegisterServerEvent('kaz:robberyover')
AddEventHandler('kaz:robberyover', function(reason, PlayerPos)
local source = source
doorcurrent = "closed"
if reason == "Time" then 
TriggerClientEvent('kaz:robberyover2', -1)
TriggerClientEvent('kaz:aktiverdoor2', -1, PlayerPos, doorcurrent)
message = "Bankrøveriet er ovre - Boksen lukkede!"
TriggerEvent('dispatch2', PlayerPos.x, PlayerPos.y, PlayerPos.z, message)
TriggerClientEvent('kaz:vrpbankshutdown', -1)
TriggerClientEvent('chatMessage', -1, 'SYSTEM', {255, 0, 0}, "Bankrøveriet er ovre - boksen bliver lukket!")
lock = true
elseif reason == "dead" then 
TriggerClientEvent('kaz:robberyover2', -1)
TriggerClientEvent('kaz:aktiverdoor2', -1, PlayerPos, doorcurrent)
message = "Bankrøveriet er ovre - Røverne er døde"
TriggerEvent('dispatch2', PlayerPos.x, PlayerPos.y, PlayerPos.z, message)
TriggerClientEvent('kaz:vrpbankshutdown', -1)
TriggerClientEvent('chatMessage', -1, 'SYSTEM', {255, 0, 0}, "Bankrøveriet er ovre - boksen bliver lukket!")
lock = true
elseif reason == "distance" then 
TriggerClientEvent('kaz:robberyover2', -1)
TriggerClientEvent('kaz:aktiverdoor2', -1, PlayerPos, doorcurrent)
message = "Bankrøveriet er ovre - røverne kom for langt væk!"
TriggerEvent('dispatch2', PlayerPos.x, PlayerPos.y, PlayerPos.z, message)
TriggerClientEvent('kaz:vrpbankshutdown', -1)
TriggerClientEvent('chatMessage', -1, 'SYSTEM', {255, 0, 0}, "Bankrøveriet er ovre - boksen bliver lukket!")
lock = true
end
end)

RegisterServerEvent('kaz:skaere')
AddEventHandler('kaz:skaere', function(i)
    local source = source
    local user_id = vRP.getUserId({source})
		if vRP.hasPermission({user_id, "player.loot"}) then 
			if vRP.tryGetInventoryItem({user_id,"svejser",1,false}) then
				TriggerClientEvent('kaz:updateskaere', -1, i)
				TriggerClientEvent("pNotify:SendNotification", source,{text = "Skære.... (120 sekunder)", type = "error", queue = "global", timeout = 119000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
				Citizen.Wait(120000)
				reward = math.random(125000,200000)
				vRP.giveInventoryItem({user_id,"dirty_money",reward,true})
				TriggerClientEvent("pNotify:SendNotification", source,{text = "Du modtog "..reward.." Sorte penge.", type = "error", queue = "global", timeout = 8000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
				TriggerClientEvent('kaz:unlockmig', source)
			else
				TriggerClientEvent("pNotify:SendNotification", source,{text = "Du mangler en Skære brænder.", type = "error", queue = "global", timeout = 8000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
				TriggerClientEvent('kaz:unlockmig', source)
			end
		else	
			TriggerClientEvent("pNotify:SendNotification", source,{text = "Du er ikke kriminel.", type = "error", queue = "global", timeout = 8000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
			TriggerClientEvent('kaz:unlockmig', source)
		end
end)


RegisterServerEvent('kaz:tilkaldpoliti')
AddEventHandler('kaz:tilkaldpoliti', function(PlayerPos)
	local source = source
    local user_id = vRP.getUserId({source})
	if vRP.hasPermission({user_id, "cop.keycard"}) then
		doorcurrent = "open"
		TriggerClientEvent('kaz:aktiverdoor2', -1, PlayerPos, doorcurrent)
		TriggerClientEvent('kaz:checkomderernogen', -1)
		TriggerClientEvent("pNotify:SendNotification", source,{text = "Døren er nu åben, tjek om bankboksen er sikker.", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
	else
		message = "En person har givet besked om at denne bank er aflåst."
		TriggerEvent('dispatch2', PlayerPos.x, PlayerPos.y, PlayerPos.z, message)
		TriggerClientEvent("pNotify:SendNotification", source,{text = "Du kontaktede politiet og informerede om situationen.", type = "error", queue = "global", timeout = 8000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
	end
end)

RegisterServerEvent('kaz:resetnu')
AddEventHandler('kaz:resetnu', function(PlayerPos)
local source = source
local user_id = vRP.getUserId({source})
	if vRP.hasPermission({user_id, "cop.keycard"}) then
		doorcurrent = "closed"
		TriggerClientEvent('kaz:aktiverdoor2', -1, PlayerPos, doorcurrent)
		TriggerClientEvent("pNotify:SendNotification", source,{text = "Banken er nu sikret Der vil gå 1 time før banken er åben.", type = "error", queue = "global", timeout = 15000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
		TriggerClientEvent('kaz:vrpbankopen', -1)
		Citizen.Wait(3600000)
		lock = false
		TriggerClientEvent('kaz:unlockbank', -1)
	else
		TriggerClientEvent("pNotify:SendNotification", source,{text = "Banken er ikke tilgængelig endnu, der vil gå op til en time.", type = "error", queue = "global", timeout = 15000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
	end
end)

RegisterServerEvent('kaz:updatelock')
AddEventHandler('kaz:updatelock', function()
lock = lock
local source = source
local user_id = vRP.getUserId({source})
	if vRP.hasInventoryItem({user_id,"virus",1}) then
		TriggerClientEvent('kaz_robbery:tjektaske:1', source, lock)
	else
		TriggerClientEvent('kaz_robbery:tjektaske:2', source, lock)
	end
end)


		
		