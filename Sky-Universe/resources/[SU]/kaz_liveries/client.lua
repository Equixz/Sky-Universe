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
vRPclient = Tunnel.getInterface("vRP", "kaz_liveries")

local malerplace = nil
local malerstedet = 3
local show = false
local liverycar = nil
local liveryamount = 0
local malersteder = {
{sted= "1", X= 477.38891601563, Y= -2007.7410888672, Z= 23.297395706177},
{sted= "2", X= 169.43014526367, Y= -1716.6184082031, Z= 29.291666030884}, 
{sted= "3", X= 174.58068847656, Y= -1736.6612548828, Z=29.291687011719}, 
}

Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
		if malerplace ~= nil then 
			for i = malerplace,malerplace do
				if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), malersteder[i].X,malersteder[i].Y,malersteder[i].Z, true ) < 5 then
					incar = IsPedInAnyVehicle(GetPlayerPed(-1), false) 
					if incar == 1 then 
						DrawMarker(1, malersteder[i].X,malersteder[i].Y,malersteder[i].Z-1.1,0,0,0,0,0,0,4.501,4.5001,0.5001,102,204,0,200,0,0,0,true)
						if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), malersteder[i].X,malersteder[i].Y,malersteder[i].Z, true ) < 3 then
							drawTxt("Tryk [~g~E~w~] for at åbne Liverymenuen.",0,1,0.5,0.82,0.6,255,255,255,255)
							if IsControlJustPressed(1, 38) then
								liverycar = GetVehiclePedIsIn(GetPlayerPed(-1), false)
								liveryamount = GetVehicleLiveryCount(liverycar)
								if liveryamount == -1 then 
									liveryamount = 0
								end
								if liverycar ~= nil and liveryamount ~= nil then 
									openGui(liveryamount, liverycar)
								end
							end
						end
					end
				end
			end
		end
	end
end)

Citizen.CreateThread(function()
    while true do
    Citizen.Wait(1000)
		for i = 1,malerstedet do
			if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), malersteder[i].X,malersteder[i].Y,malersteder[i].Z, true ) < 5 then
				malerplace = i
			end
		end
	end
end)
function openGui(liveryamount, liverycar)
  if show == false then
    SetNuiFocus(true, true)
    SendNUIMessage({
      show = true,
	  liveryamount = liveryamount,
	  liverycar = liverycar,
    })
  end
end

RegisterNUICallback("close", function(data)
  closeGui()
end)

function closeGui()
  show = false
  SetNuiFocus(false)
  SendNUIMessage({show = false})
end

AddEventHandler(
  "onResourceStop",
  function(resource)
    if resource == GetCurrentResourceName() then
      closeGui()
    end
  end
)
RegisterNUICallback("knap1", function(data)
	if liverycar ~= nil then 
		if liveryamount >= 1 then
			SetVehicleLivery(liverycar, 1)
		else
			TriggerEvent("pNotify:SendNotification",{text = "Bilen har ikke så mange liveries!",type = "success",timeout = (8500),layout = "centerLeft",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
		end
	end
end)
RegisterNUICallback("knap2", function(data)
	if liverycar ~= nil then 
		if liveryamount >= 2 then
			SetVehicleLivery(liverycar, 2)
		else
			TriggerEvent("pNotify:SendNotification",{text = "Bilen har ikke så mange liveries!",type = "success",timeout = (8500),layout = "centerLeft",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
		end
	end
end)
RegisterNUICallback("knap3", function(data)
	if liverycar ~= nil then 
		if liveryamount >= 3 then
			SetVehicleLivery(liverycar, 3)
		else
			TriggerEvent("pNotify:SendNotification",{text = "Bilen har ikke så mange liveries!",type = "success",timeout = (8500),layout = "centerLeft",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
		end
	end
end)
RegisterNUICallback("knap4", function(data)
	if liverycar ~= nil then 
		if liveryamount >= 4 then
			SetVehicleLivery(liverycar, 4)
		else
			TriggerEvent("pNotify:SendNotification",{text = "Bilen har ikke så mange liveries!",type = "success",timeout = (8500),layout = "centerLeft",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
		end
	end
end)
RegisterNUICallback("knap5", function(data)
	if liverycar ~= nil then 
		if liveryamount >= 5 then
			SetVehicleLivery(liverycar, 5)
		else
			TriggerEvent("pNotify:SendNotification",{text = "Bilen har ikke så mange liveries!",type = "success",timeout = (8500),layout = "centerLeft",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
		end
	end
end)

RegisterNUICallback("knap6", function(data)
	if liverycar ~= nil then 
		local ok, vtype, name = vRP.getNearestOwnedVehicle({7})
		carlivery = GetVehicleLivery(liverycar)
			if carlivery ~= nil then 
				if name ~= nil then
					TriggerServerEvent('kaz_liveries:gembil', carlivery, name)
				else
					TriggerEvent("pNotify:SendNotification",{text = "Ingen bil fundet!",type = "success",timeout = (8500),layout = "centerLeft",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
				end
			else
				TriggerEvent("pNotify:SendNotification",{text = "Intet livery fundet!",type = "success",timeout = (8500),layout = "centerLeft",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
			end
	else	
		TriggerEvent("pNotify:SendNotification",{text = "Ingen bil fundet!",type = "success",timeout = (8500),layout = "centerLeft",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
	end
end)

RegisterNetEvent("kaz_livery:bilgemt")
AddEventHandler("kaz_livery:bilgemt", function(livery)
closeGui()
end)

RegisterNetEvent("kaz_liveries:hentlivery")
AddEventHandler("kaz_liveries:hentlivery", function(livery)
liverynew = tonumber(livery)
Citizen.Wait(1000)
liverycar = GetVehiclePedIsIn(GetPlayerPed(-1), false)
	if liverycar ~= nil then 
		if liverynew == 1 or liverynew == 2 or liverynew == 3 or liverynew == 4 or liverynew == 5 then 
			SetVehicleLivery(liverycar, liverynew)
		end
	end
end)

function drawTxt(text,font,centre,x,y,scale,r,g,b,a)
	SetTextFont(6)
	SetTextProportional(6)
	SetTextScale(scale/1.0, scale/1.0)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0,255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(centre)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x , y)
end


