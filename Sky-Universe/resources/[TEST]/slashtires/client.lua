local pedArmed = false

Citizen.CreateThread(function()
	while true do
		
		if pedArmed == true then

		local player = PlayerId()
		local plyPed = GetPlayerPed(player)
		local playerRped = GetPlayerPed(-1)
		local vehicle = GetClosestVehicleToPlayer()
		local animDict = "melee@knife@streamed_core_fps"
		local animName = "ground_attack_on_spot"
	
		
			if vehicle ~= 0 then
				local closestTire = GetClosestVehicleTire(vehicle)
				if closestTire ~= nil then
					
					if IsVehicleTyreBurst(vehicle, closestTire.tireIndex, 0) == false then
						DrawText3Ds(closestTire.bonePos.x, closestTire.bonePos.y, closestTire.bonePos.z, tostring("~w~[~r~E~w~] Snit dækket op"))
						if IsControlJustPressed(1, 38) then

							RequestAnimDict(animDict)
							while not HasAnimDictLoaded(animDict) do
								Citizen.Wait(100)
							end

							local animDuration = GetAnimDuration(animDict, animName)
							TaskPlayAnim(plyPed, animDict, animName, 8.0, -8.0, animDuration, 15, 1.0, 0, 0, 0)
							Citizen.Wait((animDuration / 2) * 1000)

							local driverOfVehicle = GetDriverOfVehicle(vehicle)
							local driverServer = GetPlayerServerId(driverOfVehicle)

							if driverServer == 0 then
								SetVehicleTyreBurst(vehicle, closestTire.tireIndex, 0, 100.0)
							else
								TriggerServerEvent("SlashTires:TargetClient", driverServer, closestTire.tireIndex)
							end
							Citizen.Wait((animDuration / 2) * 1000)
							ClearPedTasksImmediately(plyPed)
						end
					end
				end
			end
		end
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	while true do

	Citizen.Wait(250)
		local MeleeWeapons = GetHashKey('WEAPON_KNIFE', 'WEAPON_BOTTLE', 'WEAPON_DAGGER', 'WEAPON_HATCHET', 'WEAPON_MACHETE', 'WEAPON_SWITCHBLADE')
		local player = PlayerId()
		local plyPed = GetPlayerPed(player)
		local plyCurrentWeapon = GetSelectedPedWeapon(plyPed)

		if plyCurrentWeapon == MeleeWeapons then
			pedArmed = true						
		else
			pedArmed = false
		end
	end
end)

RegisterNetEvent("SlashTires:SlashClientTire")
AddEventHandler("SlashTires:SlashClientTire", function(tireIndex)
	
	local player = PlayerId()
	local plyPed = GetPlayerPed(player)
	local vehicle = GetVehiclePedIsIn(plyPed, false)
	SetVehicleTyreBurst(vehicle, tireIndex, 0, 100.0)
end)

function GetDriverOfVehicle(vehicle)
	local dPed = GetPedInVehicleSeat(vehicle, -1)
	for a = 0, 255 do
		if dPed == GetPlayerPed(a) then
			return a
		end
	end
	return -1
end

function CanUseWeapon(allowedWeapons)
	local player = PlayerId()
	local plyPed = GetPlayerPed(player)
	local plyCurrentWeapon = GetSelectedPedWeapon(plyPed)

		if GetSelectedPedWeapon(plyPed) == GetHashKey(allowedWeapons) then
			pedArmed = true
			return true
			
		else
			pedArmed = false

		end
end

function GetClosestVehicleToPlayer()
	local player = PlayerId()
	local plyPed = GetPlayerPed(player)
	local plyPos = GetEntityCoords(plyPed, false)
	local plyOffset = GetOffsetFromEntityInWorldCoords(plyPed, 0.0, 1.0, 0.0)
	local radius = 2.0
	local rayHandle = StartShapeTestCapsule(plyPos.x, plyPos.y, plyPos.z, plyOffset.x, plyOffset.y, plyOffset.z, radius, 10, plyPed, 7)
	local _, _, _, _, vehicle = GetShapeTestResult(rayHandle)
	return vehicle
end

function GetClosestVehicleTire(vehicle)
	local tireBones = {"wheel_lf", "wheel_rf", "wheel_lm1", "wheel_rm1", "wheel_lm2", "wheel_rm2", "wheel_lm3", "wheel_rm3", "wheel_lr", "wheel_rr"}
	local tireIndex = {
		["wheel_lf"] = 0,
		["wheel_rf"] = 1,
		["wheel_lm1"] = 2,
		["wheel_rm1"] = 3,
		["wheel_lm2"] = 45,
		["wheel_rm2"] = 47,
		["wheel_lm3"] = 46,
		["wheel_rm3"] = 48,
		["wheel_lr"] = 4,
		["wheel_rr"] = 5,
	}
	local player = PlayerId()
	local plyPed = GetPlayerPed(player)
	local plyPos = GetEntityCoords(plyPed, false)
	local minDistance = 1.0
	local closestTire = nil
	
	for a = 1, #tireBones do
		local bonePos = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, tireBones[a]))
		local distance = Vdist(plyPos.x, plyPos.y, plyPos.z, bonePos.x, bonePos.y, bonePos.z)

		if closestTire == nil then
			if distance <= minDistance then
				closestTire = {bone = tireBones[a], boneDist = distance, bonePos = bonePos, tireIndex = tireIndex[tireBones[a]]}
			end
		else
			if distance < closestTire.boneDist then
				closestTire = {bone = tireBones[a], boneDist = distance, bonePos = bonePos, tireIndex = tireIndex[tireBones[a]]}
			end
		end
	end

	return closestTire
end

function Notify(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, false)
end


function ShowInfo(text, state)
    SetTextComponentFormat("STRING")
    AddTextComponentString(text)DisplayHelpTextFromStringLabel(0, state, 0, -1)
end

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 20, 20, 20, 100)
end

function DrawAdvancedText(x,y ,w,h,sc, text, r,g,b,a,font,jus)
    SetTextFont(4)
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