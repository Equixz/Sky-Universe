local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_chests")

meldt = false

--- Config
-- list of static chests
-- {access, x, y, z, name-optional}
-- access = can be user_id, user_permission or user_group. Set it to "none" to give to all players access to the chest.
-- name = if you have multiple chests with same access you need to set different name, or the chests with same access will containt same items.
local chests = {}
chests = {
	--{"kiosk.kiosk", -1222.7895507813,-909.27954101563,12.326345443726, "Kaspers Døgnkiosk"},
	{"lager.box1", 993.2617,-3147.855,5.815982, "Lager Et"}, -- Havnen (Udlejning)
	{"lager.box2", 997.7679,-3147.855,5.815982, "Lager To"}, -- Havnen (Udlejning)
	{"lager.box3", 1001.342,-3147.855,5.815982, "Lager Tre"}, -- Havnen (Udlejning)
	{"lager.box4", 1005.781,-3147.855,5.815982, "Lager Fire"}, -- Havnen (Udlejning)
	{"lager.box5", 1009.377,-3147.855,5.815982, "Lager Fem"}, -- Havnen (Udlejning)
	{"lager.box6", 1009.439,-3137.499,5.815982, "Lager Seks"}, -- Havnen (Udlejning)
	{"lager.box7", 1005.383,-3137.499,5.815982, "Lager Syv"}, -- Havnen (Udlejning)
	{"lager.box8", 1001.458,-3137.499,5.815982, "Lager Otte"}, -- Havnen (Udlejning)
	{"lager.box9", 1025.956,-3147.855,5.815982, "Lager Ni"}, -- Havnen (Udlejning)
	{"lager.box10", 1030.055,-3147.855,5.815982, "Lager Ti"}, -- Havnen (Udlejning)
	{"lager.box11", 1042.11,-3147.855,5.815982, "Lager Elleve"}, -- Havnen (Udlejning)
	{"lager.box12", 1025.912,-3137.499,5.815982, "Lager Tolve"}, -- Havnen (Udlejning)
	{"lager.box13", 1050.39,-3137.499,5.815982, "Lager Tretten"}, -- Havnen (Udlejning)
	{"cop.keycard", 477.77844238281,-983.65155029297,24.914739608765, "Politi"}, -- Politiet (PD CENTRUM)
	{"4", -114.11777496338,-10.895532608032,70.519523620605, "Skab.4"}, -- Janitor hus
	{"5", -799.80847167969,177.1714630127,72.834686279297, "Skab.5"}, -- Michaels Hus
	{"6", -16.315292358398,-1430.2967529297,31.101528167725, "Skab.6"}, -- Hus i groove street
	{"8", 976.97174072266,-104.01711273193,74.645031738281, "Skab.8"}, -- Lost (SoA) Borgen
	{"14", 1397.427734375,1164.0902099609,114.3335647583, "Skab.14"}, -- LaTorre Ranch
	{"17", -1145.3043212891,-1514.4837646484,10.482727622986, "Skab.17"}, -- Beachhouse
	{"21", 92.394317626953,-1291.7501220703,29.268741607666, "Skab.21"}, -- Stripklubben
	{"22", 144.7120513916,-2203.6728515625,4.6880216598511, "Skab.22"}, -- Hus i groove street
	{"13", 759.0966796875,-1188.8564453125,24.287693023682, "Skab.13"}, -- Skaterpark
}
-- I've put some random locations just for test, change them.
---#

local function create_pleschest(owner_access, x, y, z, player, name)
	local namex = name or "chest"
	
	local chest_enter = function(player, area)
		local user_id = vRP.getUserId({player})
		if user_id ~= nil then
			if vRP.hasInventoryItem({user_id,owner_access,1}) or vRP.hasGroup({user_id, owner_access}) or vRP.hasPermission({user_id, owner_access}) then
				vRP.openChest({player, "static:"..owner_access..":"..namex, 7500, nil, nil, nil})
			end
		end
	end

	local chest_leave = function(player,area)
		vRP.closeMenu({player})
	end
	
	local nid = "vRP:static-"..namex..":"..owner_access
	vRP.setArea({player,nid,x,y,z,1,1.5,chest_enter,chest_leave})
	vRPclient.addMarker(player,{x,y,z-0.87,0.7,0.7,0.5,0,255,125,125,150})
end

AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
  if first_spawn then
	for k, v in pairs(chests) do
		create_pleschest(v[1], v[2], v[3], v[4], source, v[5])
		--TriggerClientEvent('chatMessage', -1, "Chest created: "..v[1]..", "..v[2]..", "..v[3]..", "..v[4]..", "..v[5]..".") -- debuging.
	end
  end
end)


RegisterServerEvent('kaz_politifuld')
AddEventHandler('kaz_politifuld', function(new_weight, name)
	if name == "static:cop.keycard:Politi" then
		PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/609221112068571139/lahDdULVXF_yATNyAANuU1XuQVOpD_ckDw4g1n7RsPH_q_KKlssjxL0RfscvqqXvryKW', function(err, text, headers) end, 'POST', json.encode({username = "PolitiBoks", content = "```Politiets opbevaringsboks er ved at være fuld, tøm den gerne! - Nuværende vægt: "..new_weight.."/7500.```"}), { ['Content-Type'] = 'application/json' })
	end
end)
