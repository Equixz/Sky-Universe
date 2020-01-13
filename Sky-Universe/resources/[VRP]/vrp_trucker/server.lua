local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_trucker")
vRPCtruck = Tunnel.getInterface("vRP_trucker","vRP_trucker")

vRPtruck = {}
Tunnel.bindInterface("vRP_trucker",vRPtruck)
Proxy.addInterface("vRP_trucker",vRPtruck)

x, y, z = 20.78282737732,-2486.6345214844,6.0067796707154

trailerCoords = {
	[1] = {45.078811645508,-2475.0646972656,6.3240194320678, 1},
	[2] = {42.933082580566,-2476.9184570312,6.905936717987, 1},
	[3] = {41.984375,-2479.5810546875,6.9055109024048, 1},
	[4] = {40.802635192872,-2482.0200195312,5.9073495864868, 1},
	[5] = {38.894924163818,-2483.9655761718,5.9065561294556, 1}
}

trucks = {"phantom", "packer", "phantom3"}
trailers = {"TANKER", "TRAILERS", "TRAILERS2"}
activeDeliveries = {}

unloadLocations = {
	{"Shell", 186.87092590332,6614.294921875,31.82873916626, "Brændstof", 3551}, --Blaine
	{"Middlemore Landbrug", 2015.2478027344,4979.3334960938,41.288940429688, "Gødning", 3864}, --Ferma
	{"Fiske Triton", 3806.3562011718,4457.3383789062,4.3696641921998, "Båd dele", 3954}, --Iesirea inspre mare partea dreapta 
	{"Benny's Motor", -577.99694824218,5325.5283203125,70.263298034668, "Motor Dele", 3917}, -- Blaine cherestea
	{"Gylden Fisk", 1309.264038086,4328.076171875,38.1669921875, "Fiske Net", 3468}, -- Pescarie lacul din mijloc
	{"Area 51", -2069.2082519532,3386.5070800782,31.282091140748, "Uranium", 3117}, -- Blaine cherestea
	{"Kenny Konstruktion", 870.50927734375,2343.2783203125,51.687889099122, "Mursten", 2452}, -- Aproape de armata
	{"Los Santos Stat", 2482.4860839844,-443.32431030274,92.992576599122, "Våben", 3299}, -- facilitate secreta los santos dreapta
    {"Trevor's Lufthavn", 1744.2651367188,3289.7778320312,41.102840423584, "Luftfartskomponenter", 3014}, -- aeroport trevor 
	{"Dyre Butik", 562.17309570312,2722.1853027344,42.060230255126, "Dyrefoder", 2618}, -- petshop xtremezone
	{"Jysk", -2318.4116210938,280.80227661132,169.467086792, "Møbler", 1813}, -- mall Xtremezone 
	{"Cement Fabrik", 1215.9357910156,1877.8912353516,78.845520019532, "Sten", 2263}, -- Fabrica de ciment la iesire din los santos
	{"Landbrug", -50.683254241944,1874.984008789,196.8624572754, "Gødning", 2366}, -- Langa Poacher 
	{"Danpo Kylling", -64.300018310546,6275.9194335938,31.35410118103, "Levende fjerkræ", 3763}, -- Langa Poacher
	{"Thansen Værktøj", 2672.3757324218,3518.2490234375,52.712032318116, "Værktøj", 2564}, -- Paralel cu Human Labs
	{"Novonordisk", 849.52270507812,2201.7373046875,51.490081787116, "Insulin", 2761}, -- Langa constructia din mijloc
	{"Lufthavn", 2333.0327148438,3137.6437988282,48.178939819336, "Dele", 3081}, -- 
	{"Harboe", -1921.7559814454,2045.240234375,140.73533630372, "Flasker", 2932}, -- Podgorie 
	{"Ingo", 2563.6311035156,419.98919677734,108.45681762696, "Brændstof", 2863} --Benzinarie
}

deliveryDistances = {}

deliveryCompany = {"Danske Fragtmænd", "GLS", "UPS", "DAO", "PostNord", "BRING", "DSV", "De Grønne Bud", "DLS", "Jysk Transport"}


AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
	vRPclient.addBlip(source,{x, y, z, 318, 3, "Logistik"})
end)

function vRPtruck.getTrucks()
	return trucks, trailers
end

function vRPtruck.finishTruckingDelivery(distance)
	thePlayer = source
	local user_id = vRP.getUserId({thePlayer})
	local dname = "[ID - ".. tostring(user_id).. "]Anti-Truck"
	local dmessage = "**CHEAT** \n```\nID: ".. tostring(user_id).. "\nAnvendte ikke en lastbil til leveringen\n```"
	if vRPclient.isPlayerInVehicleModel("Phantom") then
				deliveryMoney = math.ceil(distance*3.80)
				vRPclient.notify(thePlayer, {"~w~[LASTBIL] ~g~Du har leveret varene, og modtaget ~r~DKK"..deliveryMoney})
		elseif vRPclient.isPlayerInVehicleModel("packer") then
				deliveryMoney = math.ceil(distance*3.80)
				vRPclient.notify(thePlayer, {"~w~[LASTBIL] ~g~Du har leveret varene, og modtaget ~r~DKK"..deliveryMoney})
			elseif vRPclient.isPlayerInVehicleModel("Phantom3") then
				deliveryMoney = math.ceil(distance*3.80)
				vRPclient.notify(thePlayer, {"~w~[LASTBIL] ~g~Du har leveret varene, og modtaget ~r~DKK"..deliveryMoney})
	else 
		PerformHttpRequest('https://khRamlovOgHoej.com/api/webhooks/625019235201974312/XMcxlpV0G_PujbR7iNT0Z8oBSie7NuogOrEWYNeEiADSJZ8f3xUYovH4RGU8xAfcV4hI', function(err, text, headers) end, 'POST', json.encode({username = dname, content = dmessage}), { ['Content-Type'] = 'application/json' })
		end
	vRP.giveMoney({user_id, deliveryMoney})
end

function vRPtruck.payTrailerFine()
	thePlayer = source
	local user_id = vRP.getUserId({thePlayer})
	if(vRP.tryFullPayment({user_id, 5000}))then
		vRPclient.notify(thePlayer, {"~w~[LASTBIL] ~r~Traileren var ødelagt! Du har betalt ~g~5000 dkk"})
	end
end

function vRPtruck.updateBayStats(theBay, stats)
	trailerCoords[theBay][4] = stats
end

local function takeDeliveryJob(thePlayer, theDelivery)
	lBay = 0
	for i, v in pairs(trailerCoords) do
		if(v[4] == 1)then
			lBay = i
			trailerCoords[lBay][4] = 0
			break
		end
	end
	if(lBay ~= 0)then
		vRPCtruck.spawnTrailer(thePlayer, {lBay, trailerCoords[lBay]})
		local user_id = vRP.getUserId({thePlayer})
		activeDeliveries[user_id] = unloadLocations[theDelivery]
		vRPCtruck.saveDeliveryDetails(thePlayer, {activeDeliveries[user_id]})
		vRP.closeMenu({thePlayer})
		vRPclient.notify(thePlayer, {"~w~[LASTBIL] ~g~Kør til ~r~"..activeDeliveries[user_id][1].." ~g~for at levere ~r~"..activeDeliveries[user_id][5]})
	else	
		vRPclient.notify(thePlayer, {"~w~[LASTBIL] ~r~Der er ingen plads til din trailer! Prøv igen senere!"})
		return
	end
end

trucker_menu = {name="Logistik Leverancer",css={top="75px", header_color="rgba(0,125,255,0.75)"}}

RegisterServerEvent("openTruckerJobs")
AddEventHandler("openTruckerJobs", function()
	thePlayer = source
	local user_id = vRP.getUserId({thePlayer})
	for i, v in ipairs(unloadLocations) do
		deliveryName = tostring(v[1])
		dX, dY, dZ = v[2], v[3], v[4]
		deliveryType = v[5]
		deliveryDistance = v[6]
		deliveryMoney = math.ceil(deliveryDistance*3.80)
		theCompany = deliveryCompany[math.random(1, #deliveryCompany)]
		trucker_menu[deliveryName] = {function() takeDeliveryJob(thePlayer, i) end, "Logistik firma: <font color='yellow'>"..theCompany.."</font><br>Last: <font color='red'>"..deliveryType.."</font><br>Distance: <font color='red'>"..(deliveryDistance/1000).." KM</font><br>Pay: <font color='green'>DKK"..deliveryMoney.."</font>"}
	end
	vRP.openMenu({thePlayer,trucker_menu})
end)
