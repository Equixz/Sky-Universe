--__  __           _        ____          _____                 _            
--|  \/  |         | |      |  _ \        |  __ \               | |           
--| \  / | __ _  __| | ___  | |_) |_   _  | |__) |__ _ _ __ ___ | | _____   __
--| |\/| |/ _` |/ _` |/ _ \ |  _ <| | | | |  _  // _` | '_ ` _ \| |/ _ \ \ / /
--| |  | | (_| | (_| |  __/ | |_) | |_| | | | \ \ (_| | | | | | | | (_) \ V / 
--|_|  |_|\__,_|\__,_|\___| |____/ \__, | |_|  \_\__,_|_| |_| |_|_|\___/ \_/  
--                                  __/ |                                     
--                                 |___/                                     

RegisterNetEvent("revive")
AddEventHandler("revive", function()
	local plyCoords = GetEntityCoords(GetPlayerPed(-1), true)
	local health = GetEntityHealth(GetPlayerPed(-1))
	local healthP = math.ceil(((health-120)/80) * 100)
	if healthP <= 99 then
	ResurrectPed(GetPlayerPed(-1))
	SetEntityHealth(GetPlayerPed(-1), 200)
	ClearPedTasksImmediately(GetPlayerPed(-1))
	TriggerEvent("pNotify:SendNotification",{
                    text = "Du genoplivede dig selv",
                    type = "info",
                    timeout = (3000),
                    layout = "bottomCenter",
                    queue = "global",
                    killer=true,
                    animation = {
                    open = "gta_effects_fade_in", 
                    close = "gta_effects_fade_out",
                    }
                    })
	elseif healthP == 100 then
	TriggerEvent("pNotify:SendNotification",{
                    text = "Du har allerede fuldt hp",
                    type = "info",
                    timeout = (3000),
                    layout = "bottomCenter",
                    queue = "global",
                    killer=true,
                    animation = {
                    open = "gta_effects_fade_in", 
                    close = "gta_effects_fade_out",
                    }
                    })
	end
end)