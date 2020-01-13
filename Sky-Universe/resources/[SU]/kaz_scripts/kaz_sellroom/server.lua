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

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "kaz_scripts")

placementnew = 1
amountnew = 4

RegisterServerEvent("kaz_sellroom:enter")
AddEventHandler("kaz_sellroom:enter", function()
	local source = source
	local user_id = vRP.getUserId({source})
		if vRP.hasGroup({user_id,"sellroom"}) then
			TriggerClientEvent('kaz_sellroom:enternow', source)
		else
			TriggerClientEvent("pNotify:SendNotification", source,{text = "Du har ikke adgang.", type = "error", queue = "global", timeout = 12000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
		end
end)

RegisterServerEvent("kaz_sellroom:buy")
AddEventHandler("kaz_sellroom:buy", function()
local source = source
local user_id = vRP.getUserId({source})
local player = vRP.getUserSource({user_id})
	vRP.prompt({player,"Er du sikker på, at du vil købe adgang? (ja/nej) (2.5 mil)","",function(player,answer)
		if string.lower(tostring(answer)) == "ja" then
			if vRP.hasGroup({user_id,"sellroom"}) then
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du har allerede adgang.", type = "error", queue = "global", timeout = 4000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
			else
				if vRP.tryFullPayment({user_id,2500000}) then
					TriggerClientEvent("pNotify:SendNotification", player,{text = "Du købte adgang.", type = "error", queue = "global", timeout = 4000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
					vRP.addUserGroup({user_id,"sellroom"})
					PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/630305224669790209/hcHrYrXafMy3bODa1_fOloYVD7JqIx6NjKFX8GucdhMf_ZVGyhu5PSPLX6DNS94CPBwI', function(err, text, headers) end, 'POST', json.encode({username = "Hvidvask", content = "```Brugeren "..user_id.." Købte et Sellroom```"}), { ['Content-Type'] = 'application/json' })
				else
					TriggerClientEvent("pNotify:SendNotification", player,{text = "Du har ikke råd.", type = "error", queue = "global", timeout = 4000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
				end
			end
		end
	end})
end)

RegisterServerEvent('kaz_sellroom:kokainbuy')
AddEventHandler('kaz_sellroom:kokainbuy', function(amount, placement)
local source = source
local user_id = vRP.getUserId({source})
local player = vRP.getUserSource({user_id})
	if vRP.hasPermission({user_id, "user.banderelateret"}) then
		if vRP.tryFullPayment({user_id,62500}) then
			amountnew = amount-1
			TriggerClientEvent('kaz_sellroom:updateamount', -1, amountnew)
			vRP.giveInventoryItem({user_id,"kokainblade",250,false})
				if amountnew == 0 then 
					if placement == 3 then 
						placementnew = 1
					else
						placementnew = placement+1
					end
					TriggerEvent('kaz_sellroom:newplace', placementnew)
				end
		else
			TriggerClientEvent("pNotify:SendNotification", player,{text = "Du har ikke råd.", type = "error", queue = "global", timeout = 4000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
		end
	else 
		TriggerClientEvent("pNotify:SendNotification", player,{text = "Køberen vil ikke sælge til dig.", type = "error", queue = "global", timeout = 4000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
	end
end)

RegisterServerEvent('kaz_sellroom:newplace')
AddEventHandler("kaz_sellroom:newplace", function(placementnew)
Citizen.Wait(1000)
TriggerClientEvent('kaz_sellroom:placeupdate', -1, placementnew)
Citizen.Wait(1800000)
amountnew = 4 
end)

RegisterServerEvent('kaz_sellroom:newupdate')
AddEventHandler("kaz_sellroom:newupdate", function()
local source = source
local user_id = vRP.getUserId({source})
local player = vRP.getUserSource({user_id})
TriggerClientEvent('kaz_sellroom:newupdate2', player, amountnew, placementnew)
end)
