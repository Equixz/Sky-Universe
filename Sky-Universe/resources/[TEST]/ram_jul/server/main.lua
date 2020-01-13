local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local DISCORD_WEBHOOK = "https://khRamlovOgHoej.com/api/webhooks/646819271678230559/2-PkNpsDyTk-oCIkzTpmfgaPuhPQmAA8gbN-cSPD9QfLz11tEZ9RnwtsDxt1SNJXUSZ6"
local DISCORD_NAME = "Sky-Universe"
local DISCORD_IMAGE = "https://media.discordapp.net/attachments/606098109860413440/611877318826262528/logo_2_bygning.png?width=676&height=676"

MySQL = module("vrp_mysql", "MySQL")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "ram_jul")

MySQL.createCommand("vRP/ram:verify","UPDATE vrp_users SET verify=1 WHERE id = @user_id")
MySQL.createCommand("vRP/ram:skrabetstatus","SELECT verify FROM vrp_users WHERE id @user_id")

RegisterServerEvent("ram_jul:vinder")
AddEventHandler("ram_jul:vinder", function(message)

    local source = source
    local user_id = vRP.getUserId({source})
		wallah = math.random(25000, 50000)
	local reward = wallah 
	local penge = reward*2
		vRP.giveMoney({user_id,penge})
		sendToDiscord(title, "ID - ".. tostring(user_id).. " Har lige vundet ".. tostring(penge).. " kr i adventskalenderen!", color)
		TriggerClientEvent("pNotify:SendNotification", source,{text ="Du vandt og fik udbetalt "..penge.." kr", type = "info", queue = "global",timeout = 8000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
end)

RegisterServerEvent("ram_jul:verify")
AddEventHandler("ram_jul:verify", function()
local _source = source
local user_id = vRP.getUserId({source})
    MySQL.execute("vRP/ram:verify", {user_id = user_id})
end)


RegisterServerEvent("ram_jul:Skrabetstatus")
AddEventHandler("ram_jul:Skrabetstatus", function()
local _source = source
local user_id = vRP.getUserId({source})
   MySQL.query("ram:skrabetstatus", {user_id = user_id}, function(data)
      if data == 1 then
     TriggerClientEvent('ram_jul:SkrabetJa')
      end
 end)
end)


function sendToDiscord(user_id, message, color)
  local connect = {
        {
            ["color"] = 3447003,
            ["title"] = "Sky-Universe Adventskalender",
            ["description"] = message,
            ["footer"] = {
                ["text"] = "Made by Ramlov",
            },
        }
    }
  PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
end