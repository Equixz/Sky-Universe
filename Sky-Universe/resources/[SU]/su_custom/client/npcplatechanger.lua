--Sygt udviklet pro

Citizen.CreateThread( function()
    while true do
        Citizen.Wait(500)
        for vehicle in EnumerateVehicles() do
            if vehicle ~= 0 then
				local bil = GetEntityModel(vehicle)
				local navn = GetDisplayNameFromVehicleModel(bil)
                local plate = GetVehicleNumberPlateText(vehicle)
                if plate ~= nil then
                    if string.sub(plate, 0, 1) ~= "P" and plate ~= "SKY UNIVERSE" then
						if string.sub(plate, 0, 1) ~= "H" then 
							if plate == " RENTAL " then 
							 -- do nothing
							elseif navn == " P999999" then
							-- do nothing
							else
								Citizen.Wait(20)
								SetVehicleNumberPlateText(vehicle,"P"..randomPlate("DLDLDL"))
							end
						end
                    end
                end
            end
        end
    end
end)

function randomPlate(format) -- (ex: DDDLLL, D => digit, L => letter)
    local abyte = string.byte("A")
    local zbyte = string.byte("0")

    local number = ""
    for i=1,#format do
        local char = string.sub(format, i,i)
        if char == "D" then number = number..string.char(zbyte+math.random(0,9))
        elseif char == "L" then number = number..string.char(abyte+math.random(0,25))
        else number = number..char end
    end

    return number
end