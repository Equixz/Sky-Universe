local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
AddEventHandler( 'chatMessage', function( source, n, msg )

    msg = string.lower( msg )
    
    if ( msg == "/sletbiler" or msg == "/fjernbiler" ) then 
    
        CancelEvent() 
        
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})
        if vRP.hasPermission({user_id,"ramlov.admin"}) then
        TriggerClientEvent( 'ram:sletallebiler', -1)
		 	local dname = "[ID - ".. tostring(user_id).. "] Ramlov-Anti-Abuse"
			local dmessage = "**SLET BILER** \n```\nID: ".. tostring(user_id).. "\nCommand: /sletbiler\n```"
			PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/606747137262485504/0hpr8iogTPhe2I2RQ0foPuBfAvHjENMG1TesN-ERnm38E1pwQGUq1QySMLCoegvS75id', function(err, text, headers) end, 'POST', json.encode({username = dname, content = dmessage}), { ['Content-Type'] = 'application/json' })
        end
    end
end )