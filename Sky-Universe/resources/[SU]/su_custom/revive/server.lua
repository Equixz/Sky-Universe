--__  __           _        ____          _____                 _            
--|  \/  |         | |      |  _ \        |  __ \               | |           
--| \  / | __ _  __| | ___  | |_) |_   _  | |__) |__ _ _ __ ___ | | _____   __
--| |\/| |/ _` |/ _` |/ _ \ |  _ <| | | | |  _  // _` | '_ ` _ \| |/ _ \ \ / /
--| |  | | (_| | (_| |  __/ | |_) | |_| | | | \ \ (_| | | | | | | | (_) \ V / 
--|_|  |_|\__,_|\__,_|\___| |____/ \__, | |_|  \_\__,_|_| |_| |_|_|\___/ \_/  
--                                  __/ |                                     
--                                 |___/                                     

local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","revive")
AddEventHandler( 'chatMessage', function( source, n, msg )

    msg = string.lower( msg )
    
    if ( msg == "/revive" or msg == "/reviveme" ) then 
    
        CancelEvent() 
        
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})
        if vRP.hasPermission({user_id,"ramlov.admin"}) then
        TriggerClientEvent( 'revive', source )
			vRP.setHunger({user_id, 0})
			vRP.setThirst({user_id, 0})
		 	local dname = "[ID - ".. tostring(user_id).. "] Ramlov-Anti-Abuse"
			local dmessage = "**REVIVE** \n```\nID: ".. tostring(user_id).. "\nCommand: /revive\n```"
			PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/606747137262485504/0hpr8iogTPhe2I2RQ0foPuBfAvHjENMG1TesN-ERnm38E1pwQGUq1QySMLCoegvS75id', function(err, text, headers) end, 'POST', json.encode({username = dname, content = dmessage}), { ['Content-Type'] = 'application/json' })
        end
    end
end )