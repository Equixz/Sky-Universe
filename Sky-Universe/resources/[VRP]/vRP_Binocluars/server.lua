--[[					SCRIPT MADE BY : ALEXMIHAI04						--]]
--[[					GOOD LUCK HAVE FUN									--]]


local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "vRP_rcCar")

local stat = false

vRP.defInventoryItem({"Kikkert", "Kikkert", "Du kan se lange afstande", function(args)
	local choices = {}
	
	choices["Kikkert"] = {function(player,choice,mod)
		local user_id = vRP.getUserId({player})
		if user_id ~= nil then
			if stat then
				stat = false
				TriggerClientEvent('binoculars:Activate', player, false)
				vRPclient.notify(player,{"Du har deaktiveret kikkerten."})
				vRP.closeMenu({player})
			else
				stat = true
				TriggerClientEvent('binoculars:Activate', player, true)
				vRPclient.notify(player,{"Du har aktiveret kikkerten."})
				vRP.closeMenu({player})
			end
		end
	end}

	return choices
end, 0.01})