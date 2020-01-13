Count = 0
time = 600

Citizen.CreateThread(function()
	while true do
		Wait(1000)
		playerPed = GetPlayerPed(-1)
		if playerPed then
			currentPos = GetEntityCoords(playerPed, true)
			if currentPos == prevPos and Count >= 70 then
				time = time - 1
					if time > 0 then
						if time == 120 then
						TriggerServerEvent("su_afknoti")
						end
					else
						TriggerServerEvent("su_afknotiKICK")				
					end
			else
				time = 600
			end
			prevPos = currentPos
		end
	end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000)     
        Clients()
    end
end)

function Clients()
    local Count = 0
    for _,v in ipairs(GetActivePlayers()) do
        Count = Count + 1
    end
end