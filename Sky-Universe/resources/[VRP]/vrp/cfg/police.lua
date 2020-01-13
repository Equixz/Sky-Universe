local cfg = {}

-- PCs positions
cfg.pcs = {
	{1853.21,3689.51,34.2671},
	{441.00912475586,-978.44665527344,30.689594268799},
	{-449.14297485352,6012.7451171875,31.71639251709},
	{459.73251342773,-989.140625,24.914873123169}
}

-- vehicle tracking configuration
cfg.trackveh = {
	min_time = 300, -- min time in seconds
	max_time = 600, -- max time in seconds
	service = "police"  -- service to alert when the tracking is successful
}

-- wanted display
cfg.wanted = {
	blipid = 458,
	blipcolor = 38,
	service = "police",
	"fbi",
	"sheriff",
	"trafficguard"
}

-- illegal items (seize)
cfg.seizable_items = {
	"cocaine",
	"lsd",
	"acid",
	"cocaineplant",
	"weed",
	"hash",
	"meth",
	"amf",
	"wbody|WEAPON_VINTAGEPISTOL",
	"wammo|WEAPON_VINTAGEPISTOL",
	"wbody|WEAPON_PISTOL",
	"wammo|WEAPON_PISTOL",
	"wbody|WEAPON_PISTOL_MK2",
	"wammo|WEAPON_PISTOL_MK2",
	"wbody|WEAPON_MARKSMANPISTOL",
	"wammo|WEAPON_MARKSMANPISTOL",
	"wbody|WEAPON_SNSPISTOL",
	"wammo|WEAPON_SNSPISTOL",
	"wbody|WEAPON_REVOLVER",
	"wammo|WEAPON_REVOLVER",
	"wbody|WEAPON_HEAVYPISTOL",
	"wammo|WEAPON_HEAVYPISTOL",
	"wbody|WEAPON_MACHINEPISTOL",
	"wammo|WEAPON_MACHINEPISTOL",
	"wbody|WEAPON_PISTOL50",
	"wammo|WEAPON_PISTOL50",
	"wbody|WEAPON_MOLOTOV",
	"wammo|WEAPON_MOLOTOV",
	"wbody|WEAPON_PUMPSHOTGUN",
	"wammo|WEAPON_PUMPSHOTGUN",
	"wbody|WEAPON_ASSAULTSHOTGUN",
	"wammo|WEAPON_ASSAULTSHOTGUN",
	"wbody|WEAPON_SAWNOFFSHOTGUN",
	"wammo|WEAPON_SAWNOFFSHOTGUN",
	"wbody|WEAPON_ASSAULTRIFLE",
	"wammo|WEAPON_ASSAULTRIFLE",
	"wbody|WEAPON_CARBINERIFLE",
	"wammo|WEAPON_CARBINERIFLE",
	"wbody|WEAPON_HEAVYSNIPER",
	"wammo|WEAPON_HEAVYSNIPER",
	"wbody|WEAPON_SNIPERRIFLE",
	"wammo|WEAPON_SNIPERRIFLE",
	"wbody|WEAPON_GUSENBERG",
	"wammo|WEAPON_GUSENBERG",
	"wbody|WEAPON_STUNGUN",
	"wbody|WEAPON_COMBATPISTOL",
	"wammo|WEAPON_COMBATPISTOL",
	"wbody|WEAPON_COMBATPDW",
	"wammo|WEAPON_COMBATPDW",
	"wbody|WEAPON_CARBINERIFLE_MK2",
	"wammo|WEAPON_CARBINERIFLE_MK2",
	"wbody|WEAPON_HEAVYSNIPER_MK2",
	"wammo|WEAPON_HEAVYSNIPER_MK2",
	"wbody|WEAPON_SMG",
	"wammo|WEAPON_SMG",
	"wbody|WEAPON_MINISMG",
	"wammo|WEAPON_MINISMG",
	"wbody|WEAPON_MICROSMG",
	"wammo|WEAPON_MICROSMG",
	"wbody|WEAPON_BATTLEAXE",
	"wbody|WEAPON_BALL",
	"wbody|WEAPON_GOLFCLUB",
	"wbody|WEAPON_KNIFE",
	"wbody|WEAPON_BAT",
	"wbody|WEAPON_POOLCUE",
	"wbody|WEAPON_MACHETE",
	"wbody|WEAPON_CROWBAR",
	"wbody|WEAPON_SWITCHBLADE",
	"wbody|WEAPON_KNUCKLE",
	"wbody|WEAPON_WRENCH",
	"wbody|WEAPON_HAMMER",
	"mitsubishi",
	"atropin",
	"mdma",
	"bluepill",
	"benzoylperoxid",
	"paracetamol",
	"stolenemp",
	"emp",
	"nrfjerner",
	"PistolMK2",
	"DesertEagle",
	"Smith&Wesson",
	"kokainkasse",
	"kokainpose",
	"kokain",
	"skunk",
	"blade",
	"kokainblade",
	"skunkblad",
	"falsknummerplade",
	"joint",
	"skunkklump",
	"klump10",
	"skunk100",
	"kemikalier",
	"kemikalier2",
}

-- jails {x,y,z,radius}
cfg.jails = {
	{1690.7608642578,2594.93359375,45.564849853516,155}
}

cfg.announces = {
	["admin"] = {
		image = "https://cdn.khRamlovOgHoej.com/attachments/508720804612014090/537390088695316490/reklame.png",
		price = 0,
		description = "Adminstrator",
		permission = "admin.announce"
	},
	["Politi"] = {
		image = "https://cdn.khRamlovOgHoej.com/attachments/508720804612014090/537390088695316490/reklame.png",
		price = 0,
		description = "Politi - Eftersøgelser mm.",
		permission = "police.announce"
	},
	["EMS-Job"] = {
		image = "https://cdn.khRamlovOgHoej.com/attachments/508720804612014090/537390088695316490/reklame.png",
		price = 0,
		description = "Ambulance - Travlhed mm.",
		permission = "emergency.announce"
	},
	["Taxi"] = {
		image = "https://cdn.khRamlovOgHoej.com/attachments/508720804612014090/537390088695316490/reklame.png",
		price = 0,
		description = "Taxi - Meld dig on duty!",
		permission = "taxi.announce"
	},
	["Mekaniker-Job"] = {
		image = "https://cdn.khRamlovOgHoej.com/attachments/508720804612014090/537390088695316490/reklame.png",
		price = 0,
		description = "Mekaniker-Job - Kan vi fikse det? Ja vi kan!",
		permission = "mech.announce"
	},
	["Psykolog"] = {
		image = "https://cdn.khRamlovOgHoej.com/attachments/508720804612014090/537390088695316490/reklame.png",
		price = 0,
		description = "Psykolog - Mentalt ustabil, eller bare brug for en snak?",
		permission = "psych.announce"
	},
	["Reklame"] = {
		image = "https://cdn.khRamlovOgHoej.com/attachments/585086641165565963/607670556669640796/reklame.png",
		description = "Kommercielt - Arbejde, salg, køb",
		price = 5000
	},
	["Advokat"] = {
		image = "https://cdn.khRamlovOgHoej.com/attachments/508720804612014090/537390088695316490/reklame.png",
		description = "Advokat - Problemer med loven? Intet problem!",
		price = 0,
		permission = "lawyer.announce"
	},
	["Socialt"] = {
		image = "https://cdn.khRamlovOgHoej.com/attachments/508720804612014090/537390088695316490/reklame.png",
		description = "Til sociale arrangementer",
		price = 5000
	}
}

-- fines
-- map of name -> money
cfg.fines = {
["Kørsel over for rødt + 1 Klip i kørekortet"] = 5000,
["Kørsel mod kørselsretningen"] = 5000,
["Ulovlig kørsel i nødsporet"] = 7500,
["Forkert placering i lyskrydset før svingning"] = 5000,
["Færdselstavle eller pile ikke respekteret"] = 5000,
["Tonede ruder foran +60%"] = 10000,
["Bruge hornet uden en grund til det/eftermonteret ikke en tonet horn"] = 6000,
["Færdselstavler ikke overholdt"] = 7000,
["Kører ind i et andet køretøj"] = 15000,
["Hjulspind / Unødvendig Larm"] = 5000,
["Ulovlig parkering på kantsten Osv."] = 5000,
["Hasarderet kørsel / Vanvidskørsel Frakendelse af kørekort"] = 20000,
["Alkoholpåvirkning Promille over 0,5 + Frakendelse af kørekort "] = 15000,
["Overtrædelse af fuldt optrukken linje / spærrelinje + 1 Klip i kørekortet"] = 5000,
["Overtrædelse af fuldt stop linje + 1 Klip i kørekortet "] = 5000,
["Overhaling indenom 2 Klip i kørekortet "] = 8000,
["Undladt at have kørekort hos sig under kørsel"] = 5000,
["Kørsel uden at eje et gyldigt kørekort"] = 15000,
["Manglende lys i lygterne."] = 1000,
["Gadeuorden"] = 5000,
["Nægte at oplyse navn / ID"] = 5000,
["Ulovlig indtrængen af privat eller ulovlig område"] = 15000,
["Chikane"] = 10000,
["Stalking"] = 15000,
["Maskering i offentligheden"] = 10000,
["Trusler"] =  15000,
["Trusler på livet + (20 min)"] = 30000,
["Trusler om vold udøvelse + (10 min)"] = 20000,
["True vidne + (20 min)"] = 20000,
["Bestikkelse + (10 min)"] = 1000,
["Vold + (10 min)"] = 20000,
["Grov vold + (20 min)"] = 30000,
["Mord + (60 min)"] = 50000,
["Forsøg på manddrab + (30 min)"] = 30000,
["Uagtsomt manddrab + (15 min)"] = 25000,
["Flugt fra ulykke + (25 min)"] = 23000,
["Identitetstyveri +  (15 min"] = 20000,
["Forsømmelig omgang med lig + (50 min)"] = 50000,
["Flugt fra politiet + (25 min)"] = 25000,
["Vold mod tjenestemand i funktion + (20 min)"] = 30000,
["Grov vold mod tjenestemand i funktion + (30 min)"] = 50000,
["Trusler mod tjenestemand i funktion + (10 min)"] = 15000,
["Ikke følge politiets anvisninger"] = 10000,
["Bestikkelse af tjenestemand + (20 min)"] = 25000,
["Overtrædelse af politiets afspærringer"] = 10000,
["Forsøg på kidnapning + (15 min)"] = 20000,
["Kidnapning + (30 min)"] = 40000,
["Terror + (60 min)"] = 50000,
["Brugstyveri + (15 min)"] = 25000,
["Bankrøveri + (60 min)"] = 150000,
["Indbrud + (30 min)"] = 35000,
["Hærværk af mindre grad + (Erstatning)"] = 20000,
["Hærværk af særlig høj grad + (erstatning og 3 min)"] = 30000,
["Butiksrøveri + (20 min)"] = 50000,
["Ikke og møde op til retssag + (10 min)"] = 25000,
["Lyve under ed + (7 min)"] = 10000,
["Forstyrrelse af retten"] = 12500,
["Ulovlig hacking af personlige informationer + (8 min)"] = 20000,
["Stoffer + (30Min)."] = 35000,
["Besiddelse af ulovlige våben 1. Grad"] = 15000,
["Besiddelse af ulovlige våben 2. Grad + (12 Min)"] = 30000,
["Besiddelse af ulovlige våben 3. Grad + (20 Min)"] = 50000,
["Unødig affyring af skydevåben med licens.+ (5 Min)"] = 15000,
["Våben Handel [Ulovlig]+ (35  min)"] = 25000,

}

return cfg