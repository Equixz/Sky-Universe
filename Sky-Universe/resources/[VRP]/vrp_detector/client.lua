vRPdt = {}
Tunnel.bindInterface("vrp_detector",vRPdt)
Proxy.addInterface("vrp_detector",vRPdt)
DTserver = Tunnel.getInterface("vrp_detector","vrp_detector")
vRPserver = Tunnel.getInterface("vRP","vrp_detector")
vRP = Proxy.getInterface("vRP")

detector = {
	{436.12911987305,-981.74456787109,30.698616027832},
	{1853.9157714844,3685.1645507813,34.267040252686},
	{150.28442382813,-1038.9141845703,29.377796173096},
	{-2965.7385253906,482.98623657227,15.697046279907},
	{-109.62287902832,6463.9565429688,31.626707077026},
	{-1213.9013671875,-328.85900878906,37.790740966797},
	{314.78491210938,-277.10101318359,54.17448425293},
	{-350.55902099609,-48.381637573242,49.036476135254},
	{233.11387634277,215.99319458008,106.28667449951},
	{259.75921630859,204.9874420166,106.28321838379},
	{1175.0679931641,2704.3557128906,38.097732543945},
	{-630.04296875,-236.71064758301,38.057056427002},
	{300.84616088867,-585.12951660156,43.291885375977},
	{338.90145874023,-592.12756347656,43.281719207764},
}

weapons = {
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_PROXMINE",
	"WEAPON_PISTOL_MK2",
	"WEAPON_RAILGUN",
	"WEAPON_ANIMAL",
	"WEAPON_COUGAR",
	"WEAPON_KNIFE",
	"WEAPON_NIGHTSTICK",
	"WEAPON_HAMMER",
	"WEAPON_BAT",
	"WEAPON_GOLFCLUB",
	"WEAPON_CROWBAR",
	"WEAPON_PISTOL",
	"WEAPON_COMBATPISTOL",
	"WEAPON_APPISTOL",
	"WEAPON_PISTOL50",
	"WEAPON_MICROSMG",
	"WEAPON_SMG",
	"WEAPON_ASSAULTSMG",
	"WEAPON_ASSAULTRIFLE",
	"WEAPON_CARBINERIFLE",
	"WEAPON_ADVANCEDRIFLE",
	"WEAPON_MG",
	"WEAPON_COMBATMG",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_SAWNOFFSHOTGUN",
	"WEAPON_ASSAULTSHOTGUN",
	"WEAPON_BULLPUPSHOTGUN",
	"WEAPON_STUNGUN",
	"WEAPON_SNIPERRIFLE",
	"WEAPON_HEAVYSNIPER",
	"WEAPON_REMOTESNIPER",
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_GRENADELAUNCHER_SMOKE",
	"WEAPON_RPG",
	"WEAPON_STINGER",
	"WEAPON_MINIGUN",
	"WEAPON_GRENADE",
	"WEAPON_STICKYBOMB",
	"WEAPON_SMOKEGRENADE",
	"WEAPON_BZGAS",
	"WEAPON_MOLOTOV",
	"WEAPON_FIREEXTINGUISHER",
	"WEAPON_PETROLCAN",
	"WEAPON_FLARE",
	"WEAPON_SNSPISTOL",
	"WEAPON_BOTTLE",
	"WEAPON_GUSENBERG",
	"WEAPON_SPECIALCARBINE",
	"WEAPON_HEAVYPISTOL",
	"WEAPON_BULLPUPRIFLE",
	"WEAPON_DAGGER",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_FIREWORK",
	"WEAPON_MUSKET",
	"WEAPON_HEAVYSHOTGUN",
	"WEAPON_MARKSMANRIFLE",
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_PROXMINE",
	"WEAPON_FLAREGUN",
	"WEAPON_GARBAGEBAG",
	"WEAPON_HANDCUFFS",
	"WEAPON_COMBATPDW",
	"WEAPON_MARKSMANPISTOL",
	"WEAPON_KNUCKLE",
	"WEAPON_HATCHET",
	"WEAPON_RAILGUN",
	"WEAPON_MACHETE",
	"WEAPON_MACHINEPISTOL",
	"WEAPON_SWITCHBLADE",
	"WEAPON_REVOLVER",
	"WEAPON_DBSHOTGUN",
	"WEAPON_COMPACTRIFLE",
	"WEAPON_AUTOSHOTGUN",
	"WEAPON_BATTLEAXE",
	"WEAPON_COMPACTLAUNCHER",
	"WEAPON_MINISMG",
	"WEAPON_PIPEBOMB",
	"WEAPON_POOLCUE",
	"WEAPON_WRENCH"
}

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(100)
			for i = 1, #detector do
				detectors = detector[i]
				--DrawMarker(27, detectors[1], detectors[2], detectors[3], 0, 0, 0, 0, 0, 0, 5.0, 5.0, 2.0, 0, 157, 0, 0--[[Alpha]], 0, 0, 2, 0, 0, 0, 0)
				if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), detectors[1], detectors[2], detectors[3], true ) < 1.5 then
					TriggerServerEvent('checklige')
				end
			end
	end
end)


RegisterNetEvent("isnotgovernment")
AddEventHandler("isnotgovernment", function()
	checkerlige()
end)

paused = false
function checkerlige()
	local player = GetPlayerPed(-1)
    local playerCoords = GetEntityCoords(player)
	for i=1,#weapons, 1 do
	local weaponHash = GetHashKey(weapons[i])
	  if HasPedGotWeapon(player, weaponHash, false) and not paused then
	  	paused = true
		--exports.pNotify:SendNotification({text = "<b style='color:#ED2939'>Detector:</b><br /><br />Du har udløst en alarm.",type = "error",timeout = (5000),layout = "centerRight",queue = "fart",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},sounds = {sources = {"detector.ogg"},volume = 0.8,conditions = {"docVisible"}}})
	  	TriggerServerEvent('InteractSound_SV:PlayOnSource', 'detector', 0.8)
	  	TriggerServerEvent('dispatch2', playerCoords.x, playerCoords.y, playerCoords.z, "Der blev udløst en alarm, der er set en person med et våben på stedet")
	  	reset()
	  	break
	  end
	end
end

function reset()
	Wait(5000)
	paused = false
end