local currentlyTowedVehicle = nil

RegisterNetEvent('kaz:tow')
AddEventHandler('kaz:tow', function()
	
	local playerped = GetPlayerPed(-1)
	local vehicle = GetVehiclePedIsIn(playerped, true)
	
	local towmodel = GetHashKey('MSA_MTLFB2013')
	local isVehicleTow = IsVehicleModel(vehicle, towmodel)
			
	if isVehicleTow then
	
		local coordA = GetEntityCoords(playerped, 1)
		local coordB = GetOffsetFromEntityInWorldCoords(playerped, 2.5, 7.5, 0.0)
		local targetVehicle = getVehicleInDirection(coordA, coordB)
		
		if currentlyTowedVehicle == nil then
			if targetVehicle ~= 0 then
				if not IsPedInAnyVehicle(playerped, true) then
					if vehicle ~= targetVehicle then
						AttachEntityToEntity(targetVehicle, vehicle, 20, 0.9, 2.00, 0.95, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						currentlyTowedVehicle = targetVehicle
						TriggerEvent("chatMessage", "[SU-TOW]", {255, 255, 0}, "Køretøj sat på lad!")
					else
						TriggerEvent("chatMessage", "[SU-TOW]", {255, 255, 0}, "Du kan ikke towe din egen towtruck")
					end
				end
			else
				TriggerEvent("chatMessage", "[SU-TOW]", {255, 255, 0}, "Der er intet køretøj? (Stil dig evt. tættere på)")
			end
		else
			AttachEntityToEntity(currentlyTowedVehicle, vehicle, 20, 0.9, -5.0, -0.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
			DetachEntity(currentlyTowedVehicle, true, true)
			currentlyTowedVehicle = nil
			TriggerEvent("chatMessage", "[SU-TOW]", {255, 255, 0}, "Køretøj taget af lad!")
		end
	end
end)

function getVehicleInDirection(coordFrom, coordTo)
	local rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, GetPlayerPed(-1), 0)
	local a, b, c, d, vehicle = GetRaycastResult(rayHandle)
	return vehicle
end
