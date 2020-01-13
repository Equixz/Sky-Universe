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
vRPclient = Tunnel.getInterface("vRP", "kaz_scripts")
local interiors = {}
distance = 30
timer = 0
current_int = 0
amount = 0
placement = 1


local placeringer = {
{sted= "1", X= -458.00677490234, Y= -2266.0883789063, Z= 8.5158281326294},
{sted= "2", X= -2166.5666503906, Y= 5197.2866210938, Z= 16.880392074585},
{sted= "3", X= 1332.6489257813, Y= 4325.853515625, Z= 38.068489074707},
}
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
				if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 252.67295837402,357.7001953125,105.53820800781, true) < distance then
					DrawMarker(27,252.67295837402,357.7001953125,105.53820800781-0.9, 0, 0, 0, 0, 0, 0, 1.01, 1.01, 0.3, 255, 0, 0, 105, 0, 0, 2, 0, 0, 0, 0)
					if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 252.67295837402,357.7001953125,105.53820800781, true) < 0.5 then
						DrawText3Ds(252.67295837402,357.7001953125,105.53820800781+0.1, "[~g~E~s~] for at købe adgang til køberen.", 3.0, 7)
						if (IsControlJustReleased(1, 38)) then
							TriggerServerEvent('kaz_sellroom:buy')
						end
					end
				end
					i = placement
					if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), placeringer[i].X,placeringer[i].Y,placeringer[i].Z, true ) < 25 then
						DrawMarker(27,placeringer[i].X,placeringer[i].Y,placeringer[i].Z-0.9,0,0,0,0,0,Rotation,1.001,1.0001,0.5001,255,0,0,200,0,0,0,true)					
							if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), placeringer[i].X,placeringer[i].Y,placeringer[i].Z, true ) < 2 then 
								if cooldown2 == true then 
									DrawText3Ds(placeringer[i].X,placeringer[i].Y,placeringer[i].Z+0.3, "~w~Vent venligst", 3.0, 7)
								else
									if amount > 0 then 
									DrawText3Ds(placeringer[i].X,placeringer[i].Y,placeringer[i].Z+0.3, "~w~Tryk [~g~E~w~] for at købe kokainblade. ("..amount..")", 3.0, 7) 
									DrawText3Ds(placeringer[i].X,placeringer[i].Y,placeringer[i].Z, "250 styk for 62.500kr", 3.0, 7) 
											if IsControlJustPressed(1, 38) then
												TriggerServerEvent('kaz_sellroom:kokainbuy', amount, placement)
											end
									else
									DrawText3Ds(placeringer[i].X,placeringer[i].Y,placeringer[i].Z+0.3, "~w~Sælgeren er løbet tør, Vent venligst.", 3.0, 7) 
									end
								end
					end		end				
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(1000)
		if timer > 0 then
			timer=timer-1
			if timer == 0 then current_int = 0 end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(1000)
			TriggerServerEvent('kaz_sellroom:newupdate')
	end
end)

RegisterNetEvent("kaz_sellroom:updateamount")
AddEventHandler("kaz_sellroom:updateamount", function(amountnew)
amount = amountnew
end)

RegisterNetEvent("kaz_sellroom:placeupdate")
AddEventHandler("kaz_sellroom:placeupdate", function(placementnew)
placement = placementnew
Citizen.Wait(1800000)
amount = 4
end)

RegisterNetEvent("kaz_sellroom:newupdate2")
AddEventHandler("kaz_sellroom:newupdate2", function(amountnew, placementnew)
amount = amountnew
placement = placementnew
end)

function drawTxt(text, font, centre, x, y, scale, r, g, b, a)
	SetTextFont(font)
	SetTextProportional(0)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(centre)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x, y)
end
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

