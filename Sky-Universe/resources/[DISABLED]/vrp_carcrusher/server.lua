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
MySQL = module("vrp_mysql", "MySQL")
cfg = module("vrp_carcrusher", "cfg/biler")
vehicles = cfg.garage_types

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_carcrusher")

vRPcc = {}
Tunnel.bindInterface("vRP_carcrusher",vRPcc)
Proxy.addInterface("vRP_carcrusher",vRPcc)
vRPccC = Tunnel.getInterface("vRP_carcrusher","vRP_carcrusher")

MySQL.createCommand("vRP/del_vehicle","DELETE FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")

AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
	vRPclient.addBlip(source,{-33.693328857422,-1093.9462890625,26.42232131958, 495, 27, "Bilforhandler"}) -- BLIP
end)

RegisterServerEvent("crushVehicle")
AddEventHandler("crushVehicle", function(vtype, vname, vehPrice)
	local user_id = vRP.getUserId({source})
	vRPclient.despawnGarageVehicle(source,{vtype,15})
	MySQL.execute("vRP/del_vehicle", {user_id = user_id, vehicle = vname})
	--vRPclient.notify(source, {"~g~Du solgte dit køretøj og modtog ~r~DKK"..vehPrice})
						TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..vehPrice.. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Premium Deluxe Motor</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	vRP.giveBankMoney({user_id, vehPrice})
	PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/638088763301429309/e7n16MAmy56XVRWQBNNrQ6E0KX97w9O3HEVeXUJxliIiEQQh_in-s-91JdBhbngHaniH', function(err, text, headers) end, 'POST', json.encode({username = "Bilforhandleren", content = "Borger ID: "..user_id.."\nSolgte: "..vname.."\nTil: **Premium Deluxe Motorsport**\nPris: "..vehPrice..",-"}), { ['Content-Type'] = 'application/json' })
end)

function vRPcc.getVehiclesPrices(vname)
	thePrice = 0
	vehName = ""
	for i, v in pairs(vehicles) do
		for ix, vx in pairs(v) do
			if(tostring(ix) ~= "_config") and (tostring(ix) == vname)then
				vehName = tostring(vx[1])
				thePrice = tonumber(vx[2])
				if(thePrice == nil) or (thePrice <= 0)then
					thePrice = 0
				else
					thePrice = math.ceil(thePrice*0.25)
				end
			end
		end
	end
	return thePrice, vehName
end