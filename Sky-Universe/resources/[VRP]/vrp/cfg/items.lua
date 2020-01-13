-- define items, see the Inventory API on github

local cfg = {}
-- see the manual to understand how to create parametric items
-- idname = {name or genfunc, description or genfunc, genfunc choices or nil, weight or genfunc}
-- a good practice is to create your own item pack file instead of adding items here
cfg.items = {
	-- farming
	["guldmalm"] = {"Guldmalm", "Bruges til fremstilling af guld.", nil, 1.00}, -- minearbejder
	["guldbar"] = {"Guldbar", "Kan sælges videre for penge.", nil, 0.50}, -- minearbejder
	["alumalm"] = {"AluMalm", "Bruges til fremstilling af Aluminium.", nil, 1.00}, -- minearbejder
	["alubar"] = {"Aluminium Bar", "Kan sælges videre for penge.", nil, 0.50}, -- minearbejder
	["tree"] = {"Træstamme", "Stammerne skal hugges op, før de kan bruges til noget.", nil,25.00}, -- træhugger
	["planks"] = {"Planke", "Skal sælges til de byggepladser som efterspørger dem.", nil,5.00}, -- træhugger
	["kokainblade"] = {"Kokainblad", "Bruges til fremstilling af kokain.", nil, 0.01}, -- civil
	["jointpapir"] = {"JointPapir", "Til at lave joints.", nil, 0.01}, -- civil
	["virus"] = {"HackingTaske", "Indenholder bærbar og chip-kort.", nil , 1},
	["svejser"] = {"Skære Brænder", "Bruges til bankrøverier", nil , 1},
	["pose"] = {"Pose", "Kan sættes over hovedet.", nil , 0.05},
	["falsknummerplade"] = {"Falsk nummerplade", "Passer til udlejningsbiler.", nil , 1.00},
	["forlovelsesring"] = {"Forlovelsesring", "Fordi du elsker personen.", nil , 1.00},
	["vielsesring"] = {"Vielsesring", "Når det er gjort officielt.", nil , 1.00},
	["virksomhed"] = {"Advokatbrev", "Underskrevet. - Til at oprette virksomhed.", nil , 1.00},
	["kemikalier"] = {"Kemikalier (Meth)", "Kemikalier til Meth.", nil , 0.50},
	["kemikalier2"] = {"Kemikalier (Amf)", "Kemikalier til Amf", nil , 0.50},
	["firstlogin"] = {"Dåbsattest", "Bruges til at skifte navn", nil , 0.10},
	["skunk100"] = {"Skunkblade(100)", "Skal tørres.", nil , 0.50},
	["ristet"] = {"Ristet smøg", "Bruges til Joints.", nil , 0.10},
	
	
				
	
	-- diverse
	["oneplus"] = {"OnePlus", "En telefon, som kan bruges til at sende sms'er, tweets osv.", nil, 0.20}, -- telefonbutik
	["iphone"] = {"iPhone", "En telefon, som kan bruges til at sende sms'er, tweets osv.", nil, 0.20}, -- telefonbutik
	["samsung"] = {"Samsung S9", "En telefon, som kan bruges til at sende sms'er, tweets osv.", nil, 0.20}, -- telefonbutik
	["strip"] = {"Strips", "Bruges til at binde en person med.", nil, 0.01}, -- Strips // Normale Butikker
	["eskimo"] = {"Kæmpe Eskimo", "Smeltet.", nil, 0.10}, -- Strips // Normale Butikker
	["fk"] = {"Franske Kartofler", "Desværre blevet for gammel!", nil, 0.25}, -- Strips // Normale Butikker
	["dokument"] = {"læge-Erklæring", "Godkendelse på at køre uden hjelm på motorcykel.", nil, 0.05}, -- Dokument
	
	--våben
	["framepistol"] = {"Pistol Frame del", "En del af en Pistol Frame", nil , 0.10},
	["framerevolver"] = {"Revolver Frame del", "En del af en Revolver Frame", nil , 0.10},
	["frameheavy"] = {"Heavy Frame del", "En del af en Heavy Frame", nil , 0.10},
	["framepistoldone"] = {"Pistol Frame Samlet", "Færdiglavet Pistol Frame", nil , 0.10},
	["framerevolverdone"] = {"Revolver Frame Færdig", "Færdiglavet Revolver Frame.", nil , 0.10},
	["frameheavydone"] = {"Heavy Frame Færdig", "Færdiglavet Heavy Frame", nil , 0.10},
	["barrelpistol"] = {"Barrel Pistol", "Barrel til en Pistol", nil , 0.10},
	["barrelrevolver"] = {"Barrel Revolver", "Barrel til en Revolver", nil , 0.10},
	["barrelheavy"] = {"Barrel Heavy", "Barrel til en Heavy", nil , 0.10},
	["barrelpartpistol"] = {"Barrel Pistol del", "Barrel-del til en Pistol", nil , 0.10},
	["barrelpartrevolver"] = {"Barrel Revolver del", "Barrel-del til en Revolver", nil , 0.10},
	["barrelpartheavy"] = {"Barrel Heavy del", "Barrel-del til en Heavy", nil , 0.10},
	
	
	-- nøgler
	["1"] = {"💳 Politi nøglekort", "Nøgle Nummer 1", nil, 0.01}, -- PD
	["2"] = {"💳 Hospital nøglekort", "Nøgle Nummer 2", nil, 0.01}, -- Hospital
	["3"] = {"💳 Retssal nøglekort", "Nøgle Nummer 3", nil,0.01}, -- nøgle til retssalen
	["4"] = {"🔑 4", "Nøgle Nummer 4", nil, 0.01}, -- Skummel Lejlighed
	["5"] = {"🔑 5", "Nøgle Nummer 5", nil, 0.01}, -- Michaels Hus
	["6"] = {"🔑 6", "Nøgle Nummer 6", nil, 0.01}, -- Denices Hus
	["7"] = {"🔑 7", "Nøgle Nummer 7", nil, 0.01}, -- Franklins hus
	["8"] = {"🔑 8", "Nøgle Nummer 8", nil, 0.01}, -- Rockerborgen
	["9"] = {"🔑 9", "Nøgle Nummer 9", nil, 0.01}, -- Natklub
	["10"] = {"🔑 10", "Nøgle Nummer 10", nil, 0.01}, -- Floyds Lejlighed
	["11"] = {"🔑 11", "Nøgle Nummer 11", nil, 0.01}, -- Trevors Trailer
	["12"] = {"🔑 12", "Nøgle Nummer 12", nil, 0.01}, -- HomeBase Autoservice
	["13"] = {"🔑 13", "Nøgle Nummer 13", nil, 0.01}, -- Homebases Ejendomskontor
	["14"] = {"🔑 14", "Nøgle Nummer 14", nil, 0.01}, -- La Blanca
	["15"] = {"🔑 15", "Nøgle Nummer 15", nil, 0.01}, -- Advokat kontor
	["16"] = {"🔑 16", "Nøgle Nummer 16", nil, 0.01}, -- Bilforhandler
	["17"] = {"🔑 17", "Nøgle Nummer 17", nil, 0.01}, -- BeachHouse
	["18"] = {"🔑 18", "Nøgle Nummer 18", nil, 0.01}, -- Anonymous
	["19"] = {"🔑 19", "Nøgle Nummer 19", nil, 0.01}, -- Skunksalg
	["20"] = {"🔑 20", "Nøgle Nummer 20", nil, 0.01}, -- KokainSalg
	["21"] = {"🔑 21", "Nøgle Nummer 21", nil, 0.01}, -- KazoonsHåndværkerFirma
	["22"] = {"🔑 22", "Nøgle Nummer 22", nil, 0.01}, -- Ha Klubhus
	
	
	-- jobs
	["kuglepen"] = {"Kuglepen", "Bruges til at underskrive dokumenter til dine klienter.", nil,0.01}, -- advokat
	["skraldesæk"] = {"Skraldesæk", "Bruges af skraldemænd til at tømme skraldespande.", nil,0.01}, -- skraldemand
	["bank_money"] = {"Bankpenge", "DKK. Bruges udelukkende til pengetransporter-jobbet.", nil, 0.00}, -- pengetransporter
	["screwdriver"] = {"Skruetrækker", "Bruges til at åbne biler med sammen med et dirkesæt.", nil, 0.01}, -- Mekaniker-Job
	["lockpicking_kit"] = {"Skruetrækker", "Bruges til at åbne biler med sammen med et dirkesæt.", nil, 0.01}, -- Mekaniker-Job
	
  -- Våben
	["wbody|WEAPON_VINTAGEPISTOL"] = {"Fartmåler", "", nil, 1.4},
	["wammo|WEAPON_VINTAGEPISTOL"] = {"Fartmåler ammo", "", nil, 0.01},
	["wbody|WEAPON_PISTOL"] = {"Håndpistol", "", nil, 0.8},
	["wammo|WEAPON_PISTOL"] = {"Håndpistol ammo", "", nil, 0.01},
	["wbody|WEAPON_PISTOL_MK2"] = {"Håndpistol Mk2", "", nil, 1.2},
	["wammo|WEAPON_PISTOL_MK2"] = {"Håndpistol Mk2 ammo", "", nil, 0.01},
	["wbody|WEAPON_MARKSMANPISTOL"] = {"Marksmanpistol", "", nil, 1.8},
	["wammo|WEAPON_MARKSMANPISTOL"] = {"Marksmanpistol ammo", "", nil, 0.01},
	["wbody|WEAPON_SNSPISTOL"] = {"SNS Pistol", "", nil, 1.1},
	["wammo|WEAPON_SNSPISTOL"] = {"SNS Pistol ammo", "", nil, 0.01},
	["wbody|WEAPON_REVOLVER"] = {"Smith&Wesson", "", nil, 1.7},
	["wammo|WEAPON_REVOLVER"] = {"Smith&Wesson ammo", "", nil, 0.01},
	["wbody|WEAPON_HEAVYPISTOL"] = {"Heavypistol", "", nil, 2.0},
	["wammo|WEAPON_HEAVYPISTOL"] = {"Heavypistol ammo", "", nil, 0.01},
	["wbody|WEAPON_MACHINEPISTOL"] = {"Maskinpistol", "", nil, 2.6},
	["wammo|WEAPON_MACHINEPISTOL"] = {"Maskinpistol ammo", "", nil, 0.01},
	["wbody|WEAPON_PISTOL50"] = {".50 Desert Eagle", "", nil, 2.0},
	["wammo|WEAPON_PISTOL50"] = {".50 Desert Eagle ammo", "", nil, 0.01},
	["wbody|WEAPON_MOLOTOV"] = {"Molotov", "", nil, 0.7},
	["wammo|WEAPON_MOLOTOV"] = {"Molotov brændstof", "", nil, 0.01},
	["wbody|WEAPON_PUMPSHOTGUN"] = {"Pumpshotgun", "", nil, 3.01},
	["wammo|WEAPON_PUMPSHOTGUN"] = {"Pumpshotgun shells", "", nil, 0.01},
	["wbody|WEAPON_ASSAULTSHOTGUN"] = {"Kampshotgun", "", nil, 3.01},
	["wammo|WEAPON_ASSAULTSHOTGUN"] = {"Kampshotgun shells", "", nil, 0.01},
	["wbody|WEAPON_SAWNOFFSHOTGUN"] = {"Afskåret shotgun", "", nil, 2.01},
	["wammo|WEAPON_SAWNOFFSHOTGUN"] = {"Afskåret shotgun shells", "", nil, 0.01},
	["wbody|WEAPON_ASSAULTRIFLE"] = {"Kamprifle", "", nil, 3.01},
	["wammo|WEAPON_ASSAULTRIFLE"] = {"Kamprifle ammo", "", nil, 0.01},
	["wbody|WEAPON_CARBINERIFLE"] = {"Karbinriffel", "", nil, 3.2},
	["wammo|WEAPON_CARBINERIFLE"] = {"Karbinriffel ammo", "", nil, 0.01},
	["wbody|WEAPON_HEAVYSNIPER"] = {"Snigskytte riffel", "", nil, 8.0},
	["wammo|WEAPON_HEAVYSNIPER"] = {"Snigskytte riffel ammo", "", nil, 0.01},
	["wbody|WEAPON_SNIPERRIFLE"] = {"Jagtriffel", "", nil, 6.0},
	["wammo|WEAPON_SNIPERRIFLE"] = {"Jagtriffel ammo", "", nil, 0.01},
	["wbody|WEAPON_GUSENBERG"] = {"Tommygun", "", nil, 4.5},
	["wammo|WEAPON_GUSENBERG"] = {"Tommygun drum-mag", "", nil, 0.01},
	["wbody|WEAPON_STUNGUN"] = {"Strømpistol", "", nil, 0.3},
	["wbody|WEAPON_COMBATPISTOL"] = {"Tjenestepistol", "", nil, 0.70},
	["wammo|WEAPON_COMBATPISTOL"] = {"Tjenestepistol ammo", "", nil, 0.01},
	["wbody|WEAPON_COMBATPDW"] = {"Kamp PDW", "", nil, 4.6},
	["wammo|WEAPON_COMBATPDW"] = {"Kamp PDW ammo", "", nil, 0.01},
	["wbody|WEAPON_CARBINERIFLE_MK2"] = {"Karbinriffel Mk2", "", nil, 9.01},
	["wammo|WEAPON_CARBINERIFLE_MK2"] = {"Karbinriffel Mk2 ammo", "", nil, 0.01},
	["wbody|WEAPON_HEAVYSNIPER_MK2"] = {"Barrett M82 .50cal", "", nil, 14.01},
	["wammo|WEAPON_HEAVYSNIPER_MK2"] = {"Barrett M82 .50cal ammo", "", nil, 0.01},
	["wbody|WEAPON_SMG"] = {"SMG", "", nil, 2.4},
	["wammo|WEAPON_SMG"] = {"SMG ammo", "", nil, 0.01},
	["wbody|WEAPON_MINISMG"] = {"MiniSMG", "", nil, 2.8},
	["wammo|WEAPON_MINISMG"] = {"MiniSMG ammo", "", nil, 0.01},
	["wbody|WEAPON_MICROSMG"] = {"MicroSMG", "", nil, 3.3},
	["wammo|WEAPON_MICROSMG"] = {"MicroSMG ammo", "", nil, 0.01},
	["wbody|WEAPON_BATTLEAXE"] = {"Kampøkse", "", nil, 1.3},
	["wbody|WEAPON_BALL"] = {"Baseballbold", "", nil, 0.05},
	["wbody|WEAPON_GOLFCLUB"] = {"Golfkølle", "", nil, 0.25},
	["wbody|WEAPON_KNIFE"] = {"Kniv", "", nil, 0.20},
	["wbody|WEAPON_BAT"] = {"Baseball bat", "", nil, 0.30},
	["wbody|WEAPON_POOLCUE"] = {"Poolkø", "", nil, 0.50},
	["wbody|WEAPON_MACHETE"] = {"Machete", "", nil, 0.40},
	["wbody|WEAPON_CROWBAR"] = {"Brækjern", "", nil, 1.0},
	["wbody|WEAPON_SWITCHBLADE"] = {"Foldekniv", "", nil, 0.80},
	["wbody|WEAPON_KNUCKLE"] = {"Knojern", "", nil, 0.12},
	["wbody|WEAPON_WRENCH"] = {"Svensknøgle", "", nil, 0.23},
	["wbody|WEAPON_HAMMER"] = {"Hammer", "", nil, 0.45},
	["wbody|GADGET_PARACHUTE"] = {"Faldskærm", "Husk at tage den på.", nil, 10.00},
	["wbody|WEAPON_FIREEXTINGUISHER"] = {"Brandslukker", "Pas på ikke at ramme andre!", nil, 10.00},
	["wbody|WEAPON_SNOWBALL"] = {"Snebolds Kastehanske", "Så der krig!", nil, 1.00},
	["wammo|WEAPON_SNOWBALL"] = {"Snebold", "Så der krig!", nil, 0.01},
	["wbody|WEAPON_POOLCUE"] = {"Pool kø", "Tid til et spil Pool?.", nil, 3.00},
	["wbody|WEAPON_FIREWORK"] = {"Fyrværkeri Skyder", "Så skal der festes.", nil, 5.00},
	["wammo|WEAPON_FIREWORK"] = {"Fyrværkeri", "Så skal der festes.", nil, 0.01}

  }

-- load more items function
local function load_item_pack(name)
  local items = module("cfg/item/"..name)
  if items then
    for k,v in pairs(items) do
      cfg.items[k] = v
    end
  else
    print("[vRP] item pack ["..name.."] not found")
  end
end

-- PACKS
load_item_pack("required")
load_item_pack("food")
load_item_pack("drugs")

return cfg
