local thirst = 0
local hunger = 0


Citizen.CreateThread(function()
    while true do

        Citizen.Wait(250)
        local xPlayer = PlayerPedId()
        TriggerServerEvent("vRP_HealthUI:getData")

        SendNUIMessage({
            show = IsPauseMenuActive(),
            health = GetEntityHealth(xPlayer)-100,
            armor = GetPedArmour(xPlayer),
            stamina = 100-GetPlayerSprintStaminaRemaining(PlayerId()),
            hunger = hunger,
            thirst = thirst,
            healthtext = cfg.healthtext,
            armortext = cfg.armortext,
        })
    end
end)

RegisterNetEvent("vRP_HealthUI:returnBasics")
AddEventHandler("vRP_HealthUI:returnBasics", function (rHunger, rThirst)
    hunger = rHunger
    thirst = rThirst
end)

RegisterNetEvent("kaz_stoffer:stamina")
AddEventHandler("kaz_stoffer:stamina", function ()
tid = 1*60
	while tid > 0 do
	Citizen.Wait(1000)
    RestorePlayerStamina(PlayerId(), 100.0)
	test = 100-GetPlayerSprintStaminaRemaining(PlayerId())
	tid = tid-1
	end	
end)


