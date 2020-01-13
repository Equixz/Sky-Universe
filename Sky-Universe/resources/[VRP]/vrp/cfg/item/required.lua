local items = {}

items["medkit"] = {"Medkit","Bruges til at genoplive bevistløse personer.",nil,0.10}
items["bandage"] = {"Plaster","Bruges til at helbrede personer.",nil,0.05}
items["firstaidkit"] = {"Førstehjælps-kasse","Bruges til at yde førstehjælp på tilskadekommende. Kræver førstehjælpskursus for at benytte.",nil,0.02}
items["dirty_money"] = {"Penge","Ulovligt anskaffede penge.",nil,0.00}
items["repairkit"] = {"Reparations kit","Bruges til at reparere køretøjer.",nil,0.50}

-- dykkerdragt der måske virker
--items["dykkerdragt"] = {"dykkerdragt","dykkerdragt.",function(args)
  --  local choices = {}
  --  local idname = args[1]

  --  choices["> Tag på"] = {function(player,choice,mod)
    --    if not vRP.isHandcuffed() then
    --    loadAnimDict("clothingtie")
    --    TaskPlayAnim(player, "clothingtie", "try_tie_positive_a", 5.0, 5.0, -1, 48, 0, 0, 0, 0)    
   -- end
   -- Citizen.Wait(3000)
   -- if(GetEntityModel(player) == GetHashKey("mp_f_freemode_01")) then
     --   SetPedComponentVariation(player, 11, 251, 17, 2) -- dykkerdragt top på kvinde
     --   SetPedComponentVariation(player, 8, 153, 0, 2) -- dykkertank kvinde
     --   SetPedComponentVariation(player, 4, 97, 17, 2) -- dykkerdragt bund på kvinde
    --    SetPedComponentVariation(player, 6, 70, 17, 2) -- svømmefødder på kvinde
   --     SetPedComponentVariation(player, 3, 18, 0, 2) -- arme på kvinde
  --  else
     --   SetPedComponentVariation(player, 11, 243, 17, 2) -- dykkerdragt top på mand
     --   SetPedComponentVariation(player, 8, 123, 0, 2) -- dykkertank mand
    --    SetPedComponentVariation(player, 4, 94, 17, 2) -- dykkerdragt bund på mand
   --     SetPedComponentVariation(player, 6, 67, 17, 2) -- svømmefødder på mand
   --     SetPedComponentVariation(player, 3, 17, 0, 2) -- arme på mand
  --  end
  --  TriggerClientEvent("pNotify:SendNotification",{text = "Du tog dykkergrejet på.",type = "success",timeout = (2000),layout = "centerLeft",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})  

  --  end}

  --return choices
--end,0}



-- money binder
items["money_binder"] = {"Penge binder","Bruges til at lave et bundt af 10.000 DKK.",function(args)
	local choices = {}
	local idname = args[1]
	choices["> Lav pengebundt"] = {function(player,choice,mod) -- bind the money
		local user_id = vRP.getUserId(player)
		if user_id ~= nil then
			local money = vRP.getMoney(user_id)
			if money >= 10000 then
				if vRP.tryGetInventoryItem(user_id, idname, 1, true) and vRP.tryPayment(user_id,10000) then
					vRP.giveInventoryItem(user_id, "money", 10000, true)
					vRP.closeMenu(player)
				end
			else
				TriggerClientEvent("pNotify:SendNotification", player,{text = {vRP.lang.money.not_enough()}, type = "error", queue = "global", timeout = 3000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end
		end
	end}
	return choices
end,0}

-- parametric weapon items
-- give "wbody|WEAPON_PISTOL" and "wammo|WEAPON_PISTOL" to have pistol body and pistol bullets

local get_wname = function(weapon_id)
	local name = string.gsub(weapon_id,"WEAPON_","")
	name = string.upper(string.sub(name,1,1))..string.lower(string.sub(name,2))
	-- lang translation support, ex: weapon.pistol = "Pistol", by default use the native name
	return vRP.lang.weapon[string.lower(name)]({}, name)
end

--- weapon body
local wbody_name = function(args)
	return get_wname(args[2])
end

local wbody_desc = function(args)
	return ""
end

local wbody_choices = function(args)
	local choices = {}
	local fullidname = joinStrings(args,"|")
	choices["> Klargør"] = {function(player,choice)
    local user_id = vRP.getUserId(player)
		if user_id ~= nil then
			if vRP.tryGetInventoryItem(user_id, fullidname, 1, true) then -- give weapon body
				local weapons = {}
				weapons[args[2]] = {ammo = 0}
				vRPclient.giveWeapons(player, {weapons})
				
				vRP.getUserIdentity(user_id, function(identity)
					local fornavn = identity.firstname
					local efternavn = identity.name
					local dato = os.date("**%d-%m-%Y** kl. **%X**")
					if identity then
						TriggerClientEvent('3dme:triggerDisplay', -1, "tager genstand", player)
						PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/606747086565933066/EZuKmZHE803_ksNpWICib075spOIz3a9Hqj2GriACq_Jv2ZQVKnHCBpJcmGGEx8dfaQC', function(err, text, headers) end, 'POST', json.encode({username = "Server " .. GetConvar("servernumber","0"), content = "**"..fornavn.." "..efternavn.." ("..user_id..")** har klarggjort sit våben **"..vRP.getItemName(fullidname).."** - ("..dato..")"}), { ['Content-Type'] = 'application/json' })
					end
				end)
				
				vRP.closeMenu(player)
			end
		end
	end}
  return choices
end

local wbody_weight = function(args)
	return 0.75
end

items["wbody"] = {wbody_name,wbody_desc,wbody_choices,wbody_weight}

--- weapon ammo
local wammo_name = function(args)
	return get_wname(args[2]).." - ammunition"
end

local wammo_desc = function(args)
	return ""
end

local wammo_choices = function(args)
	local choices = {}
	local fullidname = joinStrings(args,"|")

	choices["> Lad i våben"] = {function(player,choice)
    local user_id = vRP.getUserId(player)
		if user_id ~= nil then
		local amount = vRP.getInventoryItemAmount(user_id, fullidname)
			vRP.prompt(player, "Hvor meget vil du lade i dit våben? (max "..amount..")", "", function(player,ramount)
				ramount = parseInt(ramount)

				vRPclient.getWeapons(player, {}, function(uweapons)
					if uweapons[args[2]] ~= nil then -- check if the weapon is equiped
						if vRP.tryGetInventoryItem(user_id, fullidname, ramount, true) then -- give weapon ammo
							local weapons = {}
							weapons[args[2]] = {ammo = ramount}
							vRPclient.giveWeapons(player, {weapons,false})
							
							vRP.getUserIdentity(user_id, function(identity)
								local fornavn = identity.firstname
								local efternavn = identity.name
								local dato = os.date("**%d-%m-%Y** kl. **%X**")
								if identity then
									PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/606747086565933066/EZuKmZHE803_ksNpWICib075spOIz3a9Hqj2GriACq_Jv2ZQVKnHCBpJcmGGEx8dfaQC', function(err, text, headers) end, 'POST', json.encode({username = "Server " .. GetConvar("servernumber","0"), content = "**"..fornavn.." "..efternavn.." ("..user_id..")** har ladt sit våben med **"..ramount.."x "..vRP.getItemName(fullidname).."** - ("..dato..")"}), { ['Content-Type'] = 'application/json' })
								end
							end)
							vRP.closeMenu(player)
						end
					end
				end)
			end)
		end
	end}

	return choices
end

local wammo_weight = function(args)
	return 0.01
end

items["wammo"] = {wammo_name,wammo_desc,wammo_choices,wammo_weight}

return items
