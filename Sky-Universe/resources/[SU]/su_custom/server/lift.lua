
local lifts = {}

AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
    TriggerClientEvent('su-lift:load', source, lifts)
end)

RegisterServerEvent('su-lift:sendstatus')
AddEventHandler('su-lift:sendstatus', function(id, status)
    lifts[id] = status
    TriggerClientEvent('su-lift:status', -1, id,status)
end)