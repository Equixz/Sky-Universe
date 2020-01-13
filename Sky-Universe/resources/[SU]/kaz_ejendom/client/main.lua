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

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "kaz_ejendom")


local show = false
local openup = false
local status = false
local nogleantal = Config.nogleantal
local lejlighedsantal = Config.lejlighedsantal

function openGui(locationID)
  if show == false then
    SetNuiFocus(true, true)
    SendNUIMessage({
      show = true,
      locationID = locationID,
      location = Config.Locations[1],
      vehicles = Config.Vehicles
    })
  end
end

function openKeys()
  if show == false then
    SetNuiFocus(true, true)
    SendNUIMessage({
      keys = true,
    })
  end
end

function openPris()
  if show == false then
    SetNuiFocus(true, true)
    SendNUIMessage({
      pris = true,
    })
  end
end

function openCheck()
  if show == false then
    SetNuiFocus(true, true)
    SendNUIMessage({
      check = true,
    })
  end
end

function openCustom()
  if show == false then
    SetNuiFocus(true, true)
    SendNUIMessage({
      custom = true,
    })
  end
end

function openBuy()
  if show == false then
    SetNuiFocus(true, true)
    SendNUIMessage({
      buy = true,
    })
  end
end

function openTilbage()
  if show == false then
    SetNuiFocus(true, true)
    SendNUIMessage({
      tilbage = true,
    })
  end
end

function closeGui()
  show = false
  SetNuiFocus(false)
  SendNUIMessage({show = false})
  SendNUIMessage({keys = false})
  SendNUIMessage({pris = false})
  SendNUIMessage({check = false})
  SendNUIMessage({buy = false})
  SendNUIMessage({tilbage = false})
  SendNUIMessage({custom = false})
end


RegisterNUICallback("close", function(data)
  closeGui()
end)


RegisterNUICallback("knap1", function(data)
  closeGui()
  openBuy()
end)

RegisterNUICallback("knap2", function(data)
  closeGui()
  openTilbage()
end)

RegisterNUICallback("knap3", function(data)
  closeGui()
  openPris()
end)

RegisterNUICallback("knap4", function(data)
  closeGui()
  openKeys()
end)

RegisterNUICallback("knap5", function(data)
  closeGui()
  openCheck()
end)

RegisterNUICallback("knap6", function(data)
  closeGui()
  openCustom()
end)

RegisterNUICallback('check3', function(data, cb) 
	for k,v in pairs(data) do
		if k == "check2" then
			nr = tonumber(v)
			if nr ~= nil then 
				if nr > 0 then 
					if nr <= Config.lejlighedsantal then  
						TriggerServerEvent('kaz_ejendom:Checklej', nr)
					else
						TriggerEvent("pNotify:SendNotification",{text = "Dette nummer findes ikke!",type = "success",timeout = (8500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					end
				else
						TriggerEvent("pNotify:SendNotification",{text = "Ingen lejlighed med dette nummer!",type = "success",timeout = (8500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}}) 
				end
			else
				TriggerEvent("pNotify:SendNotification",{text = "Skal et tal!",type = "success",timeout = (8500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}}) 
			end	
		end
	end	
end)

RegisterNUICallback('soldthis', function(data, cb)
Lejlighed = tonumber(data.sold1)
Etage = tonumber(data.sold2)
ID = tonumber(data.sold3)
	if Lejlighed ~= nil and Lejlighed > 0 then
		if Etage ~= nil and Etage > 0 then
			if ID ~= nil and ID > 0 then
				TriggerServerEvent('kaz_ejendom:salenow', Lejlighed, Etage, ID)
			else
				TriggerEvent("pNotify:SendNotification",{text = "Du har ikke indtastet et ID!",type = "success",timeout = (8500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}}) 
			end
		else
			TriggerEvent("pNotify:SendNotification",{text = "Du har ikke indtastet en etage!",type = "success",timeout = (8500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}}) 
		end
	else
		TriggerEvent("pNotify:SendNotification",{text = "Du har ikke indtastet en lejlighed!",type = "success",timeout = (8500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}}) 
	end
end)	

RegisterNUICallback('tilbagethis', function(data, cb)
Lejlighed = tonumber(data.tilbage1)
Etage = tonumber(data.tilbage2)
ID = tonumber(data.tilbage3)
	if Lejlighed ~= nil and Lejlighed > 0 then
		if Etage ~= nil and Etage > 0 then
			if ID ~= nil and ID > 0 then
				TriggerServerEvent('kaz_ejendom:tilbagenow', Lejlighed, Etage, ID)
			else
				TriggerEvent("pNotify:SendNotification",{text = "Du har ikke indtastet et ID!",type = "success",timeout = (8500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}}) 
			end
		else
			TriggerEvent("pNotify:SendNotification",{text = "Du har ikke indtastet en etage!",type = "success",timeout = (8500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}}) 
		end
	else
		TriggerEvent("pNotify:SendNotification",{text = "Du har ikke indtastet en lejlighed!",type = "success",timeout = (8500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}}) 
	end
end)	

RegisterNUICallback('customthis', function(data, cb)
navn = data.custom1
pris = tonumber(data.custom2)
ID = tonumber(data.custom3)
	if navn ~= nil then
		if pris ~= nil and pris > 0 then
			if ID ~= nil and ID > 0 then
				TriggerServerEvent('kaz_ejendom:customnow', navn, pris, ID)
			else
				TriggerEvent("pNotify:SendNotification",{text = "Du har ikke indtastet et ID!",type = "success",timeout = (8500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}}) 
			end
		else
			TriggerEvent("pNotify:SendNotification",{text = "Du har ikke indtastet en pris!",type = "success",timeout = (8500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}}) 
		end
	else
		TriggerEvent("pNotify:SendNotification",{text = "Du har ikke indtastet en bolig!",type = "success",timeout = (8500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}}) 
	end
end)

RegisterNUICallback('kobnogle', function(data, cb) 
	for k,v in pairs(data) do
		if k == "nogle" then
			nogle = v
			TriggerServerEvent('kaz_ejendom:kobnogle', nogle)

		end
	end	
end)

function notification(text)
  SetNotificationTextEntry("STRING")
  AddTextComponentString(text)
  DrawNotification(false, false)
end

RegisterNetEvent("kaz_ejendom:notification")
AddEventHandler("kaz_ejendom:notification", function(text)
	notification(text)
end)

RegisterNetEvent('kaz_ejendom:leverjob')
AddEventHandler('kaz_ejendom:leverjob', function(status)
	if status == true then
		if openup == true then
			openGui(index)
		end
	else
		print("Ikke ejendomsmægler!")
	end
end)



Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    local pos = GetEntityCoords(GetPlayerPed(-1), true)
    for index, item in pairs(Config.Locations) do
      if(Vdist(pos.x, pos.y, pos.z, item.Coords[1], item.Coords[2], item.Coords[3]+0.2) < 1.0)then
        if IsControlJustPressed(1, 51) then
			TriggerServerEvent('kaz_ejendom:hentjob')
			openup = true
			Citizen.Wait(4000)
			openup = false
        end
      end
    end
  end
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    local pos = GetEntityCoords(GetPlayerPed(-1), true)
    for index, item in pairs(Config.Locations) do
      if(Vdist(pos.x, pos.y, pos.z, item.Coords[1], item.Coords[2], item.Coords[3]+1) < 10.0)then
	    DrawMarker(27, item.Coords[1], item.Coords[2], item.Coords[3] - 0.90,0,0,0,0,0,Rotation,1.501,1.5001,0.5001,255,0,0,200,0,0,0,true)	
        if GetDistanceBetweenCoords(item.Coords[1], item.Coords[2], item.Coords[3], GetEntityCoords(GetPlayerPed(-1))) < 1 then
          DrawText3Ds(item.Coords[1], item.Coords[2], item.Coords[3]+0.2, "[~g~E~s~] For at tilgå Ejendomdokumenterne")
        end
      end
    end
  end
end)




function DrawText3Ds(x,y,z, text)
  local onScreen,_x,_y=World3dToScreen2d(x,y,z)
  local px,py,pz=table.unpack(GetGameplayCamCoords())
  
  SetTextScale(0.35, 0.35)
  SetTextFont(4)
  SetTextProportional(1)
  SetTextColour(255, 255, 255, 215)
  SetTextEntry("STRING")
  SetTextCentre(1)
  AddTextComponentString(text)
  DrawText(_x,_y)
  local factor = (string.len(text)) / 370
  DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

AddEventHandler(
  "onResourceStop",
  function(resource)
    if resource == GetCurrentResourceName() then
      closeGui()
    end
  end
)