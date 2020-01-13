--__  __           _        ____          _____                 _            
--|  \/  |         | |      |  _ \        |  __ \               | |           
--| \  / | __ _  __| | ___  | |_) |_   _  | |__) |__ _ _ __ ___ | | _____   __
--| |\/| |/ _` |/ _` |/ _ \ |  _ <| | | | |  _  // _` | '_ ` _ \| |/ _ \ \ / /
--| |  | | (_| | (_| |  __/ | |_) | |_| | | | \ \ (_| | | | | | | | (_) \ V / 
--|_|  |_|\__,_|\__,_|\___| |____/ \__, | |_|  \_\__,_|_| |_| |_|_|\___/ \_/  
--                                  __/ |                                     
--                                 |___/                                     



dependency "vrp"

client_scripts {
	"lib/Proxy.lua",
    "lib/Tunnel.lua",
    "lib/enum.lua",
    "revive/client.lua",   
    'client/crouch.lua',
	'client/cruise.lua',
	'client/handsup.lua',
	'client/pointing.lua',
	'client/nodriveby.lua',
	'client/noweapondrop.lua',
	'client/novintageshoot.lua',
	'client/nowanted.lua',
	'client/stamina.lua',
	'client/drowning.lua',
	'client/flipoff.lua',
    'client/falldown.lua',
    "client/vinduerul.lua",
    "client/npcplatechanger.lua",
    "client/lift.lua",
}

server_scripts {
    "@vrp/lib/utils.lua",
    "revive/server.lua",
    "server/lift.lua",
    "server/vinduerul.lua"
}