
local cfg = {}

-- define each group with a set of permissions
-- _config property:
--- gtype (optional): used to have only one group with the same gtype per player (example: a job gtype to only have one job)
--- onspawn (optional): function(player) (called when the player spawn with the group)
--- onjoin (optional): function(player) (called when the player join the group)
--- onleave (optional): function(player) (called when the player leave the group)
--- (you have direct access to vRP and vRPclient, the tunnel to client, in the config callbacks)

cfg.groups = {
	["thanighthawk"] = {
		_config = {
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Ejer-rang tildelt.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onleave = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Ejer-rang frataget.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
		},
		"player.group.add.staff",
		"player.group.remove.staff",
		"player.givemoney",
		"player.unban",
		"player.giveitem",
		"player.tptowaypoint",
		"admin.announce",
		"player.list",
		"player.whitelist",
		"player.kick",
		"player.ban",
		"player.noclip",
		"player.display_custom",
		"player.tptome",
		"player.tpto",
		"player.tptowaypoint",
		"player.spawnvehicle",
		"player.deletevehicle",
		"player.revival",
		"player.coordsnoheading",
		"vehicle.repair",
		"player.unlockvehicle",
		"player.freeze",
		"police.menu",
		"police.handcuff",
		"police.drag",
		"police.easy_jail",
		"police.carsearch",
		"police.seize.weapons",
		"police.seize.items",
		"repair.menu",
		"emergency.revive",
		"emergency.market",
		"trucker.perms",
		"admin.tickets",
		"nighthawk.chattitle",
		"staff.seizable",
		"not.kickable",
		"ramlov.admin"
	},
	["Ledelse"] = {
		_config = {
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Ledelse rang tildelt.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onleave = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Ledelse rang frataget.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
		},
		"player.group.add.staff",
		"player.group.remove.staff",
		"player.givemoney",
		"player.unban",
		"player.giveitem",
		"player.tptowaypoint",
		"admin.announce",
		"player.list",
		"player.whitelist",
		"player.kick",
		"player.ban",
		"player.noclip",
		"player.display_custom",
		"player.tptome",
		"player.tpto",
		"player.tptowaypoint",
		"player.spawnvehicle",
		"player.deletevehicle",
		"player.revival",
		"player.coordsnoheading",
		"player.repairvehicle",
		"player.unlockvehicle",
		"player.freeze",
		"admin.tickets",
		"uc.chattitle",
		"staff.seizable",
		"ramlov.admin"
	},
	["whitelist"] = {
		_config = {
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "whitelist-rang tildelt.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onleave = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "whitelist-rang frataget.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
		},
		"player.whitelist",

	},
	["admin"] = {
		_config = {
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Admin-rang tildelt.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onleave = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Admin-rang frataget.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
		},
		"admin.tickets",
		"admin.announce",
		"player.kick",
		"player.list",
		"player.ban",
		"player.givemoney",
		"player.unban",
		"player.giveitem",
		"player.group.add",
		"player.group.remove",
		"player.tptome",
		"player.tpto",
		"player.tptowaypoint",
		"ramlov.admin",
		"player.deletevehicle",
		"player.revival",
		"player.coordsnoheading",
		"staff.seizable",
		"player.whitelist",
		"player.unlockvehicle",
		"repair.menu",
		"player.noclip",
	},
	["moderator"] = {
		_config = {
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Hjælper-rang tildelt.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onleave = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Hjælper-rang frataget.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
		},
		"admin.tickets",
		"admin.announce",
		"player.kick",
		"player.list",
		"player.ban",
		"player.givemoney",
		"player.unban",
		"player.giveitem",
		"player.group.add",
		"player.group.remove",
		"player.tptome",
		"player.tpto",
		"player.tptowaypoint",
		"ramlov.admin",
		"player.deletevehicle",
		"player.revival",
		"player.coordsnoheading",
		"staff.seizable",
		"player.whitelist",
		"player.unlockvehicle",
		"repair.menu",
		"player.noclip",
	},
	["emschief"] = {
		_config = {
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu EMS-Jobchef.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
		},
		"player.group.add",
		"player.group.remove",
		"emergencychief.paycheck",
		"-emergency.paycheck"
	},
	["mechchief"] = {
		_config = {
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu Mekaniker-Jobchef.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
		},
		"player.group.add",
		"player.group.remove",
		"vehicle.repair",
		"repairchief.paycheck",
		"tun.keycard",
		"-repair.paycheck"
	},
	["policechief"] = {
		_config = {
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu rigspolitichef.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
		},
		"player.group.add",
		"ramlovdv.admin",
		"player.group.remove",
		"policechief.paycheck",
		"-police.paycheck"
	},
	["lawyerchief"] = {
		_config = {
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu advokatchef.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
		},
		"player.group.add",
		"player.group.remove",
		"advochef.paycheck",
		"cut.market",
	},
	["god"] = {
		_config = {
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Godmode aktiveret.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onleave = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Godmode deaktiveret.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end
		},
		"admin.god", -- reset survivals/health periodically
		"god.chattitle"
	},
	["jailed"] = {
		"admin.god"
	},
	["user"] = {  -- the group user is auto added to all logged players
		"player.phone",
		"player.coords",
		"police.askid",
		"police.store_weapons",
		"user.askid",
		"player.emotes",
		"police.seizable",  -- can be seized
		"user.firstaid",
		"user.chattitle",
		"police.drag",
		"police.putinveh",
		"police.getoutveh",
	},
	["police"] = {
		_config = {
			onspawn = function(player) end
		},
		"cop.whitelisted",
		"cop.keycard"
	},
	["helikopter"] = {
		_config = {
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Helikopter-licens tildelt.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
		},
		"helikopter.whitelisted",
		"helikopter.vehicle"
	},
	["pet"] = {
		_config = {
			onspawn = function(player) end
		},
		"pet.whitelisted"
	},
	["ems"] = {
		_config = {
			onspawn = function(player) end
		},
		"ems.whitelisted",
		"ems.keycard"
	},
	["mech"] = {
		_config = {
			onspawn = function(player) end
		},
		"mechanic.whitelisted",
		"mek.keycard"
	},
		["ejen"] = {
		_config = {
			onspawn = function(player) end
		},
		"ejendoms.whitelisted",
		"ejen.keycard"
	},
		["bil"] = {
		_config = {
			onspawn = function(player) end
		},
		"bil.whitelisted",
		"bil.keycard"
	},
	["lawyer"] = {
		_config = {
			onspawn = function(player) end
		},
		"lawyer.whitelisted"
	},
	["bandemedlem"] = {
		"user.banderelateret",
		"bande.paycheck",
		"-user.paycheck",
		"-drugseller.sell",
		"-drugseller.market",
		"-drugseller.harvest",
		"-drugseller.process"
	},
	["journal"] = {
		_config = {
			onspawn = function(player) end
		},
		"journalist.whitelisted"
	},
	["Pilot"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu pilot.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"pilot.vehicle",
		"pilot.paycheck"
	},
	["suvip"] = {
		_config = {
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "VIP rang tildelt.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onleave = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "VIP rang frataget.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
		},
		"hb.vip",
		"ramlov.vip"
	},
	["suvipplus"] = {
		_config = {
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "VIP+ rang tildelt.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onleave = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "VIP+ rang frataget.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
		},
		"hb.vip",
		"ramlov.vipplus"
	},
	["suvipplusplus"] = {
		_config = {
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "VIP++ rang tildelt.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onleave = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "VIP++ rang frataget.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
		},
		"hb.vip",
		"ramlov.vipplus",
		"ramlov.skate"
	},
		["Garderobe"] = {
		_config = {
			onspawn = function(player) end
		},
		"garderobe.adgang"
	},
	["lagerwhitelist"] = {
		_config = {
			onspawn = function(player) end
		},
		"lager.whitelisted"
	},
	["nummerplade"] = {
		_config = {
			onspawn = function(player) end
		},
		"nummerplade.whitelisted"
	},
	["haandvaerker"] = {
		_config = {
			onspawn = function(player) end
		},
		"haandvaerker.whitelisted"
	},
	["sellroom"] = {
		_config = {
			onspawn = function(player) end
		},
		"sellroom.whitelisted"
	},
	["lager.custom4"] = {
		_config = {
			onspawn = function(player) end
		},
		"Skab.4"
	},
	["lager.custom5"] = {
		_config = {
			onspawn = function(player) end
		},
		"Skab.5"
	},
	["lager.custom8"] = {
		_config = {
			onspawn = function(player) end
		},
		"Skab.8"
	},
	["lager.custom14"] = {
		_config = {
			onspawn = function(player) end
		},
		"Skab.14"
	},
	["lager.custom21"] = {
		_config = {
			onspawn = function(player) end
		},
		"Skab.21"
	},
	["lager1"] = {
		_config = {
			onspawn = function(player) end
		},
		"lager.box1"
	},
	["lager2"] = {
		_config = {
			onspawn = function(player) end
		},
		"lager.box2"
	},
	["lager3"] = {
		_config = {
			onspawn = function(player) end
		},
		"lager.box3"
	},
	["lager4"] = {
		_config = {
			onspawn = function(player) end
		},
		"lager.box4"
	},
	["lager5"] = {
		_config = {
			onspawn = function(player) end
		},
		"lager.box5"
	},
	["lager6"] = {
		_config = {
			onspawn = function(player) end
		},
		"lager.box6"
	},
	["lager7"] = {
		_config = {
			onspawn = function(player) end
		},
		"lager.box7"
	},
	["lager8"] = {
		_config = {
			onspawn = function(player) end
		},
		"lager.box8"
	},
	["lager9"] = {
		_config = {
			onspawn = function(player) end
		},
		"lager.box9"
	},
	["lager10"] = {
		_config = {
			onspawn = function(player) end
		},
		"lager.box10"
	},
	["lager11"] = {
		_config = {
			onspawn = function(player) end
		},
		"lager.box11"
	},
	["lager12"] = {
		_config = {
			onspawn = function(player) end
		},
		"lager.box12"
	},
	["lager13"] = {
		_config = {
			onspawn = function(player) end
		},
		"lager.box13"
	},
	["judge"] = {
		_config = {
			onspawn = function(player) end
		},
		"judge.whitelisted"
	},
	["psych"] = {
		_config = {
			onspawn = function(player) end
		},
		"psychologist.whitelisted"
	},
	["Køleskab"] = {
		_config = {
			onspawn = function(player) end
		},
		"fucking.koleskab"
	},
	["casino"] = {
		"casino.enter"
	},
	["casinono"] = {
		"-casino.enter"
	},
	["Lager"] = {
		_config = { gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu Lager.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"lager.paycheck",
		"lager.group.add",
		"lager.group.remove",
	},
	["Skraldemand"] = {
		_config = { gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu skraldemand.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"skraldemand.vehicle",
		"skraldemand.paycheck",
		"toggle.service",
		"skraldemand.market",
		"mission.skraldemand",
		"mission.skraldemand2"
	},
    ["Postbud"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu postbud.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
		},
		"delivery.gopostal",
		"postman.paycheck"
	},
    ["Lastbilchauffør"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu lastbilchauffør.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
		},
		"delivery.trucker",
		"trucker.vehicle",
		"trucker.paycheck"
	},
	["AKS"] = {
		_config = { 
			gtype = "job",
			onjoin = function(player)
				vRPclient.setCop(player,{true})
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu AKS.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
				vRPclient.giveWeapons(player,{{WEAPON_STUNGUN = {ammo = 1}, WEAPON_COMBATPISTOL = {ammo = 250}, WEAPON_CARBINERIFLE = {ammo = 250}}})
			end,
			onspawn = function(player)
				vRPclient.setCop(player,{true})
				vRPclient.giveWeapons(player,{{WEAPON_STUNGUN = {ammo = 1}, WEAPON_COMBATPISTOL = {ammo = 250}, WEAPON_CARBINERIFLE = {ammo = 250}}})
			end,
			onleave = function(player)
				vRPclient.setCop(player,{false})
				vRPclient.stopMission(player)
				vRPclient.removeWeapons(player,{{WEAPON_NIGHTSTICK = {ammo = 0}, WEAPON_STUNGUN = {ammo = 0}, WEAPON_PUMPSHOTGUN = {ammo = 0}, WEAPON_COMBATPISTOL = {ammo = 0}, WEAPON_SMG = {ammo = 0}, WEAPON_CARBINERIFLE = {ammo = 0}, WEAPON_SNIPERRIFLE = {ammo = 0}, WEAPON_SMOKEGRENADE = {ammo = 0}}})
			end
		},
		"police.menu",
		"police.carsearch",
		"police.cloakroom",
		"police.pc",
		"police.bodyarmor",
		"police.handcuff",
		"police.putinveh",
		"police.getoutveh",
		"police.check",
		"robbery.police",
		"police.service",
		"police.wanted",
		"radio.police",
		"police.seize.weapons",
		"police.seize.items",
		"police.license",
		"police.easy_jail",
		"police.fine",
		"police.announce",
		"-police.store_weapons",
		"-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
		"police.vehicle",
		"police.weapons",
		"police.paycheck",
		"police.drag",
		"police.robbery",
		"police.robbery1",
		"cop.keycard",
		"ems.keycard",
		"emergency.revive",
		"emergency.market",
		"police.menu_interaction"
	},
	["Politi-Job"] = {
		_config = { 
			gtype = "job",
			onjoin = function(player)
				vRPclient.setCop(player,{true})
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu Politi-Job.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
				vRPclient.giveWeapons(player,{{WEAPON_NIGHTSTICK = {ammo = 1}, WEAPON_FLASHLIGHT = {ammo = 1}, WEAPON_STUNGUN = {ammo = 1}, WEAPON_COMBATPISTOL = {ammo = 200}}})
			end,
			onspawn = function(player)
				vRPclient.setCop(player,{true})
				vRPclient.giveWeapons(player,{{WEAPON_NIGHTSTICK = {ammo = 1}, WEAPON_FLASHLIGHT = {ammo = 1}, WEAPON_STUNGUN = {ammo = 1}, WEAPON_COMBATPISTOL = {ammo = 250}}})
				end,
			onleave = function(player)
				vRPclient.setCop(player,{false})
				vRPclient.stopMission(player)
				vRPclient.removeWeapons(player,{{WEAPON_NIGHTSTICK = {ammo = 0}, WEAPON_STUNGUN = {ammo = 0}, WEAPON_PUMPSHOTGUN = {ammo = 0}, WEAPON_COMBATPISTOL = {ammo = 0}, WEAPON_VINTAGEPISTOL = {ammo = 0}, WEAPON_SMG = {ammo = 0}, WEAPON_CARBINERIFLE = {ammo = 0}, WEAPON_SNIPERRIFLE = {ammo = 0}, WEAPON_SMOKEGRENADE = {ammo = 0}}})
			end
		},
		"police.menu",
		"police.carsearch",
		"panik.service",
		"police.cloakroom",
		"police.pc",
		"police.bodyarmor",
		"police.handcuff",
		"ramlovdv.admin",
		"police.putinveh",
		"police.getoutveh",
		"police.check",
		"robbery.police",
		"police.service",
		"police.wanted",
		"police.seize.weapons",
		"police.seize.items",
		"police.license",
		"police.easy_jail",
		"police.fine",
		"police.announce",
		"-police.store_weapons",
		"-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
		"police.vehicle",
		"police.weapons",
		"police.paycheck",
		"police.drag",
		"police.robbery",
		"police.robbery1",
		"cop.keycard",
		"ems.keycard",
		"emergency.revive",
		"emergency.market",
		"police.menu_interaction",
        "politi.ledelse.doors",
        "politi.onduty",
        "admin.deleteveh",
        "bank.police",
        "police.easy_cuff",
        "police.easy_unjail",
        "police.jail",
        "police.store_weapons",
        "police.store_money",
        "holdup.police",
        "police.askid",
        "police.besked",
        "police.easy_fine",
        "police.garage",
        "policeheli.garage",
        "police.loadshop",
		"police.spikes",
		"radio.police",
	},
	["Elev"] = {
		_config = { 
			gtype = "job",
			onjoin = function(player)
				vRPclient.setCop(player,{true})
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu politielev.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
				vRPclient.giveWeapons(player,{{WEAPON_NIGHTSTICK = {ammo = 1}, WEAPON_FLASHLIGHT = {ammo = 1}, WEAPON_STUNGUN = {ammo = 1}, WEAPON_COMBATPISTOL = {ammo = 250}}})
			end,
			onspawn = function(player)
				vRPclient.setCop(player,{true})
				vRPclient.giveWeapons(player,{{WEAPON_NIGHTSTICK = {ammo = 1}, WEAPON_FLASHLIGHT = {ammo = 1}, WEAPON_STUNGUN = {ammo = 1}, WEAPON_COMBATPISTOL = {ammo = 250}}})
			end,
			onleave = function(player)
				vRPclient.setCop(player,{false})
				vRPclient.stopMission(player)
				vRPclient.removeWeapons(player,{{WEAPON_NIGHTSTICK = {ammo = 0}, WEAPON_STUNGUN = {ammo = 0}, WEAPON_PUMPSHOTGUN = {ammo = 0}, WEAPON_COMBATPISTOL = {ammo = 0}, WEAPON_VINTAGEPISTOL = {ammo = 0}, WEAPON_SMG = {ammo = 0}, WEAPON_CARBINERIFLE = {ammo = 0}, WEAPON_SNIPERRIFLE = {ammo = 0}, WEAPON_SMOKEGRENADE = {ammo = 0}}})
			end
		},
		"police.menu",
		"police.carsearch",
		"police.cloakroom",
		"police.pc",
		"police.bodyarmor",
		"police.handcuff",
		"police.putinveh",
		"police.getoutveh",
		"police.check",
		"robbery.police",
		"police.service",
		"police.wanted",
		"police.seize.weapons",
		"police.seize.items",
		"police.license",
		"police.easy_jail",
		"police.fine",
		"police.announce",
		"-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
		"policestudent.paycheck",
		"police.drag",
		"cop.keycard",
		"ems.keycard",
		"emergency.revive",
		"emergency.market",
		"radio.police",
		"police.menu_interaction"
	},
	["PET-agent"] = {
		_config = {
			gtype = "job",
			onjoin = function(player)
				vRPclient.setCop(player,{true})
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu PET-agent.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
				vRPclient.giveWeapons(player,{{WEAPON_FLASHLIGHT = {ammo = 1},WEAPON_PISTOL = {ammo = 250}}})
			end,
			onspawn = function(player)
				vRPclient.setCop(player,{true})
				vRPclient.giveWeapons(player,{{WEAPON_FLASHLIGHT = {ammo = 1},WEAPON_PISTOL = {ammo = 250}}})
			end,
			onleave = function(player)
				vRPclient.setCop(player,{false})
				vRPclient.stopMission(player)
				vRPclient.removeWeapons(player,{{WEAPON_FLASHLIGHT = {ammo = 0},WEAPON_PISTOL = {ammo = 0}}})
			end
		},
		"pet.whitelisted",
		"police.menu",
		"police.carsearch",
		"police.pc",
		"police.handcuff",
		"police.putinveh",
		"police.getoutveh",
		"police.check",
		"police.service",
		"police.wanted",
		"police.seize.weapons",
		"police.seize.items",
		"police.license",
		"police.vehicle",
		"radio.police",
		"police.easy_jail",
		"police.fine",
		"-police.store_weapons",
		"police.seizable", 
		"police.paycheck",
		"police.drag",
		"cop.keycard",
		"ems.keycard",
		"emergency.revive",
		"emergency.market",
		"police.menu_interaction"
	},
	["EMS-Job"] = {
		_config = { 
			gtype = "job",
			onjoin = function(player)
				vRPclient.setCop(player,{true})
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu EMS-Job.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
				vRPclient.giveWeapons(player,{WEAPON_STUNGUN = {ammo = 1}})
			end,
			onspawn = function(player)
				vRPclient.setCop(player,{true})
				vRPclient.giveWeapons(player,{WEAPON_STUNGUN = {ammo = 1}})
				end,
			onleave = function(player)
				vRPclient.setCop(player,{false})
				vRPclient.stopMission(player)
				vRPclient.removeWeapons(player,{{WEAPON_NIGHTSTICK = {ammo = 0}, WEAPON_STUNGUN = {ammo = 0}, WEAPON_PUMPSHOTGUN = {ammo = 0}, WEAPON_COMBATPISTOL = {ammo = 0}, WEAPON_VINTAGEPISTOL = {ammo = 0}, WEAPON_SMG = {ammo = 0}, WEAPON_CARBINERIFLE = {ammo = 0}, WEAPON_SNIPERRIFLE = {ammo = 0}, WEAPON_SMOKEGRENADE = {ammo = 0}}})
			end
		},
		"emergency.revive",
		"panik.service",
		"emergency.heal",
		"emergency.shop",
		"emergency.service",
		"emergency.cloakroom",
		"emergency.vehicle",
		"emergency.market",
		"emergency.medic",
		"emergency.announce",
		"emergency.menu",
		"emergency.putinveh",
		"emergency.getoutveh",
		"emergency.drag",
		"ems.keycard",
		"-police.store_weapons",
		"mission.emergency.transfer",
		"toggle.service",
		"emergency.paycheck",
		"doctor.cloakroom",
		"police.menu_interaction",
        "admin.deleteveh",
        "emergency.besked",
        "police.easy_cuff",
        "emergency.garage",
	},
	["EMS-Jobelev"] = {
		_config = {
			gtype = "job",
			onjoin = function(player)
				vRPclient.setCop(player,{true})
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu EMS-Jobelev.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player)
				vRPclient.setCop(player,{true})
			end,
			onleave = function(player)
				vRPclient.setCop(player,{false})
				vRPclient.stopMission(player)
			end
		},
		"emergency.revive",
		"emergency.heal",
		"emergency.shop",
		"emergency.service",
		"emergency.cloakroom",
		"emergency.vehicle",
		"emergency.market",
		"emergency.medic",
		"emergency.announce",
		"emergency.menu",
		"emergency.putinveh",
		"emergency.getoutveh",
		"emergency.drag",
		"ems.keycard",
		"-police.store_weapons",
		"mission.emergency.transfer",
		"toggle.service",
		"emergencystudent.paycheck",
		"doctor.cloakroom",
		"police.menu_interaction"
	},
	["Ejendom"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu EjendomsMægler.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"ejendoms.paycheck",
		"cut.market",
	}, 
		["handvarker"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu Håndværker.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"haend.paycheck",
		"haandvaerker.job",
	}, 


	["Mekaniker-Job"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu Mekaniker-Job.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"mechanic.whitelisted",
		"mechanic.emotes",
		"mek.keycard",
		"mech.announce",
		"vehicle.repair",
		"vehicle.replace",
		"vehicle.removekaz",
		"repair.service",
		"player.unlockvehicle",
--		"mission.repair.satellite_dishes",
--		"mission.repair.wind_turbines",
		"repair.vehicle",
		"repair.market",
		"repair.scrap",
		"repair.menu",
--		"toggle.service"
        "Mekaniker-Jobchef.paycheck",
        "Mekaniker-Job.paycheck",
        "Mekaniker-Job.adgang",
        "admin.deleteveh",
        "repair.loadshop",
        "repair.paycheck",
        "repair.besked",
        "repair.menu",
        "police.menu_interaction"
	}, 


		["Bilforhandler"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu Bilforhandler.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"bil.paycheck",
		"bil.market",
		"player.spawnvehicle",
		"player.deletevehicle",
	}, 
	
	["Taxi"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu Taxichauffør.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"taxi.service",
		"taxi.vehicle",
		"taxi.announce",
--		"mission.taxi.passenger",
--		"toggle.service",
		"taxi.paycheck",
        "taxi.garage",
        "taxi.besked",
--        "mission.taxi.passenger"
	},
	["Advokat"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu advokat.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"lawyer.service",
		"lawyer.announce",
		"lawyer.paycheck",
		"toggle.service",
		"mission.advokat",
--		"mission.advokat2",
		"advokat.vehicle",
	},
	["Biltyv"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu Biltyv.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"biltyv.access",
		"user.paycheck",
		"money.launder",
		"player.loot",
	},
		["Kriminel"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu Kriminel.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"kriminel.access",
		"user.paycheck",
		"farm.access",
		"money.launder",
		"player.loot",
	},
		["Drugdealer"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu Drugdealer.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"drugdealer.access",
		"user.paycheck",
		"money.launder",
		"player.loot",
	},
	
	["Dommer"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu dommer.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"-lawyer.paycheck",
		"judge.paycheck",
		"lawyer.service",
		"lawyer.announce",
		"toggle.service",
--		"mission.advokat",
--		"mission.advokat2",
		"advokat.vehicle"
	},
	["Psykolog"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu psykolog.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"psych.announce",
		"casino.group.remove",
		"casino.group.add",
		"psych.service",
		"psych.paycheck",
		"psykolog.vehicle"
	},
	["Journalist"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu journalist.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"journalist.announce",
		"journalist.service",
		"journalist.vehicle",
		"journalist.paycheck"
	},
	["Træhugger"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu træhugger.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"tree.cutter",
		"tree.vehicle",
		"tree.paycheck"
	},
	["Civil"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu civil borger.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end
	},
		"user.paycheck",
		"drugseller.sell",
		"drugseller.market",
		"drugseller.harvest",
		"civil.job",
		"drugseller.process",
		"hacker.0day",
		"money.launder",
		"player.loot",
	},
	["Udbringer"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu udbringer.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"mission.delivery.food",
		"delivery.vehicle",
		"civil.job",
		"delivery.paycheck",
		"pizza.market",
		"toggle.service"
	},
	["Pengetransport"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu pengetransporter.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"mission.bankdriver.moneybank",
		"mission.bankdriver.moneybank2",
		"bankdriver.vehicle",
		"civil.job",
		"bankdriver.paycheck",
		"bankdriver.money",
		"toggle.service"
	},
	["Minearbejder"] = {
		_config = {
			gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu minearbejder.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"mining.harvest",
		"mining.process",
		"mining.paycheck",
		"civil.job",
		"mining.sell",
		"mining.vehicle"
	},
	["Fisker"] = {
		_config = { gtype = "job",
			onjoin = function(player) 
				TriggerClientEvent("pNotify:SendNotification", player,{text = "Du er nu fisker.", type = "success", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end,
			onspawn = function(player) end,
			onleave = function(player) vRPclient.stopMission(player) end
		},
		"fisher.sell",
		"fisher.fish",
		"fisher.process",
		"fisher.vehicle",
		"fisher.paycheck"
	},
	["onservice"] = {}
}

-- groups are added dynamically using the API or the menu, but you can add group when an user join here
cfg.users = {
	[1] = { -- give superadmin and admin group to the first created user on the database
		"thanighthawk"
	}
}

-- group selectors
-- _config
--- x,y,z, blipid, blipcolor, permissions (optional)

cfg.selectors = {

	["Politi Los Santos"] = {
		_config = {x = 454.47848510742, y = -988.86291503906, z = 30.689605712891, blipid = 60, blipcolor = 17, permissions = {"cop.whitelisted"} },
		"Politi-Job",
		"Elev",
		"Civil"
	},
	["PET agent"] = {
		_config = {x = 2476.4152832031, y = -384.03573608398, z = 93.06899261, blipid = 0, blipcolor = 0, permissions = {"cop.whitelisted"} },
		"PET-agent",
		"Civil"
	},
	["Politi Paleto Bay"] = {
		_config = {x =-442.57192993164, y = 6012.4140625, z = 31.716394424438, blipid = 60, blipcolor = 17, permissions = {"cop.whitelisted"} },
		"Politi-Job",
		"Elev",
		"Civil"
	},
	["Politi Sandy Shores"] = {
		_config = {x = 1846.3393554688, y = 3693.1235351563, z = 34.28169631958, blipid = 60, blipcolor = 17, permissions = {"cop.whitelisted"} },
		"Politi-Job",
		"Elev",
		"Civil"
	},
	--["Advokat"] = {
	--	_config = {x = -358.15167236328, y = -109.01281738281, z =47.779979705811, blipid = 0, blipcolor = 0, permissions = {"lawyer.whitelisted"} },
	--	"Advokat",
	--	"Civil"

	--},
	--["Dommer"] = {
	--	_config = {x = 257.22860717773, y = -426.95440673828, z = -118.46514129639, blipid = 351, blipcolor = 16, permissions = {"judge.whitelisted"} },
	--	"Dommer",
	--	"Civil"
	--},
	["Lastbilchauffør"] = {
		_config = {x = -8.7233076095581, y = -2535.6423339844, z = 7.3853950500488, blipid = 0, blipcolor = 0},
		"Lastbilchauffør",
		"Civil"
	},
	["Skraldemand"] = {
		_config = {x = -428.5280456543, y = -1725.8753662109, z = 19.783840179443, blipid = 0, blipcolor = 0},
		"Skraldemand",
		"Civil"
	},
	["Minearbejder"] = {
		_config = {x = 2569.7785644531, y = 2719.7878417969, z = 40.908683776855, blipid = 0, blipcolor = 0},
		"Minearbejder",
		"Civil"
	},
	["Træhugger"] = {
		_config = {x = -601.65881347656, y = 5287.0893554688, z = 70.361709594727, blipid = 0, blipcolor = 0},
		"Træhugger",
		"Civil"
	},
	["Taxi"] = {
		_config = {x = 895.07861328125, y = -179.66278076172, z = 74.70036315918, blipid = 0, blipcolor = 0},
		"Taxi",
		"Civil"
	},
	["Journalist"] = {
		_config = {x = 1160.3024902344, y = -3191.966796875, z = -39.007976531982, blipid = 0, blipcolor = 0},
		"Journalist",
		"Civil"
	},
		["Offentligt Værksted"] = {
		_config = {x = 1135.5740966797, y = -784.88165283203, z = 57.598735809326, blipid = 0, blipcolor = 0, permissions = {"mechanic.whitelisted"} },
		"Mekaniker-Job",
		"Civil"
	},
		["LS Custom - North Santos - Offentligt Værksted"] = {
		_config = {x = 548.41162109375, y = -190.83526611328, z = 54.481342315674, blipid = 0, blipcolor = 0, permissions = {"mechanic.whitelisted"} },
		"Mekaniker-Job",
		"Civil"
	},
		["Ejendomsmægler"] = {
		_config = {x = -1910.7309570313, y = -574.6708984375, z = 19.097217559814, blipid = 0, blipcolor = 0, permissions = {"ejendoms.whitelisted"} },
		"Ejendom",
		"Civil"
	},
		["Abur Biler"] = {
		_config = {x = 1765.4149169922, y = 3321.0600585938, z = 41.438488006592, blipid = 0, blipcolor = 0, permissions = {"mechanic.whitelisted"} },
		"Mekaniker-Job",
		"Civil"
	},
		["MS-Auto"] = {
		_config = {x = -206.97331237793, y = -1331.1231689453, z = 34.894371032715, blipid = 0, blipcolor = 0, permissions = {"mechanic.whitelisted"} },
		"Mekaniker-Job",
		"Civil"
		},
		["Håndværker"] = {
		_config = {x = -61.998157501221, y = -2516.6047363281, z = 7.4011702537537, blipid = 0, blipcolor = 0, permissions = {"haandvaerker.whitelisted"} },
		"handvarker",
		"Biltyv",
		"Civil",
		},
		["PL-Auto"] = {
		_config = {x = 479.49563598633, y = -1326.2331542969, z = 29.207473754883, blipid = 0, blipcolor = 0, permissions = {"mechanic.whitelisted"} },
		"Mekaniker-Job",
		"Civil"
		},
		["EMS"] = {
		_config = {x =310.68002319336, y = -599.01049804688, z = 43.291816711426, blipid = 0, blipcolor = 0, permissions = {"ems.whitelisted"} },
		"EMS-Job",
		"Civil"
	},
		["EMS-Sandy"] = {
		_config = {x =1815.72265625, y = 3679.3735351563, z = 34.27645111084, blipid = 0, blipcolor = 0, permissions = {"ems.whitelisted"} },
		"EMS-Job",
		"EMS-Jobelev",
		"Civil"
	},
		["EMS-Paleto"] = {
		_config = {x =-248.17472839355, y = 6331.3129882813, z = 32.426139831543, blipid = 0, blipcolor = 0, permissions = {"ems.whitelisted"} },
		"EMS-Job",
		"EMS-Jobelev",
		"Civil"
	},
		["Advokat"] = {
		_config = {x =125.80411529541, y = -766.86804199219, z = 242.15219116211, blipid = 0, blipcolor = 0, permissions = {"lawyer.whitelisted"} },
		"Advokat",
		"Civil"
	},	
		["Lager"] = {
		_config = {x =1180.8507080078, y = -3113.9311523438, z = 6.0280246734619, blipid = 60, blipcolor = 17, permissions = {"lager.whitelisted"} },
		"Lager",
		"Civil"
	},	
}

return cfg
