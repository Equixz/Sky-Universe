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

police = false
radaractive = false

RegisterNetEvent("kaz_radar:godkendt")
AddEventHandler("kaz_radar:godkendt", function(state) 
	if state == "sandt" then 
	police = true
	else
	police = false
	end
end)

Citizen.CreateThread(function()
    while true do
        TriggerServerEvent('kaz_radar:tjekperm')
		Citizen.Wait(1000)
	end
end)

lock0 = true

local radar =
{
	shown = false,
	freeze = false,
	info = "~y~Nummerplade: ~w~0  ~y~Model: ~w~0  ~y~Hastighed: ~w~0 Km/h",
	info2 = "~y~Nummerplade: ~w~0  ~y~Model: ~w~0  ~y~Hastighed: ~w~0 Km/h",
	minSpeed = 5.0,
	maxSpeed = 75.0,
}

function DrawAdvancedText(x,y ,w,h,sc, text, r,g,b,a,font,jus)
    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(sc, sc)
	N_0x4e096588b13ffeca(jus)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
	DrawText(x - 0.1+w, y - 0.02+h)
end

Citizen.CreateThread( function()	
	while true do
		Wait(0)
		playerPed = GetPlayerPed(-1)
		if police == true then 
			if playerPed then 
					if ( IsDisabledControlPressed( 1, 36 ) and IsDisabledControlJustPressed( 1, 244 ) ) then 	
						if radar.shown == true then 
							radar.shown = false
						else 
							radar.shown = true 
						end
					end			
					if radar.shown == true and IsControlJustPressed(1, 38) then --38 = E
						if radar.freeze then radar.freeze = false else radar.freeze = true end
					end
					if radar.shown then
						if lock80 == true then 
							DrawAdvancedText(0.505, 0.823, 0.020, 0.0028, 0.4, "[ENTER] Lås på: 80", 255, 0, 0, 255, 6, 0)
						elseif lock130 == true then
							DrawAdvancedText(0.506, 0.823, 0.020, 0.0028, 0.4, "[ENTER] Lås på: 130", 255, 0, 0, 255, 6, 0)
						elseif lock0 == true then 
							DrawAdvancedText(0.507, 0.823, 0.020, 0.0028, 0.4, "[ENTER] Deaktiveret", 26, 255, 0, 255, 6, 0)
						end
						if radar.freeze == false then
							local player = GetPlayerPed(-1)
							local coordA = GetOffsetFromEntityInWorldCoords(player, 0.0, 1.0, 1.0)
							local coordB = GetOffsetFromEntityInWorldCoords(player, 0.0, 105.0, 0.0)
							local frontcar = Cast_3dRayPointToPoint(coordA, coordB, 3.0, 10, player, 500)
							local a, b, c, d, e = GetRaycastResult(frontcar)
							DrawAdvancedText(0.700, 0.823, -0.005, 0.0028, 0.4, "[E] Låst op", 26, 255, 0, 255, 6, 0)
								if IsControlJustPressed(1, 215) then 
									if lock0 == true then
									lock0 = false
									lock80 = true
									elseif lock80 == true then 
									lock80 = false
									lock130 = true
									elseif lock130 == true then
									lock130 = false
									lock0 = true
									end
								end	
								if IsEntityAVehicle(e) then	
									local fmodel = GetDisplayNameFromVehicleModel(GetEntityModel(e))
									local fvspeed = GetEntitySpeed(e)*3.6
									local fplate = GetVehicleNumberPlateText(e)
									if lock80 == true then 
										if fvspeed >= 80 then 
											radar.freeze = true 
										end
									elseif lock130 == true then 
										if fvspeed >= 130 then 
											radar.freeze = true
										end
									end		
									radar.info = string.format("~y~Nummerplade: ~w~%s  ~y~Model: ~w~%s  ~y~Hastighed: ~w~%s Km/h", fplate, fmodel, math.ceil(fvspeed))
								end
						else
							DrawAdvancedText(0.700, 0.823, -0.005, 0.0028, 0.4, "[E] Låst", 255, 0, 0, 255, 6, 0)
						end
						DrawRect(0.508, 0.84, 0.236, 0.076, 0, 0, 0, 150)
						DrawAdvancedText(0.603, 0.823, 0.005, 0.0028, 0.4, "Fartmåler", 0, 191, 255, 255, 6, 0)
						DrawAdvancedText(0.6, 0.856, 0.009, 0.0028, 0.4, radar.info, 255, 255, 255, 255, 6, 0)
					end	
			end
		end
	end
end)

