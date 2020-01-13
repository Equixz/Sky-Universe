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
vRPserver = Tunnel.getInterface("vRP","vRP_carcrusher")
vRPccS = Tunnel.getInterface("vRP_carcrusher","vRP_carcrusher")

local x, y, z = -29.110761642456,-1086.6175537109,26.575979232788 -- STARTSTED
local x2, y2, z2 = -33.62593460083, -1094.2514648438, 26.422338485718 -- SALGSSTED
local x3, y3, z3 = -31.060289382935, -1090.8840332031, 26.422241210938 -- SKAL VÆRE INDENFOR DETTE

vehiclePrice = 0
vehicleName = ""
vehModel = ""

incircle = false
incircle2 = false
crusherBlip = nil
cevaVariabila = false

function crusher_drawTxt(text,font,centre,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextProportional(0)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0,255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(centre)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x, y)
end

function DrawText3D(x,y,z, text, scl, font) 

    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
 
    local scale = (1/dist)*scl
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
   
    if onScreen then
        SetTextScale(0.0*scale, 1.1*scale)
        SetTextFont(font)
        SetTextProportional(1)
        -- SetTextScale(0.0, 0.55)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

function createRematBlip(x, y, z)
	if (crusherBlip == nil) then
		--vRP.setNamedBlip({"Skrot køretøj", x, y, z, 380, 49, "Skrot køretøj"})
		crusherBlip = true
	end
end

Citizen.CreateThread(function()
	while true do
		local pos = GetEntityCoords(GetPlayerPed(-1), true)
		
		if(GetDistanceBetweenCoords(pos.x, pos.y, pos.z, x, y, z) < 40.0)then
			--DrawText3Ds(x,y,z+0.3, "~w~Sælg dit køretøj!", 3.0, 7)
			--DrawText3Ds(x,y,z+0.08, "~w~Sælg dit køretøj for ~r~25% ~w~af prisen!", 3.0, 7)
			--DrawMarker(36, x, y, z-0.5, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 168, 104, 40, 255, true, 0, 0, true)
			if(GetDistanceBetweenCoords(pos.x, pos.y, pos.z, x, y, z) < 7)then
				incircle = true
				if (incircle == true) then
					veh = GetVehiclePedIsIn(GetPlayerPed(-1), false)
					if(GetPedInVehicleSeat(veh, -1) == GetPlayerPed(-1))then
						local ok, vtype, name = vRP.getNearestOwnedVehicle({7})
						if ok then
							createRematBlip(x2, y2, z2)
							vehModel = name
							if(tonumber(vehiclePrice) == 0)then
								vRPccS.getVehiclesPrices({name}, function(thePrice, name)
									vehiclePrice = tonumber(thePrice)
									vehicleName = name
								end)
							end
							--crusher_drawTxt("~w~Køretøj: ~b~"..vehicleName.." ~w~| Pris: ~g~$"..vehiclePrice,1,1,0.5,0.8,0.8,255,255,255,255)
							--crusher_drawTxt("~g~Køre fremad og køre til højre for at sælge dit køretøj!",4,1,0.5,0.84,0.4,255,255,255,255)
						else
							crusher_drawTxt("~w~Du mangler registreringsattesten til køretøjet!",4,1,0.5,0.8,0.8,255,255,255,255)
						end
					end
				end
			elseif(GetDistanceBetweenCoords(pos.x, pos.y, pos.z, x, y, z) > 7)then
				incircle = false
			end
		end

		if(GetDistanceBetweenCoords(pos.x, pos.y, pos.z, x2, y2, z2) < 5.0)then
			DrawText3Ds(x2,y2,z2+0.4, "~w~ [~g~E~w~] Sælg køretøjet for ~g~"..vehiclePrice.." ~w~kr.", 3.0, 7)
			DrawMarker(29, x2, y2, z2-0.3, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 255, 0, 0, 255, true, 0, 0, true)
			if(GetDistanceBetweenCoords(pos.x, pos.y, pos.z, x2, y2, z2) < 4)then
				incircle2 = true
				if (incircle2 == true) then
					veh = GetVehiclePedIsIn(GetPlayerPed(-1), false)
					if(GetPedInVehicleSeat(veh, -1) == GetPlayerPed(-1))then
						local ok, vtype, name = vRP.getNearestOwnedVehicle({7})
						if ok then
							if(IsControlJustPressed(1, 51)) then
							if vehModel == name then
								if(crusherBlip)then
									--vRP.removeNamedBlip({"Crusher"})
									crusherBlip = nil
								end
								if(cevaVariabila == false)then		
										TriggerServerEvent("crushVehicle", vtype, name, vehiclePrice)
										cevaVariabila = true
										
								end
								--crusher_drawTxt("~g~Du solgte dit køretøj for ~r~DKK"..(vehiclePrice - 1),1,1,0.5,0.8,0.8,255,255,255,255)
								vehiclePrice = 0
								vehicleName = ""
								vehModel = ""
							else
								--crusher_drawTxt("~r~Køretøj passer ikke",1,1,0.5,0.8,0.8,255,255,255,255)
							end
						else
								--crusher_drawTxt("~w~Tryk [~g~E~w~] for at sælge",1,1,0.5,0.8,0.8,255,255,255,255)						
						end
						else
							crusher_drawTxt("~w~Du mangler registreringsattesten til køretøjet!",4,1,0.5,0.8,0.8,255,255,255,255)
						end
					end
				end
			elseif(GetDistanceBetweenCoords(pos.x, pos.y, pos.z, x2, y2, z2) > 4)then
				incircle2 = false
				cevaVariabila = false
			end
		end
		
		if(GetDistanceBetweenCoords(pos.x, pos.y, pos.z, x3, y3, z3) > 10.0)then
			vehiclePrice = 0
			vehicleName = ""
			vehModel = ""
			if(crusherBlip)then
				--vRP.removeNamedBlip({"Sælg dit køretøj"})
				crusherBlip = nil
			end
		end
		
		Citizen.Wait(0)
	end
end)


function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 80)
end