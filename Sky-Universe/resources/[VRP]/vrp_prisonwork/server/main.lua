local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_prisonwork")

RegisterServerEvent('vRP:Pay')
AddEventHandler('vRP:Pay', function()

    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})

	vRP.giveMoney({user_id,Config.Payment})
	TriggerClientEvent("pNotify:SendNotification", player,{text = "Du modtog: <b>" ..Config.Payment.. " DKK.</b> ", type = "success", queue = "global", timeout = 8000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}, sounds = { sources = {"prison.ogg"}, volume = 0.6, conditions = {"docVisible"}}}) 

end)

function sendNotification(source, message, messageType, messageTimeout)
    TriggerClientEvent("pNotify:SendNotification", player,{
        text = message,
        type = messageType,
        queue = "mosho",
        timeout = messageTimeout,
        layout = "bottomCenter"
    })
end