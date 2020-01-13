local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_chatroles")

RegisterServerEvent('chat:init')
RegisterServerEvent('chat:addTemplate')
RegisterServerEvent('chat:addMessage')
RegisterServerEvent('chat:addSuggestion')
RegisterServerEvent('chat:removeSuggestion')
RegisterServerEvent('_chat:messageEntered')
RegisterServerEvent('chat:clear')
RegisterServerEvent('__cfx_internal:commandFallback')

AddEventHandler('_chat:messageEntered', function(author, color, message)
    if not message or not author then
        return
    end
	
	message = Emojit(message)
    TriggerEvent('chatMessage', source, author, message)

	
    if not WasEventCanceled() then
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})
		TriggerEvent("vrp-chat:chat_message",source,author,message)
    end
	
	CancelEvent()
    print(author .. ': ' .. message)
end)

AddEventHandler('__cfx_internal:commandFallback', function(command)
    if not command then
        return
    end
	
    local name = GetPlayerName(source)
	
	command = Emojit(command)
    TriggerEvent('chatMessage', source, name, '/' .. command)

    if not WasEventCanceled() then
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})
		if vRP.hasPermission({user_id,"god.chattitle"}) then
            TriggerClientEvent('chatMessage', source, "^5*G* ^0| ^5" .. name .. "^0: " .. '/' .. command)
        elseif vRP.hasPermission({user_id,"nighthawk.chattitle"}) then
            TriggerClientEvent('chatMessage', source, "^1EJER ^0|^1" .. name .. "^0: " .. '/' .. command)
        elseif vRP.hasPermission({user_id,"superadmin.chattitle"}) then
            TriggerClientEvent('chatMessage', source, "^1LEDELSE ^0| ^1" .. name .. "^0: " .. '/' .. command)
        elseif vRP.hasPermission({user_id,"mod.chattitle"}) then    
            TriggerClientEvent('chatMessage', source, "^3HJÆLPER ^0| ^3" .. name .. "^0: " .. '/' .. command)
        else
			TriggerClientEvent('chatMessage', source, name, { 255, 255, 255 }, '/' .. command) 
        end
    end
	
	CancelEvent()
end)

function Emojit(text)
    for i = 1, #emoji do
      for k = 1, #emoji[i][1] do
        text = string.gsub(text, emoji[i][1][k], emoji[i][2])
      end
    end
    return text
end

-- player join messages
AddEventHandler('playerConnecting', function()
     --print(GetPlayerName(source) .. '^0 forbinder til serveren')
end)

AddEventHandler('playerDropped', function(reason)
    --print(GetPlayerName(source) ..'^0 forlod serveren (' .. reason .. ')')
end)

RegisterCommand('say', function(source, args, rawCommand)
    TriggerClientEvent('chatMessage', -1, (source == 0) and 'Konsol' or GetPlayerName(source), { 255, 255, 255 }, rawCommand:sub(5))
end)

AddEventHandler('chatMessage', function(source, name, message)
    local victim = source
    local user_id = vRP.getUserId({victim})
	if message == nil or message == '' then return FALSE end
	PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/606749305977569302/BaVjhniONm9PBx7gDiBruqercfp5co2K7A2ceGs9u7r6Delp1b49zY2am4fYR_cejLPY', function(err, text, headers) end, 'POST', json.encode({username = "Server " .. GetConvar("servernumber","0") .. " - " ..user_id.. " " .. name, content = message}), { ['Content-Type'] = 'application/json' })
end)