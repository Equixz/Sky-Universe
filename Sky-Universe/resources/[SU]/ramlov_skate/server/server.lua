local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
AddEventHandler( 'chatMessage', function( source, n, msg )

    msg = string.lower( msg )
    
    if ( msg == "/longboard" or msg == "/skateboard" ) then 
    
        CancelEvent() 
        
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})
        if vRP.hasPermission({user_id,"ramlov.skate"}) then
        TriggerClientEvent( 'longboard', source )
       end
    end
end )