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

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","kaz_durability")

vRPcc = {}
Tunnel.bindInterface("kaz_durability",vRPcc)
Proxy.addInterface("kaz_durability",vRPcc)
vRPccC = Tunnel.getInterface("kaz_durability","kaz_durability")


MySQL.createCommand("vRP/kaz_dur:save","UPDATE vrp_user_vehicles SET vehicle_damage = @skade WHERE user_id = @lsource AND vehicle = @model")
MySQL.createCommand("vRP/kaz_dur:load","SELECT vehicle_damage FROM vrp_user_vehicles WHERE user_id = @lsource AND vehicle = @model")



RegisterServerEvent("vRP_HealthUI:getData")
AddEventHandler("vRP_HealthUI:getData", function ()
    local user_id = vRP.getUserId({source}) 
end)

RegisterServerEvent('kaz:savevehicle')
AddEventHandler('kaz:savevehicle', function(player, name, bilskaden)
local lsource = source 
spiller = vRP.getUserId({lsource})
model = name
skade = bilskaden
MySQL.execute('vRP/kaz_dur:save', {skade = skade, lsource = spiller, model = model})
end)

RegisterServerEvent('kaz:loadvehicle')
AddEventHandler('kaz:loadvehicle', function(vehID, player, bil)
local lsource = source
spiller = vRP.getUserId({lsource})
name = vehID
	MySQL.query('vRP/kaz_dur:load', {lsource = spiller, model = name}, function(skade3)
			for k,v in pairs(skade3) do 
				skade3 = v.vehicle_damage
			end
			TriggerClientEvent('kaz:sendbil', lsource, skade3, bil, player)
		end)
end)

