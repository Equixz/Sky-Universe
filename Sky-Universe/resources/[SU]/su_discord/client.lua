-- Discord Rich Presence script by Ramlov

local DiscordAppId = tonumber(GetConvar("RichAppId", "597239405593362443"))
local DiscordAppAsset = GetConvar("RichAssetId", "logo")


local UpdateTime = 1500 -- Set update time (delay between each update) here (ms).

Citizen.CreateThread(function()
	while true do
		local playerName = GetPlayerName(PlayerId())
		local onlinePlayers = 0
		
		for i = 0, 255 do
			if NetworkIsPlayerActive(i) then
				onlinePlayers = onlinePlayers+1
			end
		end
	
		SetDiscordAppId(DiscordAppId)
		
		SetDiscordRichPresenceAsset(DiscordAppAsset)
		
		SetDiscordRichPresenceAssetText(playerName)
		
		SetDiscordRichPresenceAssetSmall(DiscordAppAssetSmall)
		
		SetDiscordRichPresenceAssetSmallText("FiveM")

		SetRichPresence("Online: "..onlinePlayers.."/80")
		
		Citizen.Wait(UpdateTime)
	end
end)