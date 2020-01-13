local text1 = "LUFTANGREB!!!!!!!!!!! Serveren genstartes om 15 minutter [ 6.00 | 18.00 ]"
local text2 = "Serveren genstartes om 10 minutter [ 6.00 | 18.00 ]"
local text3 = "LUFTANGREB!!!!!!!!!!! Serveren genstartes om 5 minutter  [ 6.00 | 18.00 ]"
local text4 = "Serveren lukkes... "

RegisterServerEvent("restart:checkreboot")

AddEventHandler('restart:checkreboot', function()
	date_local1 = os.date('%H:%M:%S', os.time())
	local date_local = date_local1
	if date_local == '05:45:00' then
		
		TriggerClientEvent("pNotify:SendNotification", -1,{
        	text = "<b style = 'color:red'><center><h2> LUFTANGREB!!</h2><br><center><b style = 'color:black'> Søg indendørs øjeblikkeligt - 15 Minutter<br><br></b>",
        	type = "alert",
        	theme = "alarm",
        	queue = "lmao",
        	timeout = 15000,
        	layout = "topCenter"
    	})

		TriggerEvent('InteractSound_SV:PlayOnAll', 'airraid', 0.25)

	elseif date_local == '05:50:00' then
		TriggerClientEvent('chatMessage', -1, "^1[SYSTEM] ", {255, 0, 0}, text2)		
	elseif date_local == '05:55:00' then
		
		TriggerClientEvent("pNotify:SendNotification", -1,{
        	text = "<b style = 'color:red'><center><h2> LUFTANGREB!!</h2><br><center><b style = 'color:black'> Søg indendørs øjeblikkeligt - 5 Minutter<br><br></b>",
        	type = "alert",
        	theme = "alarm",
        	queue = "lmao",
        	timeout = 15000,
        	layout = "topCenter"
    	})

		TriggerEvent('InteractSound_SV:PlayOnAll', 'airraid', 0.25)
		TriggerClientEvent('vSync:updateWeather', -1, CurrentWeather, blackout)
	elseif date_local == '05:59:20' then
		TriggerClientEvent('chatMessage', -1, "^1[SYSTEM] ", {255, 0, 0}, text4)
	elseif date_local == '05:59:30' then
		TriggerClientEvent('chatMessage', -1, "^1[SYSTEM] ", {255, 0, 0}, text4)
	elseif date_local == '05:59:40' then
		TriggerClientEvent('chatMessage', -1, "^1[SYSTEM] ", {255, 0, 0}, text4)
	elseif date_local == '05:59:50' then
		TriggerClientEvent('chatMessage', -1, "^1[SYSTEM] ", {255, 0, 0}, text4)
	elseif date_local == '06:00:00' then
		TriggerClientEvent('chatMessage', -1, "^1[SYSTEM] ", {255, 0, 0}, text4)

	elseif date_local == '17:45:00' then
		
		TriggerClientEvent("pNotify:SendNotification", -1,{
        	text = "<b style = 'color:red'><center><h2> LUFTANGREB!!</h2><br><center><b style = 'color:black'> Søg indendørs øjeblikkeligt - 15 Minutter<br><br></b>",
        	type = "alert",
        	queue = "lmao",
        	theme = "alarm",
        	timeout = 15000,
        	layout = "topCenter"
    	})
		TriggerClientEvent('vSync:updateWeather', -1, CurrentWeather, blackout)
	elseif date_local == '17:50:00' then
		TriggerClientEvent('chatMessage', -1, "^1[SYSTEM] ", {255, 0, 0}, text2)
	elseif date_local == '17:55:00' then
		
		TriggerClientEvent("pNotify:SendNotification", -1,{
        	text = "<b style = 'color:red'><center><h2> LUFTANGREB!!</h2><br><center><b style = 'color:black'> Søg indendørs øjeblikkeligt - 5 Minutter<br><br></b>",
        	type = "alert",
        	queue = "lmao",
        	theme = "alarm",
        	timeout = 15000,
        	layout = "topCenter"
    	})

		TriggerEvent('InteractSound_SV:PlayOnAll', 'airraid', 0.25)
		
	elseif date_local == '17:59:20' then
		TriggerClientEvent('chatMessage', -1, "^1[SYSTEM] ", {255, 0, 0}, text4)
	elseif date_local == '17:59:30' then
		TriggerClientEvent('chatMessage', -1, "^1[SYSTEM] ", {255, 0, 0}, text4)
	elseif date_local == '17:59:40' then
		TriggerClientEvent('chatMessage', -1, "^1[SYSTEM] ", {255, 0, 0}, text4)
	elseif date_local == '17:59:50' then
		TriggerClientEvent('chatMessage', -1, "^1[SYSTEM] ", {255, 0, 0}, text4)
	elseif date_local == '18:00:00' then
		TriggerClientEvent('chatMessage', -1, "^1[SYSTEM] ", {255, 0, 0}, text4)

	end
end)

function restart_server()
	SetTimeout(1000, function()
		TriggerEvent('restart:checkreboot')
		restart_server()
	end)
end
restart_server()
