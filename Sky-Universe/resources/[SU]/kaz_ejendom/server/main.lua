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
vRPclient = Tunnel.getInterface("vRP", "kaz_ejendom")


MySQL.createCommand("vRP/kaz:get_home_owner1","SELECT number FROM vrp_user_homes WHERE home = @home")
MySQL.createCommand("vRP/kaz:get_home_owner2","SELECT user_id FROM vrp_user_homes WHERE home = @home AND number = @number")
MySQL.createCommand("vRP/kaz:get_home_owner3","SELECT number FROM vrp_user_homes WHERE user_id = @user_id")
MySQL.createCommand("vRP/kaz:set_address","REPLACE INTO vrp_user_homes(user_id,home,number) VALUES(@user_id,@home,@number)")
MySQL.createCommand("vRP/kaz:set_address2","DELETE FROM vrp_user_homes WHERE user_id = @user_id")

RegisterServerEvent("kaz_ejendom:test")
AddEventHandler("kaz_ejendom:test", function()
  local user_id = vRP.getUserId({source})
  local _source = source

  
end)

RegisterServerEvent('kaz_ejendom:hentjob')
AddEventHandler("kaz_ejendom:hentjob", function()
local user_id = vRP.getUserId({source})
local _source = source
	if vRP.hasGroup({user_id,"Ejendom"}) then
	status = true
	TriggerClientEvent('kaz_ejendom:leverjob', -1, status)
	else
	status = false
	TriggerClientEvent('kaz_ejendom:leverjob', -1, status)
	end
end)

RegisterServerEvent('kaz_ejendom:kobnogle')
AddEventHandler("kaz_ejendom:kobnogle", function(nogle)
local user_id = vRP.getUserId({source})
local _source = source
local nogle = nogle
local pris = 50000
	if vRP.tryFullPayment({user_id,pris}) then	
		vRP.giveInventoryItem({user_id,nogle,1,false})
		TriggerClientEvent("pNotify:SendNotification", source,{text = "Success! Du købte nøgle nummer "..nogle..".", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
		PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/606544581068193823/b2LKYxgf2q60g5UCSjh-FHJ9qh69UrrQMpwRBhle9NClyaqDAuTWpDgQoTERK_k__wxu', function(err, text, headers) end, 'POST', json.encode({username = "ejendom", content = "**ID: "..user_id.."**  købte nøgle "..nogle.."."}), { ['Content-Type'] = 'application/json' })
	else
		TriggerClientEvent("pNotify:SendNotification", source,{text = "Du har ikke råd!", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
	end
end)

RegisterServerEvent('kaz_ejendom:tilbagenow')
AddEventHandler("kaz_ejendom:tilbagenow", function(Lejlighed, Etage, ID)
local user_id = vRP.getUserId({source})
local source = source
local Nuser = ID
local number = Etage
local home = ("Lejlighed"..tostring(Lejlighed).."")
	if Lejlighed == 1 then pris = 1000000 end
	if Lejlighed == 2 then pris = 1000000 end
	if Lejlighed == 3 then pris = 5000000 end
	if Lejlighed == 4 then pris = 10000000 end
	if Lejlighed == 5 then pris = 10000000 end
	if Lejlighed == 6 then pris = 10000000 end
	if Lejlighed == 7 then pris = 10000000 end
	if Lejlighed == 8 then pris = 10000000 end
	if Lejlighed == 9 then pris = 10000000 end
	if Lejlighed == 10 then pris = "ukendt" end -- 
	if Lejlighed == 11 then pris = 10000000 end 
	if Lejlighed == 12 then pris = "ukendt" end --
	if Lejlighed == 13 then pris = "ukendt" end --
	if Lejlighed == 14 then pris = 5000000 end
	if Lejlighed == 15 then pris = 7000000 end
	if Lejlighed == 16 then pris = 450000 end
	if Lejlighed == 17 then pris = 450000 end
	if Lejlighed == 18 then pris = 1500000 end
	if Lejlighed == 19 then pris = 1500000 end
	if Lejlighed == 20 then pris = 1500000 end
	if Lejlighed == 21 then pris = 1500000 end
	if Lejlighed == 22 then pris = 1500000 end
	if Lejlighed == 23 then pris = 1500000 end
	if Lejlighed == 24 then pris = 1500000 end
	if Lejlighed == 25 then pris = 1500000 end
	if Lejlighed == 26 then pris = "ukendt" end --
	if Lejlighed == 27 then pris = "ukendt" end --
		
		if pris == "ukendt" then 
			TriggerClientEvent("pNotify:SendNotification", source,{text = "Denne lejlighed kan ikke Tilbagetrækkes!", typ = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
		else
				MySQL.query("vRP/kaz:get_home_owner3", {user_id = Nuser}, function(rows, affected)
					if #rows == 1 then 
									local betaling = pris/100*25
									vRP.giveBankMoney({Nuser,betaling})
									MySQL.execute("vRP/kaz:set_address2", {user_id = Nuser})
									TriggerClientEvent("pNotify:SendNotification", source,{text = "Du fjernede boligen fra "..ID.." og personen fik "..betaling.."kr.", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
									PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/606544581068193823/b2LKYxgf2q60g5UCSjh-FHJ9qh69UrrQMpwRBhle9NClyaqDAuTWpDgQoTERK_k__wxu', function(err, text, headers) end, 'POST', json.encode({username = "ejendom", content = "**ID: "..user_id.."**  Tilbagetrak "..home.." fra ID: "..Nuser.."."}), { ['Content-Type'] = 'application/json' })
					else
						TriggerClientEvent("pNotify:SendNotification", source,{text = "Brugeren har ikke en Lejlighed!", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
					end
				end)
		end
end)

RegisterServerEvent('kaz_ejendom:customnow')
AddEventHandler("kaz_ejendom:customnow", function(navn, pris, ID)
local user_id = vRP.getUserId({source})
local source = source
local Nuser = ID
local pris = pris
local navn = navn
		
		if pris ~= nil then
			if pris > 0 then
				if vRP.tryFullPayment({Nuser,pris}) then
					local lon = pris/100*10
					vRP.giveBankMoney({user_id,lon})
					TriggerClientEvent("pNotify:SendNotification", source,{text = "Du solgte en bolig og fik "..lon.."kr.", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
					PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/606544581068193823/b2LKYxgf2q60g5UCSjh-FHJ9qh69UrrQMpwRBhle9NClyaqDAuTWpDgQoTERK_k__wxu', function(err, text, headers) end, 'POST', json.encode({username = "ejendom", content = "**ID: "..user_id.."**  solgte en custom bolig ("..navn..") til ID: "..Nuser..". Pris: "..pris..", Løn: "..lon.."."}), { ['Content-Type'] = 'application/json' })
				else
					TriggerClientEvent("pNotify:SendNotification", source,{text = "Brugeren har ikke råd", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
				end
			else 
				TriggerClientEvent("pNotify:SendNotification", source,{text = "Prisen skal være større end 0!", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
			end
		else
			TriggerClientEvent("pNotify:SendNotification", source,{text = "Ingen pris indtastet?", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
		end	
end)

RegisterServerEvent('kaz_ejendom:salenow')
AddEventHandler("kaz_ejendom:salenow", function(Lejlighed, Etage, ID)
local user_id = vRP.getUserId({source})
local source = source
local Nuser = ID
local number = Etage
local home = ("Lejlighed"..tostring(Lejlighed).."")
	if Lejlighed == 1 then pris = 1000000 end
	if Lejlighed == 2 then pris = 1000000 end
	if Lejlighed == 3 then pris = 5000000 end
	if Lejlighed == 4 then pris = 10000000 end
	if Lejlighed == 5 then pris = 10000000 end
	if Lejlighed == 6 then pris = 10000000 end
	if Lejlighed == 7 then pris = 10000000 end
	if Lejlighed == 8 then pris = 10000000 end
	if Lejlighed == 9 then pris = 10000000 end
	if Lejlighed == 10 then pris = "ukendt" end -- 
	if Lejlighed == 11 then pris = 10000000 end 
	if Lejlighed == 12 then pris = "ukendt" end --
	if Lejlighed == 13 then pris = "ukendt" end --
	if Lejlighed == 14 then pris = 5000000 end
	if Lejlighed == 15 then pris = 7000000 end
	if Lejlighed == 16 then pris = 450000 end
	if Lejlighed == 17 then pris = 450000 end
	if Lejlighed == 18 then pris = 1500000 end
	if Lejlighed == 19 then pris = 1500000 end
	if Lejlighed == 20 then pris = 1500000 end
	if Lejlighed == 21 then pris = 1500000 end
	if Lejlighed == 22 then pris = 1500000 end
	if Lejlighed == 23 then pris = 1500000 end
	if Lejlighed == 24 then pris = 1500000 end
	if Lejlighed == 25 then pris = 1500000 end
	if Lejlighed == 26 then pris = "ukendt" end --
	if Lejlighed == 27 then pris = "ukendt" end --
	
	if pris == "ukendt" then 
		TriggerClientEvent("pNotify:SendNotification", source,{text = "Denne lejlighed kan ikke sælges!", typ = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
	else
			MySQL.query("vRP/kaz:get_home_owner3", {user_id = Nuser}, function(rows, affected)
				if #rows == 0 then 
					MySQL.query("vRP/kaz:get_home_owner2", {home = home, number = number}, function(rows, affected)
						if #rows == 0 then
							if vRP.tryFullPayment({Nuser,pris}) then
								local lon = pris/100*10
								MySQL.execute("vRP/kaz:set_address", {user_id = Nuser, home = home, number = number})
								vRP.giveBankMoney({user_id,lon})
								TriggerClientEvent("pNotify:SendNotification", source,{text = "Du solgte en bolig og fik "..lon.."kr.", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
								PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/606544581068193823/b2LKYxgf2q60g5UCSjh-FHJ9qh69UrrQMpwRBhle9NClyaqDAuTWpDgQoTERK_k__wxu', function(err, text, headers) end, 'POST', json.encode({username = "ejendom", content = "**ID: "..user_id.."**  Solgte "..home.." til ID: "..Nuser.."."}), { ['Content-Type'] = 'application/json' })
							else
								TriggerClientEvent("pNotify:SendNotification", source,{text = "Køberen har ikke råd!", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
							end
						else
							TriggerClientEvent("pNotify:SendNotification", source,{text = "Lejligheden er optaget!", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
						end
					end)
				else
					TriggerClientEvent("pNotify:SendNotification", source,{text = "Brugeren har allerede en lejlighed!", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
				end
			end)
	end
end)

RegisterServerEvent('kaz_ejendom:Checklej')
AddEventHandler("kaz_ejendom:Checklej", function(nr)
local source = source
home = ("Lejlighed"..tostring(nr).."")
number = 1
Lej1 = true 
Lej2 = true 
Lej3 = true 
Lej4 = true 
Lej5 = true 
Lej6 = true 
Lej7 = true 
Lej8 = true 
Lej9 = true 
Lej10 = true 

  MySQL.query("vRP/kaz:get_home_owner1", {home = home}, function(rows, affected)
    if #rows > 0 then
		for i = 1, #rows do
			if rows[i].number ~= nil then 
				antaloptaget(rows[i].number)
			end
		end
	end	 
	if #rows < 10 then 
		antalledig(source)
	elseif #rows >= 10 then 
		TriggerClientEvent("pNotify:SendNotification", source,{text = "Udsolgt!", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
	elseif #rows == 0 then 
		TriggerClientEvent("pNotify:SendNotification", source,{text = "Ingen Lejligheder solgt, alle 10 er ledige!", type = "error", queue = "global", timeout = 10000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
	end
  end)
end)

function antaloptaget(optaget)
if optaget == 1 then 
	Lej1 = false
elseif optaget == 2 then 
	Lej2 = false
elseif optaget == 3 then 
	Lej3 = false
elseif optaget == 4 then 
	Lej4 = false
elseif optaget == 5 then 
	Lej5 = false
elseif optaget == 6 then 
	Lej6 = false
elseif optaget == 7 then 
	Lej7 = false
elseif optaget == 8 then 
	Lej8 = false
elseif optaget == 9 then 
	Lej9 = false
elseif optaget == 10 then 
	Lej10 = false
end
end

function antalledig(source)
local source = source
ledig = "Følgende etager er ledige: "
if Lej1 == true then 
	ledig = (ledig.."1")
end
if Lej2 == true then 
	ledig = (ledig..",2")
end
if Lej3 == true then 
	ledig = (ledig..",3")
end
if Lej4 == true then 
	ledig = (ledig..",4")
end
if Lej5 == true then 
	ledig = (ledig..",5")
end
if Lej6 == true then 
	ledig = (ledig..",6")
end
if Lej7 == true then 
	ledig = (ledig..",7")
end
if Lej8 == true then 
	ledig = (ledig..",8")
end
if Lej9 == true then 
	ledig = (ledig..",9")
end
if Lej10 == true then 
	ledig = (ledig..",10")
end
ledig = (ledig..". Disse kan sælges!")
TriggerClientEvent("pNotify:SendNotification", source,{text = ledig, type = "error", queue = "global", timeout = 15000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
end


	
	
