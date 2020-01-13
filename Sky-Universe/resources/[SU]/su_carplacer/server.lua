AddEventHandler("vRP:playerSpawn", function(user_id, source, first_spawn)
	TriggerClientEvent("su_carplacer:place", source)
end)
