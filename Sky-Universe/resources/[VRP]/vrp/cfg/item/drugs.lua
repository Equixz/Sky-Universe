local items = {}

local function play_drink(player)
	local seq = {
		{"mp_player_intdrink","intro_bottle",1},
		{"mp_player_intdrink","loop_bottle",1},
		{"mp_player_intdrink","outro_bottle",1}
	}
	vRPclient.playAnim(player,{true,seq,false})
end

local function play_eat(player)
	local seq = {
		{"mp_player_inteat@burger", "mp_player_int_eat_burger_enter",1},
		{"mp_player_inteat@burger", "mp_player_int_eat_burger",1},
		{"mp_player_inteat@burger", "mp_player_int_eat_burger_fp",1},
		{"mp_player_inteat@burger", "mp_player_int_eat_exit_burger",1}
	}
	vRPclient.playAnim(player,{true,seq,false})
end

local pills_choices = {}
pills_choices["> Tag"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
		if vRP.tryGetInventoryItem(user_id,"pillpill",1) then
			vRPclient.varyHealth(player,{25})
			TriggerClientEvent("pNotify:SetQueueMax", player, 8, 2)
			TriggerClientEvent("pNotify:SendNotification", player,{text = "Tager ipren", type = "success", queue = "8", timeout = 2000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			play_drink(player)
			vRP.closeMenu(player)
		end
	end
end}



local function play_smoke(player)
	local seq2 = {
		{"mp_player_int_uppersmoke","mp_player_int_smoke_enter",1},
		{"mp_player_int_uppersmoke","mp_player_int_smoke",1},
		{"mp_player_int_uppersmoke","mp_player_int_smoke_exit",1}
	}
	vRPclient.playAnim(player,{true,seq2,false})
end

local smoke_choices = {}
smoke_choices["> Ryg"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
		if vRP.tryGetInventoryItem(user_id,"joint",1) then
			vRP.varyHunger(user_id,(20))
			TriggerClientEvent("pNotify:SetQueueMax", player, 9, 2)
			TriggerClientEvent("pNotify:SendNotification", player,{text = "Ryger en joint", type = "success", queue = "9", timeout = 2000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			vRPclient.playScreenEffect(player,{"DrugsMichaelAliensFight", 400})
			TriggerClientEvent('kaz_stoffer:ryg', player)
			--play_smoke(player)
			vRP.closeMenu(player)
		end
	end
end}

local smoke2_choices = {}
smoke2_choices["> Ryg"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
		if vRP.tryGetInventoryItem(user_id,"smokes",1) then
			vRP.varyHunger(user_id,(20))
			TriggerClientEvent("pNotify:SetQueueMax", player, 9, 2)
			TriggerClientEvent("pNotify:SendNotification", player,{text = "Ryger en Smøg", type = "success", queue = "9", timeout = 2000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			TriggerClientEvent('kaz_stoffer:ryg2', player) 
			vRP.closeMenu(player)
		end
	end
end}

local joint_making = {}
joint_making["> Lav Joint"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
		if vRP.tryGetInventoryItem(user_id,"ristet",1) and vRP.tryGetInventoryItem(user_id,"jointpapir",1) and vRP.tryGetInventoryItem(user_id,"skunkklump",1) then
			vRP.giveInventoryItem(user_id, "joint", 1,true)
			vRP.closeMenu(player)
		end
	end
end}

local skunk_udpak = {}
skunk_udpak["> Udpak"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
		if vRP.tryGetInventoryItem(user_id,"klump10",1) then
			vRP.giveInventoryItem(user_id, "skunkklump", 10,true)
			vRP.closeMenu(player)
		end
	end
end}

local smoke3_choices = {}
smoke3_choices["> Rist"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
		if vRP.tryGetInventoryItem(user_id,"smokes",1) then
			vRP.giveInventoryItem(user_id, "ristet", 1,true)
			vRP.closeMenu(player)
		end
	end
end}

local boombox = {}
boombox["> Brug"] = {function(player,choice)
local user_id = vRP.getUserId(player)
	if user_id ~= nil then
			TriggerClientEvent('kaz_boombox:place_boombox', player)
		vRP.closeMenu(player)
	end
end}

local function play_smell(player)
	local seq3 = {
		{"mp_player_intdrink","intro_bottle",1},
		{"mp_player_intdrink","loop_bottle",1},
		{"mp_player_intdrink","outro_bottle",1}
	}
	vRPclient.playAnim(player,{true,seq3,false})
end

local smell_choices = {}
smell_choices["> Snif"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	local spiller = vRP.getUserSource(user_id)
	if user_id ~= nil then
		if vRP.tryGetInventoryItem(user_id,"kokain",1,false) or vRP.tryGetInventoryItem(user_id,"amf",1,false) or vRP.tryGetInventoryItem(user_id,"meth",1,false) then
			vRP.varyThirst(user_id,(20))
			TriggerClientEvent("pNotify:SetQueueMax", player, 10, 2)
			TriggerClientEvent("pNotify:SendNotification", player,{text = "Sniffer drug", type = "success", queue = "10", timeout = 2000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			vRPclient.playScreenEffect(player,{"ChopVision", 300})
			play_smell(player)
			TriggerClientEvent('kaz_stoffer:stamina', spiller)
			vRP.closeMenu(player)
		end
	end
end}

local openpack = {}
openpack["> Udpak"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
		if vRP.tryGetInventoryItem(user_id,"lakort",1) then
			vRP.giveInventoryItem(user_id, "smokes", 20,true)
			vRP.closeMenu(player)
		end
	end
end}

local function play_lsd(player)
	local seq4 = {
		{"mp_player_intdrink","intro_bottle",1},
		{"mp_player_intdrink","loop_bottle",1},
		{"mp_player_intdrink","outro_bottle",1}
	}
  vRPclient.playAnim(player,{true,seq4,false})
end

local lsd_choices = {}
lsd_choices["> Tag"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
		if vRP.tryGetInventoryItem(user_id,"lsd",1) then
			vRP.varyThirst(user_id,(20))
			TriggerClientEvent("pNotify:SetQueueMax", player, 11, 2)
			TriggerClientEvent("pNotify:SendNotification", player,{text = "Slikker på et frimærke", type = "success", queue = "11", timeout = 2000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			vRPclient.playScreenEffect(player,{"DrugsTrevorClownsFight", 600})
			play_lsd(player)
			vRP.closeMenu(player)
		end
	end
end}

local lsd_choices = {}
lsd_choices["> Tag"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
		if vRP.tryGetInventoryItem(user_id,"lsd",1) then
			vRP.varyThirst(user_id,(20))
			TriggerClientEvent("pNotify:SetQueueMax", player, 11, 2)
			TriggerClientEvent("pNotify:SendNotification", player,{text = "Slikker på et frimærke", type = "success", queue = "11", timeout = 2000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			vRPclient.playScreenEffect(player,{"DrugsTrevorClownsFight", 600})
			play_lsd(player)
			vRP.closeMenu(player)
		end
	end
end}

local alkohol = {}
alkohol["> Drik"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
		if vRP.tryGetInventoryItem(user_id,"margarita",1,false) or vRP.tryGetInventoryItem(user_id,"pina",1,false) or vRP.tryGetInventoryItem(user_id,"mojito",1,false) or vRP.tryGetInventoryItem(user_id,"white",1,false) or vRP.tryGetInventoryItem(user_id,"strawberry",1,false) or vRP.tryGetInventoryItem(user_id,"teqshot",1,false) or vRP.tryGetInventoryItem(user_id,"whisky",1,false) then
			TriggerClientEvent('kaz_alkohol:drik', player)
			play_drink(player)
			vRP.closeMenu(player)
		end
	end
end}

local halloween = {}
halloween["> Spis"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
		if vRP.tryGetInventoryItem(user_id,"trickntreat",1,false) then
			vRP.varyThirst(user_id,(-100))
			vRP.varyHunger(user_id,(-100))
			TriggerClientEvent('kaz_stoffer:stamina', player)
			TriggerClientEvent("pNotify:SendNotification", player,{text = "Du føler dig hyperaktiv", type = "success", queue = "10", timeout = 2000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			play_eat(player)
			vRP.closeMenu(player)
		end
	end
end}

local energidrik = {}
energidrik["> Drik"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
		if vRP.tryGetInventoryItem(user_id,"redgull",1,false) then
			vRP.varyThirst(user_id,(-30))
			TriggerClientEvent('kaz_stoffer:stamina', player)
			TriggerClientEvent("pNotify:SendNotification", player,{text = "Du føler dig hyperaktiv", type = "success", queue = "10", timeout = 2000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			play_drink(player)
			vRP.closeMenu(player)
		end
	end
end}

local rose = {}
rose["> Brug"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
			TriggerClientEvent('kaz_blomst:on', player)
			vRP.closeMenu(player)
	end
end}

local attach1 = {}
attach1["> Brug"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
			TriggerClientEvent('kaz_attach:lygte', player)
			vRP.closeMenu(player)
	end
end}

local attach2 = {}
attach2["> Brug"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
			TriggerClientEvent('kaz_attach:silencer', player)
			vRP.closeMenu(player)
	end
end}

local openbox = {}
openbox["> Åben"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	if user_id ~= nil then
		if vRP.tryGetInventoryItem(user_id,"kazmysterybox",1,false) then
			TriggerClientEvent('kaz_attach:openbox', player)
			vRP.closeMenu(player)
			Citizen.Wait(15000)
			mysteryboxchance = math.random(1,1000)
			if mysteryboxchance <= 500 then 
				vRP.giveInventoryItem(user_id, "dirty_money", 100000,true)
				item = "100k sorte penge"
				PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/648264040073920542/oyRXswTaZqAQpRUyc5MOC-sSIMeaswozAughcDkAeqI1e7_Ux7CwBqJmC6mR_N60Y9EE', function(err, text, headers) end, 'POST', json.encode({username = "Blackmarket", content = "```Brugeren "..user_id.." åbnede en kuffert og fik "..item..".```"}), { ['Content-Type'] = 'application/json' })
			elseif mysteryboxchance > 500 and mysteryboxchance <= 525 then 
				vRP.giveInventoryItem(user_id, "falsknummerplade", 20,true)
				item = "20 nummerplader"
				PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/648264040073920542/oyRXswTaZqAQpRUyc5MOC-sSIMeaswozAughcDkAeqI1e7_Ux7CwBqJmC6mR_N60Y9EE', function(err, text, headers) end, 'POST', json.encode({username = "Blackmarket", content = "```Brugeren "..user_id.." åbnede en kuffert og fik "..item..".```"}), { ['Content-Type'] = 'application/json' })
			elseif mysteryboxchance > 525 and mysteryboxchance <= 550 then 
				vRP.giveInventoryItem(user_id, "amf", 500,true)
				item = "500 amf"
				PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/648264040073920542/oyRXswTaZqAQpRUyc5MOC-sSIMeaswozAughcDkAeqI1e7_Ux7CwBqJmC6mR_N60Y9EE', function(err, text, headers) end, 'POST', json.encode({username = "Blackmarket", content = "```Brugeren "..user_id.." åbnede en kuffert og fik "..item..".```"}), { ['Content-Type'] = 'application/json' })
			elseif mysteryboxchance > 550 and mysteryboxchance <= 600 then
				vRP.giveInventoryItem(user_id, "kokain", 250,true)
				item = "250 kokain"
				PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/648264040073920542/oyRXswTaZqAQpRUyc5MOC-sSIMeaswozAughcDkAeqI1e7_Ux7CwBqJmC6mR_N60Y9EE', function(err, text, headers) end, 'POST', json.encode({username = "Blackmarket", content = "```Brugeren "..user_id.." åbnede en kuffert og fik "..item..".```"}), { ['Content-Type'] = 'application/json' })
			elseif mysteryboxchance > 600 and mysteryboxchance <= 650 then
				vRP.giveInventoryItem(user_id, "wammo|WEAPON_PISTOL_MK2", 50,true)
				item = "50 MkII skud"
				PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/648264040073920542/oyRXswTaZqAQpRUyc5MOC-sSIMeaswozAughcDkAeqI1e7_Ux7CwBqJmC6mR_N60Y9EE', function(err, text, headers) end, 'POST', json.encode({username = "Blackmarket", content = "```Brugeren "..user_id.." åbnede en kuffert og fik "..item..".```"}), { ['Content-Type'] = 'application/json' })
			elseif mysteryboxchance > 650 and mysteryboxchance <= 700 then
				vRP.giveInventoryItem(user_id, "wammo|WEAPON_HEAVYPISTOL", 50,true)
				item = "50 Heavy skud"
				PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/648264040073920542/oyRXswTaZqAQpRUyc5MOC-sSIMeaswozAughcDkAeqI1e7_Ux7CwBqJmC6mR_N60Y9EE', function(err, text, headers) end, 'POST', json.encode({username = "Blackmarket", content = "```Brugeren "..user_id.." åbnede en kuffert og fik "..item..".```"}), { ['Content-Type'] = 'application/json' })
			elseif mysteryboxchance > 700 and mysteryboxchance <= 750 then
				vRP.giveInventoryItem(user_id, "wammo|WEAPON_REVOLVER", 50,true)
				item = "50 revolver skud"
				PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/648264040073920542/oyRXswTaZqAQpRUyc5MOC-sSIMeaswozAughcDkAeqI1e7_Ux7CwBqJmC6mR_N60Y9EE', function(err, text, headers) end, 'POST', json.encode({username = "Blackmarket", content = "```Brugeren "..user_id.." åbnede en kuffert og fik "..item..".```"}), { ['Content-Type'] = 'application/json' })
			elseif mysteryboxchance > 750 and mysteryboxchance <= 800 then
				vRP.giveInventoryItem(user_id, "mktwosilence", 1,true)
				item = "silencer"
				PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/648264040073920542/oyRXswTaZqAQpRUyc5MOC-sSIMeaswozAughcDkAeqI1e7_Ux7CwBqJmC6mR_N60Y9EE', function(err, text, headers) end, 'POST', json.encode({username = "Blackmarket", content = "```Brugeren "..user_id.." åbnede en kuffert og fik "..item..".```"}), { ['Content-Type'] = 'application/json' })
			elseif mysteryboxchance > 800 and mysteryboxchance <= 807 then
				vRP.giveInventoryItem(user_id, "wbody|WEAPON_PISTOL_MK2", 1,true)
				item = "MkII pistol"
				PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/648264040073920542/oyRXswTaZqAQpRUyc5MOC-sSIMeaswozAughcDkAeqI1e7_Ux7CwBqJmC6mR_N60Y9EE', function(err, text, headers) end, 'POST', json.encode({username = "Blackmarket", content = "```Brugeren "..user_id.." åbnede en kuffert og fik "..item..".```"}), { ['Content-Type'] = 'application/json' })
			elseif mysteryboxchance > 807 and mysteryboxchance <= 814 then
				vRP.giveInventoryItem(user_id, "wbody|WEAPON_HEAVYPISTOL", 1,true)
				item = "Heavy pistol"
				PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/648264040073920542/oyRXswTaZqAQpRUyc5MOC-sSIMeaswozAughcDkAeqI1e7_Ux7CwBqJmC6mR_N60Y9EE', function(err, text, headers) end, 'POST', json.encode({username = "Blackmarket", content = "```Brugeren "..user_id.." åbnede en kuffert og fik "..item..".```"}), { ['Content-Type'] = 'application/json' })
			elseif mysteryboxchance > 814 and mysteryboxchance <= 821 then
				vRP.giveInventoryItem(user_id, "wbody|WEAPON_REVOLVER", 1,true)
				item = "Revolver"
				PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/648264040073920542/oyRXswTaZqAQpRUyc5MOC-sSIMeaswozAughcDkAeqI1e7_Ux7CwBqJmC6mR_N60Y9EE', function(err, text, headers) end, 'POST', json.encode({username = "Blackmarket", content = "```Brugeren "..user_id.." åbnede en kuffert og fik "..item..".```"}), { ['Content-Type'] = 'application/json' })
			elseif mysteryboxchance > 821 and mysteryboxchance <= 875 then
				vRP.giveInventoryItem(user_id, "dirty_money", 200000,true)
				item = "200k sorte penge"
				PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/648264040073920542/oyRXswTaZqAQpRUyc5MOC-sSIMeaswozAughcDkAeqI1e7_Ux7CwBqJmC6mR_N60Y9EE', function(err, text, headers) end, 'POST', json.encode({username = "Blackmarket", content = "```Brugeren "..user_id.." åbnede en kuffert og fik "..item..".```"}), { ['Content-Type'] = 'application/json' })
			elseif mysteryboxchance > 875 and mysteryboxchance <= 900 then
				vRP.giveInventoryItem(user_id, "kokain", 1000,true)
				item = "1000 kokain"
				PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/648264040073920542/oyRXswTaZqAQpRUyc5MOC-sSIMeaswozAughcDkAeqI1e7_Ux7CwBqJmC6mR_N60Y9EE', function(err, text, headers) end, 'POST', json.encode({username = "Blackmarket", content = "```Brugeren "..user_id.." åbnede en kuffert og fik "..item..".```"}), { ['Content-Type'] = 'application/json' })
			elseif mysteryboxchance > 900 then
				vRP.giveInventoryItem(user_id, "svejser", 20,true)
				item = "20 skærebrændere"
				PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/648264040073920542/oyRXswTaZqAQpRUyc5MOC-sSIMeaswozAughcDkAeqI1e7_Ux7CwBqJmC6mR_N60Y9EE', function(err, text, headers) end, 'POST', json.encode({username = "Blackmarket", content = "```Brugeren "..user_id.." åbnede en kuffert og fik "..item..".```"}), { ['Content-Type'] = 'application/json' })
			end
		end
	end
end}

items["joint"] = {"Joint","1g mixed.", function(args) return smoke_choices end,0.10}
items["amf"] = {"Amfetamin","1g færdiglavet.",function(args) return smell_choices end,0.10}
items["meth"] = {"Meth","1g færdiglavet.",function(args) return smell_choices end,0.10}
items["kokain"] = {"Kokain","En pose kokain.",function(args) return smell_choices end,0.10}
items["lakort"] = {"LA kort pakke(20)","Ryges eller ristes.",function(args) return openpack end,1.00}
items["smokes"] = {"Smøg","Ryg forhelvede",function(args) return smoke2_choices end,0.10}
items["lighter"] = {"Lighter","Bruges til at riste smøger",function(args) return smoke3_choices end,0.01}
items["boombox"] = {"BoomBox","En styk musikafspiller!",function(args) return boombox end,10.00}
items["redgull"] = {"Redbull","Energi drik",function(args) return energidrik end,0.10}
items["margarita"] = {"Margarita","Time to party",function(args) return alkohol end,0.10}
items["trickntreat"] = {"Halloween Slik","Fyldt med suger",function(args) return halloween end,0.10}
items["white"] = {"White Russian","Time to party",function(args) return alkohol end,0.10}
items["pina"] = {"Pina Colada","Time to party",function(args) return alkohol end,0.10}
items["mojito"] = {"Mojito","Time to party",function(args) return alkohol end,0.10}
items["strawberry"] = {"Strawberry Daiquiri","Time to party",function(args) return alkohol end,0.10}
items["teqshot"] = {"Tequila shot","Time to party",function(args) return alkohol end,0.10}
items["whisky"] = {"Whisky & cola","Time to party",function(args) return alkohol end,0.10}
items["rosekaz"] = {"Rose","Vis din kærlighed",function(args) return rose end,0.10}
items["klump10"] = {"Pose med skunk (10g)","Sælges eller åbnes.",function(args) return skunk_udpak end,0.10}
items["skunkklump"] = {"Klump af 1g Skunk","Bruges til joints.",function(args) return joint_making end,0.10}
items["combatpistolflash"] = {"Lygte","Til tjenestepistol.",function(args) return attach1 end,1.00}
items["mktwosilence"] = {"Silencer","Til MkII.",function(args) return attach2 end,1.00}
items["kazmysterybox"] = {"Blackmarket Kuffert","Indhold ukendt.",function(args) return openbox end,10.00}





return items