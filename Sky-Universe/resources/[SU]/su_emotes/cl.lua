--Se flere anims her https://pastebin.com/6mrYTdQv
local emotes = {
    -- Ryg en smøg
   -- ['ryg'] = "ryg",
    -- ['smoke'] = "WORLD_HUMAN_SMOKING",
    -- Giv penge emoten, bruges til f.eks at høste tomater.
    -- ['penge'] = "PROP_HUMAN_PARKING_METER",
    ['høst'] = "PROP_HUMAN_PARKING_METER",
	['genopliv'] = "genopliv",
    -- Læn dig op ad ting
    --['lean'] = "WORLD_HUMAN_LEANING",
    -- Armbøjninger
    --['armbøjninger'] = "WORLD_HUMAN_PUSH_UPS",
    ['læn'] = "WORLD_HUMAN_LEANING",
    -- Sid ned på en stol
    ['sid'] = "PROP_HUMAN_SEAT_BENCH",
    -- Stå med mobil
    -- ['phone'] = "WORLD_HUMAN_STAND_MOBILE_UPRIGHT",
    ['mobil'] = "phone",
	['sidned'] = "WORLD_HUMAN_PICNIC", 
    -- Plant
    ['plant'] = "WORLD_HUMAN_GARDENER_PLANT",
    -- Grill?
    ['bbq'] = "PROP_HUMAN_BBQ",
	['skid'] = "skid",
	['tis'] = "tis",
    -- Bor
    ['bor'] = "WORLD_HUMAN_CONST_DRILL",
    -- stille dans
    ['stilledans'] = "WORLD_HUMAN_STRIP_WATCH_STAND",
    -- Øl
    ['øl'] = "WORLD_HUMAN_PARTYING",
    -- Drik
    ['drik'] = "WORLD_HUMAN_DRINKING",
    -- Fisk
    ['fisk'] = "WORLD_HUMAN_STAND_FISHING",
    -- Flex muskler
    ['flex'] = "WORLD_HUMAN_MUSCLE_FLEX",
    -- Hammer
    ['hammer'] = "WORLD_HUMAN_HAMMERING",
    -- Hep & Klap
    ['hep'] = "WORLD_HUMAN_CHEERING",
    -- Kamera
    --['kamera'] = "WORLD_HUMAN_PAPARAZZI",
    -- kikkert
    ['kikkert'] = "kikkert",
    -- Lig på maven
    ['ligpåmaven'] = "ligpåmaven",
    -- Lig på ryggen
    --['ligpåryggen'] = "WORLD_HUMAN_SUNBATHE_BACK",
    -- Lig på siden
    ['ligpåsiden'] = "WORLD_HUMAN_BUM_SLUMPED",
    -- Lommelygte
    --['lommelygte'] = "WORLD_HUMAN_SECURITY_SHINE_TORCH",
    -- Løb
    ['løb'] = "WORLD_HUMAN_JOG_STANDING",
    -- Vægt
    ['træn'] = "WORLD_HUMAN_MUSCLE_FREE_WEIGHTS",
    -- Mavebøjninger
    --['mavebøjninger'] = "WORLD_HUMAN_SIT_UPS",
    -- Notesblok
    ['notesblok'] = "notesblok",
    -- Optag med mobil
    ['optag'] = "optag",
    -- joint
   -- ['rygjoint'] = "rygjoint",
    -- Sid på knæ
    ['knæ'] = "knæ",
    -- Spil musik
    ['musik'] = "WORLD_HUMAN_MUSICIAN",
    -- Trafik
    -- ['trafik'] = "WORLD_HUMAN_CAR_PARK_ATTENDANT",
    -- kost
    --['kost'] = "WORLD_HUMAN_JANITOR",
    -- Stå som politi
    ['politi'] = "WORLD_HUMAN_COP_IDLES",
    -- Stå som vagt
    ['vagt'] = "WORLD_HUMAN_GUARD_STAND",
    -- Stå som statue
    ['statue'] = "statue",
    -- Tigger
    -- ['tigger'] = "WORLD_HUMAN_BUM_FREEWAY",
    -- Turistkort
    ['kort'] = "WORLD_HUMAN_TOURIST_MAP",
    -- Undersøg
    --  ['undersøg'] = "CODE_HUMAN_POLICE_INVESTIGATE",
    -- Utålmodig
    ['utålmodig'] = "WORLD_HUMAN_STAND_IMPATIENT",
    -- Vask vinduer
    -- ['vask'] = "WORLD_HUMAN_BUM_WASH",
    -- Dyrk yoga
    ['yoga'] = "WORLD_HUMAN_YOGA",
    ['læn2'] = "læn2",
    ['luder'] = "WORLD_HUMAN_PROSTITUTE_LOW_CLASS",
    ['luder2'] = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS",
    ['vaskvindue'] = "WORLD_HUMAN_MAID_CLEAN",
    ['tjekperson'] = "CODE_HUMAN_MEDIC_TEND_TO_DEAD",
    ['træn2'] = "PROP_HUMAN_MUSCLE_CHIN_UPS_PRISON",
    ['damn'] = "damn",
    ['kaffe'] = "kaffe",
    ['kys'] = "kys",
    ['gangsterdans'] = "gangsterdans",
    ['syredans'] = "syredans",
    ['udklipsholder'] = "udklipsholder",
    ['bladblæser'] = "bladblæser",
    ['stok'] = "stok",
	['cam'] = "cam",
	['mic'] = "mic",
	['mic2'] = "mic2",
	['unicorn'] = "unicorn",
    ['batteri'] = "batteri",
    ['opkald'] = "opkald",
    ['mappe'] = "mappe",
    ['krydsarme'] = "krydsarme",
    ['dobbeltfuck'] = "dobbeltfuck",
    ['facepalm'] = "facepalm",
    ['pilnæse'] = "pilnæse",
    ['skør'] = "skør",
    ['dans'] = "dans",
    ['suicide'] = "suicide",
    ['armbøjninger'] = "armbøjninger",
    ['kamera'] = "kamera",
    ['mavebøjninger'] = "mavebøjninger",
    ['rygjoint'] = "rygjoint",
    ['vask'] = "vasktest",
    ['tigger'] = "tigger",
	['box'] = "box",
	['paraply'] = "paraply",
    ['trafik'] = "trafik",
    ['dj'] = "dj",
    ['fingerknep'] = "fingerknep",
    ['skråtop'] = "skråtop",
    ['rage'] = "rage",
    ['knækfingre'] = "knækfingre",
    ['peace'] = "peace",
    ['dollyno'] = "dollyno",
    ['salute'] = "salute",
    ['tys'] = "tys",
    ['thumbsup'] = "thumbsup",
    ['drillepind'] = "drillepind",
    ['wank'] = "wank",
    ['brolove'] = "brolove",
    ['ligpåryggen'] = "ligpåryggen",
    ['frygt'] = "frygt",
    --['repairtest'] = "repairtest",
    ['klørøv'] = "klørøv",
	['kløskridt'] = "kløskridt",
    ['fuckfinger'] = "fuckfinger",
	['taske'] = "taske",
	['taske2'] = "taske2",
	['fred'] = "fred",
	['krydsarme2'] = "krydsarme2",
	['spildød'] = "spildød",
    ['sigt'] = "sigt",
	['sigt2'] = "sigt2",
    ['krydsarme3'] = "krydsarme3",
	['cigar'] = "cigar",
	['cigar2'] = "cigar2",
	['gang'] = "gang",
	['gang2'] = "gang2",
	['holster'] = "holster",
	['strip1'] = "strip1",
	['strip2'] = "strip2",
	['strip3'] = "strip3",
	['strip4'] = "strip4",
	['strip5'] = "strip5",
	['strip6'] = "strip6",
	-- Nye	
	['tommel'] = "tommel",
	['luftguitar'] = "luftguitar",
	['dans2'] = "dans2",
	['dans3'] = "dans3",
	['dans4'] = "dans4",
	['dans5'] = "dans5",
	['dans6'] = "dans6",
	['dans7'] = "dans7",
	['dans8'] = "dans8",
	['dans9'] = "dans9",
	['dans10'] = "dans10",
	['dans11'] = "dans11",
	['dans12'] = "dans12",
	['kylling'] = "kylling",
	['makeitrain'] = "makeitrain",
	-- 18+
	['vehbjgetter'] = "vehbjgetter",
	['vehbjgiver'] = "vehbjgiver",
	['charme'] = "charme",
	['flash'] = "flash",
	['analgetter'] = "analgetter",
	['analgiver'] = "analgiver",
	['bjgetter'] = "bjgetter",
	['bjgiver'] = "bjgiver",
	['vehsexgetter'] = "vehsexgetter",
	['vehsexgiver'] = "vehsexgiver",




}

local dogemotes = {

    -- Hund1
    ['1'] = "WORLD_DOG_SITTING_RETRIEVER",
    -- Hund2
    ['2'] = "WORLD_DOG_BARKING_RETRIEVER",
    -- Hund3
    ['3'] = "WORLD_DOG_REST_ROTTWEILER"
}

local moods = {

    -- Normal
    ['normal'] = "mood_normal_1",
    -- Glad
    ['glad'] = "mood_happy_1",
    -- Sur
    ['sur'] = "mood_drivefast_1",
    -- Sover
    ['sover'] = "mood_sleeping_1",
    -- Bekymret
    ['bekymret'] = "mood_injured_1",
    -- Fuld
    ['fuld'] = "mood_drunk_1",
    -- Ked af det
    ['ked'] = "mood_sulk_1",
    -- Smerte
    ['smerte'] = "pain_5",

}

RegisterNetEvent("emote:start")
RegisterNetEvent("emote:display")
RegisterNetEvent("emote:dog")
RegisterNetEvent("emote:mood")


RegisterNetEvent('hp:mobil') -- Tag mobilen frem
AddEventHandler('hp:mobil', function()
    delProps()
    Wait(1)
    Phone()
end)
RegisterNetEvent('hp:mobil2') -- Tag mobilen op til øret
AddEventHandler('hp:mobil2', function()
    delProps()
    Wait(1)
    PhoneEar()

end)
RegisterNetEvent('hp:mobil3') -- Fjern mobilen fra person - Tilføjet til de andre for at undgå at telefonen gennemborer hånden.
AddEventHandler('hp:mobil3', function()
    delProps()
end)
RegisterNetEvent('hp:repair') -- Repair emoten til Mekaniker-Job-Jobe
AddEventHandler('hp:repair', function()

    Repair()

end)

RegisterNetEvent('hp:repair2') -- Repair emoten til Mekaniker-Job-Jobe
AddEventHandler('hp:repair2', function()

    Repair2()

end)

RegisterNetEvent('hp:unlock') -- Unlock emote
AddEventHandler('hp:unlock', function()

    Unlock()

end)


function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end

function displayEmotes()
    local index = 0
    local display = "^7"

    for name, value in pairs(emotes) do
        index = index + 1
        if index == 1 then
            display = display..name
        else
            display = display..", "..name
        end
    end

    TriggerEvent("chatMessage", "EMOTES", {255,0,0}, "")
    TriggerEvent("chatMessage", "", {255,255,255}, "armbøjninger - brolove - bbq - bladblæser - bor - damn - dans - dj - drillepind - dobbeltfuck - drik - facepalm - fingerknep - frygt - fisk - flex - gangsterdans - hammer - hep - høst - kaffe - kamera - kikkert - knæ - kort - kost - krydsarme - knækfingre - kys - ligpåmaven - ligpåryggen - ligpåsiden - luder - luder2 - læn - læn2 - løb - mavebøjninger - mobil - musik - notesblok - optag - pilnæse - plant - peace - politi - rage - ryg - rygjoint - skråtop - skør - sid - salute - statue - suicide - syredans - stilledans - tigger - tjekperson - trafik - tys - thumbsup - træn - træn2 - udklipsholder - vagt - vask - vaskvindue - wank - yoga - øl - tommel - luftguitar - dans2 - dans3 - dans4 - dans5 - dans6 - dans7 - dans8 - dans9 - dans10 - dans11 - dans12 - kylling - makeitrain - vehbjgetter - vehbjgiver - charme - flash - analgetter - analgiver - bjgetter - bjgiver - vehsexgetter - vehsexgiver")
end

Citizen.CreateThread(function()
    local index = 0
    local display = ""
    for name, value in pairs(emotes) do
        index = index + 1
        if index == 1 then
            display = display..name
        else
            display = display..", "..name
        end
    end
    --TriggerEvent('chat:addSuggestion', '/e', display)
    TriggerEvent('chat:addSuggestion', '/me eller /mig', 'Denne funktion bruges til at skrive f.eks en tanke. (/mig Tænker: Nøj jeg kunne godt en pizza.)')
    TriggerEvent('chat:addSuggestion', '/rapporterfejl', 'Denne funktion bruges til at rapportere bugs/fejl direkte til os.')
    TriggerEvent('chat:addSuggestion', '/humør', 'Brug denne funktion for at skifte dit ansigtsudtryk.')
    TriggerEvent('chat:addSuggestion', '/e', 'Brug denne funktion for at lave en handling.')
    TriggerEvent('chat:addSuggestion', '/k', 'Overgivelse ved at ligge på knæ med hænderne over hovedet.')
    TriggerEvent('chat:addSuggestion', '/tagtrøjeraf', 'Tager dine trøjer af og efterlader dig i bar overkrop.')
    TriggerEvent('chat:addSuggestion', '/overtøj', 'Fjerner overtøj.')
    TriggerEvent('chat:addSuggestion', '/undertrøje', 'Fjerner undertrøje.')
    TriggerEvent('chat:addSuggestion', '/bukser', 'Fjerner dine bukser.')
    TriggerEvent('chat:addSuggestion', '/sko', 'Fjerner dine sko.')
    TriggerEvent('chat:addSuggestion', '/hat', 'Fjerner din hat.')
    TriggerEvent('chat:addSuggestion', '/maske', 'Fjerner din maske.')
    TriggerEvent('chat:addSuggestion', '/briller', 'Fjerner dine briller/solbriller.')
    TriggerEvent('chat:addSuggestion', '/fængselstøj', 'Sætter din PED i fuldt fængselstøj - Skal kun benyttes i fængslet.')
    TriggerEvent('chat:addSuggestion', '/fører', 'Sætter dig i føresædet.')
    TriggerEvent('chat:addSuggestion', '/passager', 'Sætter dig i passagersædet.')
    TriggerEvent('chat:addSuggestion', '/bagsæde1', 'Sætter dig i venstre bagsæde.')
    TriggerEvent('chat:addSuggestion', '/bagsæde2', 'Sætter dig i højre bagsæde.')
    TriggerEvent('chat:addSuggestion', '/humør glad', 'Får dig til at se glad ud.')
    TriggerEvent('chat:addSuggestion', '/humør normal', 'Får dig til at se normal ud.')
    TriggerEvent('chat:addSuggestion', '/humør sur', 'Får dig til at se sur ud.')
    TriggerEvent('chat:addSuggestion', '/humør bekymret', 'Får dig til at se bekymret ud.')
    TriggerEvent('chat:addSuggestion', '/humør ked', 'Får dig til at se ked ud.')
    TriggerEvent('chat:addSuggestion', '/humør fuld', 'Får dig til at se fuld ud.')
    TriggerEvent('chat:addSuggestion', '/humør sover', 'Får dig til at lukke øjnene.')
    TriggerEvent('chat:addSuggestion', '/humør smerte', 'Får dig til at se ud som om at du er i smerte.')
    TriggerEvent('chat:addSuggestion', '/e armbøjninger', 'Lav armbøjninger.')
    TriggerEvent('chat:addSuggestion', '/e bladblæser', 'Stå med en bladblæser.')
    TriggerEvent('chat:addSuggestion', '/e bor', 'Bor i jorden.')
    TriggerEvent('chat:addSuggestion', '/e brolove', 'Giv en broder noget kærlighed!.')
    TriggerEvent('chat:addSuggestion', '/e bbq', 'Bør kun anvendes over en grill!.')
    TriggerEvent('chat:addSuggestion', '/e cam', 'Stå med et filmkamera.')
    TriggerEvent('chat:addSuggestion', '/e damn', 'Damn son!')
    TriggerEvent('chat:addSuggestion', '/e dj', 'Stå som en DJ.')
    TriggerEvent('chat:addSuggestion', '/e dans', 'Stå og dans.')
    TriggerEvent('chat:addSuggestion', '/e drillepind', 'Stå som en drillepind.')
    TriggerEvent('chat:addSuggestion', '/e dobbeltfuck', 'Ræk fuck med begge hænder.')
    TriggerEvent('chat:addSuggestion', '/e drik', 'Drik en stor øl.')
    TriggerEvent('chat:addSuggestion', '/e flex', 'Flex dine muskler.')
    TriggerEvent('chat:addSuggestion', '/e facepalm', 'Dæk dit ansigt med din hånd.')
    TriggerEvent('chat:addSuggestion', '/e fisk', 'Stå med en fiskestang.')
    TriggerEvent('chat:addSuggestion', '/e fingerknep', 'Lav "fingerknep" men hændernde.')
    TriggerEvent('chat:addSuggestion', '/e frygt', 'Frygt for dit liv.')
    TriggerEvent('chat:addSuggestion', '/e gangsterdans', 'Dans som en OG.')
    TriggerEvent('chat:addSuggestion', '/e politi', 'Stå som en Politimand.')
    TriggerEvent('chat:addSuggestion', '/e høst', 'Bruges til at høste kokain mm.')
    TriggerEvent('chat:addSuggestion', '/e hammer', 'Stå med en hammer')
    TriggerEvent('chat:addSuggestion', '/e hep', 'Stå og hep!')
    TriggerEvent('chat:addSuggestion', '/e kamera', 'Stå med et fotokamera.')
    TriggerEvent('chat:addSuggestion', '/e kikkert', 'Stå med en kikkert.')
    TriggerEvent('chat:addSuggestion', '/e kaffe', 'Stå med en kop kaffe, kan også kombineres med sid.')
    --TriggerEvent('chat:addSuggestion', '/e kost', 'Stå med en kost.')
    TriggerEvent('chat:addSuggestion', '/e knækfingre', 'Knæk dine fingre.')
    TriggerEvent('chat:addSuggestion', '/e kort', 'Stå med et kort over byen.')
    TriggerEvent('chat:addSuggestion', '/e knæ', 'Sæt dig på knæ.')
    TriggerEvent('chat:addSuggestion', '/e krydsarme', 'Stå med krydsede arme.')
    TriggerEvent('chat:addSuggestion', '/e læn', 'Læn dig op ad en mur.')
    TriggerEvent('chat:addSuggestion', '/e læn2', 'Læn dig forover.') -- fix!
    TriggerEvent('chat:addSuggestion', '/e luder', 'Stå som en luder.')
    TriggerEvent('chat:addSuggestion', '/e luder2', 'Stå som en luder.')
    TriggerEvent('chat:addSuggestion', '/e ligpåmaven', 'Lig dig på maven.')
    TriggerEvent('chat:addSuggestion', '/e ligpåryggen', 'Lig dig på ryggen.')
    TriggerEvent('chat:addSuggestion', '/e ligpåsiden', 'Lig dig på siden.')
    TriggerEvent('chat:addSuggestion', '/e løb', 'Løb på stedet.')
    TriggerEvent('chat:addSuggestion', '/e mobil', 'Stå med telefonen fremme, kan også kombineres med sid.')
    --TriggerEvent('chat:addSuggestion', '/e mic', 'Stå med en nyheds-mikrofon.')
    TriggerEvent('chat:addSuggestion', '/e musik', 'Spil på trommer eller guitar.')
    TriggerEvent('chat:addSuggestion', '/e mavebøjninger', 'Lav mavebøjninger på jorden.')
    TriggerEvent('chat:addSuggestion', '/e notesblok', 'Stå med en notesblok.')
    TriggerEvent('chat:addSuggestion', '/e optag', 'optag med din telefon.')
    TriggerEvent('chat:addSuggestion', '/e peace', 'Peace love and harmony <3')
    TriggerEvent('chat:addSuggestion', '/e plant', 'Grav eller plant i jorden.')
    TriggerEvent('chat:addSuggestion', '/e sidned', 'Sid ned på jorden.')
    TriggerEvent('chat:addSuggestion', '/e pilnæse', 'Stik fingeren i næsen og grav efter guld.')
    TriggerEvent('chat:addSuggestion', '/e ryg', 'Ryg en cigaret.')
    TriggerEvent('chat:addSuggestion', '/e rage', 'Gå amok!.')
    TriggerEvent('chat:addSuggestion', '/e rygjoint', 'Ryg en joint.')
    TriggerEvent('chat:addSuggestion', '/e skør', 'Lav "du er skør tegn".')
    TriggerEvent('chat:addSuggestion', '/e sid', 'Sid ned - oftest på en stol.')
    TriggerEvent('chat:addSuggestion', '/e statue', 'Stå som en statue.')
    TriggerEvent('chat:addSuggestion', '/e salute', 'Gør honnør.')
    TriggerEvent('chat:addSuggestion', '/e skråtop', 'Ræk fuck.')
    TriggerEvent('chat:addSuggestion', '/e syredans', 'Dans som havde du taget frimærker!')
    TriggerEvent('chat:addSuggestion', '/e stilledans', 'Dans stille/akavet.') -- fix!
    TriggerEvent('chat:addSuggestion', '/e suicide', 'Begå selvmord - Kræver en pistol.')
    TriggerEvent('chat:addSuggestion', '/e tigger', 'Stå som en tigger.')
    TriggerEvent('chat:addSuggestion', '/e trafik', 'Stå og diriger trafik.')
    TriggerEvent('chat:addSuggestion', '/e træn', 'Løft en vægtstang.')
    TriggerEvent('chat:addSuggestion', '/e træn2', 'Lav pull-ups.')
    TriggerEvent('chat:addSuggestion', '/e tys', 'Tys på folk.')
    TriggerEvent('chat:addSuggestion', '/e stok', 'Går med stok.')
    TriggerEvent('chat:addSuggestion', '/e mappe', 'Går med mappe/kasse.')
    TriggerEvent('chat:addSuggestion', '/e opkald', 'Taler i telefon')
    TriggerEvent('chat:addSuggestion', '/e batteri', 'Går med batteri.')
    TriggerEvent('chat:addSuggestion', '/e thumbsup', 'Giv en thumbsup.')
    TriggerEvent('chat:addSuggestion', '/e tjekperson', 'Tjek en person.')
    TriggerEvent('chat:addSuggestion', '/e udklipsholder', 'Stå med en udklipsholder, kan kombineres med sid.')
    --TriggerEvent('chat:addSuggestion', '/e utålmodig', 'Stå som var du utålmodig.')
    TriggerEvent('chat:addSuggestion', '/e vagt', 'Stå som en sikkerhedsvagt.')
    TriggerEvent('chat:addSuggestion', '/e wank', 'Wank i luften.')
    TriggerEvent('chat:addSuggestion', '/e vask', 'Vask dig selv - Skal bruges nær vand.')
    TriggerEvent('chat:addSuggestion', '/e vaskvindue', 'Vask et vindue med en klud.')
    TriggerEvent('chat:addSuggestion', '/e yoga', 'Dyrk yoga.')
    TriggerEvent('chat:addSuggestion', '/e øl', 'stå og dans med en øl i hånden.')
	-- nye
	TriggerEvent('chat:addSuggestion', '/e tommel', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e luftguitar', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e dans2', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e dans3', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e dans4', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e dans5', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e dans6', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e dans7', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e dans8', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e dans9', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e dans10', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e dans11', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e dans12', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e kylling', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e makeitrain', 'NOTE: KOSTER 10K.')
	TriggerEvent('chat:addSuggestion', '/e vehbjgetter', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e vehbjgiver', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e charme', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e flash', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e analgetter', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e analgiver', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e bjgetter', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e bjgiver', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e vehsexgiver', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e Unicorn', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e strip5', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e strip6', 'Ny.')
	TriggerEvent('chat:addSuggestion', '/e genopliv', 'Ny.')

end)


local holdingbong = false
local bongmodel = "hei_heist_sh_bong_01"
local bong_net = nil
local emotePlaying = false
Delay = false
function playEmote(task)
    local ped = GetPlayerPed(-1)
    if not DoesEntityExist(ped) then
        return false
    end
    local veh = GetVehiclePedIsUsing(ped)
    if DoesEntityExist(veh) then
        TriggerEvent("pNotify:SendNotification", {text = "Du kan ikke bruge emotes i et køretøj!", type = "error", timeout = 2000, layout = "centerLeft"})
        return false
    end
    if emotePlaying then
        delProps(ped)
    end
    if IsPedInAnyVehicle(GetPlayerPed(-1)) and IsPedActiveInScenario(GetPlayerPed(-1)) and Drink then -- Tjekker om spilleren er i et køretøj
        return false
    end
    if IsEntityPlayingAnim(GetPlayerPed(-1), "random@arrests@busted", "idle_a", 3) then
        return false

    elseif task == "PROP_HUMAN_SEAT_BENCH" then

        local heading = GetEntityHeading(GetPlayerPed(-1))
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        TaskStartScenarioAtPosition(GetPlayerPed(-1), task, x, y, z-1, heading, 0, 0, false)
    elseif task == "damn" then

        TaskPlayAnim(GetPlayerPed(-1), "gestures@f@standing@casual", "gesture_damn", 8.0, 8.0, -1, 50, 0, false, false, false)

    elseif task == "kys" then
        loadAnimDict("anim@mp_player_intcelebrationfemale@finger_kiss")

        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationfemale@finger_kiss", "finger_kiss", 8.0, 8.0, -1, 50, 0, false, false, false)

        --PARAPLY EMOTE HER
    elseif task == "test" then
        loadAnimDict("amb@code_human_wander_drinking@beer@female@base")

        local prop = "p_amb_brolly_01"

        TaskPlayAnim(GetPlayerPed(-1), "amb@code_human_wander_drinking@beer@female@base", "static", 5.0, -1, -1, 50, 0, false, false, false)
        --TaskPlayAnim(GetPlayerPed(PlayerId()), 1.0, -1, -1, 50, 0, 0, 0, 0) -- 50 = 32 + 16 + 2
        --TaskPlayAnim(GetPlayerPed(PlayerId()), "amb@code_human_wander_drinking@beer@female@base", "base", 1.0, -1, -1, 50, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 1, 0)

        Drink = true
        emotePlaying = true
        ----KAFFE KODE GOES HERE
    elseif task == "kaffe" then
        loadAnimDict("amb@world_human_aa_coffee@idle_a")

        local prop = "p_amb_coffeecup_01"
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_aa_coffee@idle_a", "idle_b", 12.0, -1, -1, 50, 1, false, false, false)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0)
        Drink = true
        emotePlaying = true


    elseif task == "gangsterdans" then
        loadAnimDict("missfbi3_sniping")
        TaskPlayAnim(GetPlayerPed(-1), "missfbi3_sniping", "dance_m_default", 5.0, -1, -1, 1, 0, false, false, false)
	
	elseif task == "tommel" then
		loadAnimDict("random@hitch_lift")
        TaskPlayAnim(GetPlayerPed(-1), "random@hitch_lift", "idle_f", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "luftguitar" then
		loadAnimDict("anim@mp_player_intcelebrationmale@air_guitar")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@air_guitar", "air_guitar", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "dans2" then
		loadAnimDict("anim@mp_player_intcelebrationmale@air_synth")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@air_synth", "air_synth", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "dans3" then
		loadAnimDict("anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity")
        TaskPlayAnim(GetPlayerPed(-1), "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v2_male^6", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "dans4" then
		loadAnimDict("anim@amb@nightclub@mini@dance@dance_solo@male@var_a@")
        TaskPlayAnim(GetPlayerPed(-1), "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", "med_center_up", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "dans5" then
		loadAnimDict("anim@amb@nightclub@mini@dance@dance_solo@male@var_a@")
        TaskPlayAnim(GetPlayerPed(-1), "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", "med_right_up", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "dans6" then
		loadAnimDict("timetable@tracy@ig_5@idle_b")
        TaskPlayAnim(GetPlayerPed(-1), "timetable@tracy@ig_5@idle_b", "idle_e", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "dans7" then
		loadAnimDict("mini@strip_club@idles@dj@idle_04")
        TaskPlayAnim(GetPlayerPed(-1), "mini@strip_club@idles@dj@idle_04", "idle_04", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "dans8" then
		loadAnimDict("special_ped@mountain_dancer@monologue_3@monologue_3a")
        TaskPlayAnim(GetPlayerPed(-1), "special_ped@mountain_dancer@monologue_3@monologue_3a", "mnt_dnc_buttwag", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "dans9" then
		loadAnimDict("anim@amb@nightclub@dancers@black_madonna_entourage@")
        TaskPlayAnim(GetPlayerPed(-1), "anim@amb@nightclub@dancers@black_madonna_entourage@", "hi_dance_facedj_09_v2_male^5", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "dans10" then
		loadAnimDict("anim@mp_player_intcelebrationfemale@uncle_disco")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationfemale@uncle_disco", "uncle_disco", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "dans11" then
		loadAnimDict("anim@mp_player_intcelebrationfemale@raise_the_roof")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationfemale@raise_the_roof", "raise_the_roof", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "dans12" then
		loadAnimDict("anim@mp_player_intcelebrationmale@cats_cradle")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@cats_cradle", "cats_cradle", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "kylling" then
		loadAnimDict("anim@mp_player_intcelebrationmale@chicken_taunt")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@chicken_taunt", "chicken_taunt", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "knækfinger" then
		loadAnimDict("oddjobs@towing")
        TaskPlayAnim(GetPlayerPed(-1), "oddjobs@towing", "f_blow_job_loop", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "makeitrain" then
	TriggerServerEvent('kaz_emotes:makerainpay')
elseif task == "vehbjgetter" then
		loadAnimDict("oddjobs@towing")
        TaskPlayAnim(GetPlayerPed(-1), "oddjobs@towing", "m_blow_job_loop", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "vehbjgiver" then
		loadAnimDict("oddjobs@towing")
        TaskPlayAnim(GetPlayerPed(-1), "oddjobs@towing", "f_blow_job_loop", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "charme" then
		loadAnimDict("mini@strip_club@idles@stripper")
        TaskPlayAnim(GetPlayerPed(-1), "mini@strip_club@idles@stripper", "stripper_idle_02", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "flash" then
		loadAnimDict("mini@strip_club@backroom@")
        TaskPlayAnim(GetPlayerPed(-1), "mini@strip_club@backroom@", "stripper_b_backroom_idle_b", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "analgetter" then
		loadAnimDict("rcmpaparazzo_2")
        TaskPlayAnim(GetPlayerPed(-1), "rcmpaparazzo_2", "shag_loop_poppy", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "analgiver" then
		loadAnimDict("rcmpaparazzo_2")
        TaskPlayAnim(GetPlayerPed(-1), "rcmpaparazzo_2", "shag_loop_a", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "bjgetter" then
		loadAnimDict("misscarsteal2pimpsex")
        TaskPlayAnim(GetPlayerPed(-1), "misscarsteal2pimpsex", "pimpsex_punter", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "bjgiver" then
		loadAnimDict("misscarsteal2pimpsex")
        TaskPlayAnim(GetPlayerPed(-1), "misscarsteal2pimpsex", "pimpsex_hooker", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "vehsexgetter" then
		loadAnimDict("mini@prostitutes@sexlow_veh")
        TaskPlayAnim(GetPlayerPed(-1), "mini@prostitutes@sexlow_veh", "low_car_sex_loop_player", 5.0, -1, -1, 1, 0, false, false, false)
elseif task == "vehsexgiver" then
		loadAnimDict("mini@prostitutes@sexlow_veh")
        TaskPlayAnim(GetPlayerPed(-1), "mini@prostitutes@sexlow_veh", "low_car_sex_loop_female", 5.0, -1, -1, 1, 0, false, false, false)
		
    elseif task == "syredans" then
        loadAnimDict("misschinese2_crystalmazemcs1_cs")
        TaskPlayAnim(GetPlayerPed(-1), "misschinese2_crystalmazemcs1_cs", "dance_loop_tao", -1, -1, -1, 1, 0, false, false, false)

    elseif task == "udklipsholder" then
        loadAnimDict("amb@lo_res_idles@")
        local prop = "p_amb_clipboard_01"
        TaskPlayAnim(GetPlayerPed(-1), "amb@lo_res_idles@", "world_human_clipboard_lo_res_base", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 0xeb95), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
        Drink = true
        emotePlaying = true
	elseif task == "paraply" then
        loadAnimDict("amb@world_human_drinking@coffee@male@base")
        local prop = "p_amb_brolly_01"
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_drinking@coffee@male@base", "base", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z+0.2, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 57005), 0.15, 0.005, -0.02, 80.0, -20.0, 175.0, true, true, false, true, 1, true)
        Drink = true
        emotePlaying = true
	elseif task == "box" then
        loadAnimDict("anim@heists@box_carry@")
        local prop = "hei_prop_heist_box"
        TaskPlayAnim(GetPlayerPed(-1), "anim@heists@box_carry@", "idle", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 60309), 0.025, 0.08, 0.255, -145.0, 290.0, 0.0, true, true, false, true, 1, true)
        Drink = true
        emotePlaying = true
    elseif task == "mappe" then
        --loadAnimDict("")
        RequestAnimSet("MOVE_P_M_ONE_BRIEFCASE")
        local prop = "prop_idol_case_02"
        --TaskPlayAnim(GetPlayerPed(-1), "", "", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 0x6f06), 0.050, 0.0, 0.0, 0.0, -180.0, -270.0, true, true, false, true, 1, true)
        SetPedMovementClipset(GetPlayerPed(PlayerId()), "MOVE_P_M_ONE_BRIEFCASE", 1.0)
        Drink = true
        emotePlaying = true
    elseif task == "bladblæser" then
        loadAnimDict("amb@world_human_gardener_leaf_blower@idle_a")

        local prop = "prop_leaf_blower_01"
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_gardener_leaf_blower@idle_a", "idle_a", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 0x6f06), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
        Drink = true
        emotePlaying = true
    elseif task == "stok" then
        loadAnimDict("ah_1_ext_t6-0")
        RequestAnimSet("move_lester_CaneUp")
        local prop = "prop_cs_walking_stick"
        TaskPlayAnim(GetPlayerPed(-1), "ah_1_ext_t6-0", "prop_cs_walking_stick-0", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 57005), 0.15, 0.005, -0.02, 0.0, -90.0, 0.0, 0, 0, 0, 0, 0, 1)
        SetPedMovementClipset(GetPlayerPed(PlayerId()), "move_lester_CaneUp", 1.0)
        Drink = true
        emotePlaying = true
	elseif task == "unicorn" then
        loadAnimDict("anim@amb@nightclub@lazlow@hi_dancefloor@")
        RequestAnimSet("dancecrowd_li_15_handup_laz")
        local prop = "ba_prop_battle_hobby_horse"
        TaskPlayAnim(GetPlayerPed(-1), "anim@amb@nightclub@lazlow@hi_dancefloor@", "dancecrowd_li_15_handup_laz", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid																			-- venstre - pas - pas - 
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 28422), 0.0, 0.005, -0.02, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
        SetPedMovementClipset(GetPlayerPed(PlayerId()), "dancecrowd_li_15_handup_laz", 1.0)
        Drink = true
        emotePlaying = true	
    elseif task == "batteri" then
        loadAnimDict("anim@heists@box_carry@")

        local prop = "prop_car_battery_01"
        TaskPlayAnim(GetPlayerPed(-1), "anim@heists@box_carry@", "idle", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 0x6f06), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
        Drink = true
        emotePlaying = true
    elseif task == "opkald" then
        loadAnimDict("cellphone@")

        local prop = "prop_player_phone_01"
        TaskPlayAnim(GetPlayerPed(-1), "cellphone@", "cellphone_call_listen_base", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 0x6f06), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
        Drink = true
        emotePlaying = true
    elseif task == "krydsarme" then
        loadAnimDict("amb@world_human_hang_out_street@male_c@base")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_hang_out_street@male_c@base", "base", -1, -1, -1, 50, 0, false, false, false)


    elseif task == "dobbeltfuck" then
        loadAnimDict("anim@mp_player_intupperfinger")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intupperfinger", "idle_a", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )


    elseif task == "facepalm" then
        loadAnimDict("anim@mp_player_intupperface_palm")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intupperface_palm", "idle_a", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )


    elseif task == "pilnæse" then
        loadAnimDict("anim@mp_player_intuppernose_pick")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intuppernose_pick", "idle_a", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )


    elseif task == "skør" then
        loadAnimDict("anim@mp_player_intupperyou_loco")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intupperyou_loco", "idle_a", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )

    elseif task == "suicide" and HasPedGotWeapon(GetPlayerPed(-1), "WEAPON_PISTOL", false) then
        local theGunThatKillU = GetHashKey("WEAPON_PISTOL")
        SetCurrentPedWeapon(GetPlayerPed(-1), theGunThatKillU, true)

        loadAnimDict("mp_suicide")
        TaskPlayAnim(GetPlayerPed(-1), "mp_suicide", "pistol", 8.0, 1.0, -1, 0, 1, 1, 0, 0 )
        Wait(1200)
        SetEntityHealth(GetPlayerPed(-1), 105)

    elseif task == "dans" then
        loadAnimDict("rcmnigel1bnmt_1b")
        TaskPlayAnim(GetPlayerPed(-1), "rcmnigel1bnmt_1b", "dance_loop_tyler", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
	elseif task == "strip1" then
        loadAnimDict("mini@strip_club@lap_dance@ld_girl_a_song_a_p1")
        TaskPlayAnim(GetPlayerPed(-1), "mini@strip_club@lap_dance@ld_girl_a_song_a_p1", "ld_girl_a_song_a_p1_f", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
	elseif task == "strip2" then
        loadAnimDict("mini@strip_club@lap_dance@ld_girl_a_song_a_p2")
        TaskPlayAnim(GetPlayerPed(-1), "mini@strip_club@lap_dance@ld_girl_a_song_a_p2", "ld_girl_a_song_a_p2_f", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
	elseif task == "strip3" then
        loadAnimDict("mini@strip_club@lap_dance@ld_girl_a_song_a_p3")
        TaskPlayAnim(GetPlayerPed(-1), "mini@strip_club@lap_dance@ld_girl_a_song_a_p3", "ld_girl_a_song_a_p3_f", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
	elseif task == "strip4" then
        loadAnimDict("mini@strip_club@pole_dance@pole_dance1")
        TaskPlayAnim(GetPlayerPed(-1), "mini@strip_club@pole_dance@pole_dance1", "pd_dance_01", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
	elseif task == "strip5" then
        loadAnimDict("mini@strip_club@lap_dance_2g@ld_2g_p1")
        TaskPlayAnim(GetPlayerPed(-1), "mini@strip_club@lap_dance_2g@ld_2g_p1", "ld_2g_p1_s1", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
	elseif task == "strip6" then
		loadAnimDict("mini@strip_club@private_dance@part3")
        TaskPlayAnim(GetPlayerPed(-1), "mini@strip_club@private_dance@part3", "priv_dance_p3", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
	elseif task == "genopliv" then
        loadAnimDict("amb@medic@standing@tendtodead@enter")
        TaskPlayAnim(GetPlayerPed(-1), "amb@medic@standing@tendtodead@enter", "enter", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
		Citizen.Wait(1600)
		loadAnimDict("mini@cpr@char_a@cpr_def")
        TaskPlayAnim(GetPlayerPed(-1), "mini@cpr@char_a@cpr_def", "cpr_pumpchest_idle", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
		Citizen.Wait(5000)
		loadAnimDict("amb@medic@standing@kneel@exit")
        TaskPlayAnim(GetPlayerPed(-1), "amb@medic@standing@kneel@exit", "exit", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )		
    elseif task == "armbøjninger" then
        loadAnimDict("amb@world_human_push_ups@male@enter")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_push_ups@male@enter", "enter", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
        Wait(3500)
        loadAnimDict("amb@world_human_push_ups@male@base")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_push_ups@male@base", "base", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )

    elseif task == "kamera" then
        loadAnimDict("amb@world_human_paparazzi@male@enter")
        local prop = "prop_pap_camera_01"
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_paparazzi@male@enter", "enter", 8.0, 1.0, -1, 0, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 0x6f06), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
        Wait(1500)
        loadAnimDict("amb@world_human_paparazzi@male@idle_a")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_paparazzi@male@idle_a", "idle_c", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
        Drink = true
        emotePlaying = true
    elseif task == "mavebøjninger" then
        loadAnimDict("amb@world_human_sit_ups@male@enter")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_sit_ups@male@enter", "enter", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
        Wait(3500)
        loadAnimDict("amb@world_human_sit_ups@male@base")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_sit_ups@male@base", "base", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
	--elseif task == "cam" then
		--print("INSERT HERE")
    elseif task == "rygjoint" then
        local prop = "p_amb_joint_01"
        loadAnimDict("amb@world_human_smoking_pot@male@idle_a")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_smoking_pot@male@idle_a", "idle_a", 8.0, 1.0, -1, 1, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 0xeb95), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
        Wait(5000)
        loadAnimDict("amb@world_human_smoking_pot@male@base")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_smoking_pot@male@base", "base", 8.0, 1.0, -1, 1, 0, 0, 0, 0)
        emotePlaying = true
    elseif task == "tigger" then
        loadAnimDict("amb@world_human_bum_freeway@male@base")
        local prop = "prop_beggers_sign_03"
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_bum_freeway@male@base", "base", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 0x6f06), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
        Drink = true
        emotePlaying = true
    elseif task == "vasktest" then
        loadAnimDict("amb@world_human_bum_wash@male@high@idle_a")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_bum_wash@male@high@idle_a", "idle_a", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )

    elseif task == "trafik" then
        loadAnimDict("amb@world_human_car_park_attendant@male@idle_a")
        local prop = "prop_parking_wand_01"
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_car_park_attendant@male@idle_a", "idle_c", 8.0, 1.0, -1, 1, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 0x6f06), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
        Drink = true
        emotePlaying = true
    elseif task == "ligpåryggen" then
        loadAnimDict("amb@world_human_sunbathe@male@back@enter")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_sunbathe@male@back@enter", "enter", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
        Wait(4000)
        TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_SUNBATHE_BACK")

    elseif task == "læn2" then
        loadAnimDict("amb@prop_human_bum_shopping_cart@male@enter")
        TaskPlayAnim(GetPlayerPed(-1), "amb@prop_human_bum_shopping_cart@male@enter", "enter", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
        Wait(1500)
        TaskStartScenarioInPlace(GetPlayerPed(-1), "PROP_HUMAN_BUM_SHOPPING_CART")

    elseif task == "ryg" then
        loadAnimDict("amb@world_human_smoking@male@male_a@enter")
        local prop = "ng_proc_cigarette01a"
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_smoking@male@male_a@enter", "enter", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 0x6f06), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
        Drink = true
        Wait(13000)
        TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_SMOKING")
        emotePlaying = true

    elseif task == "dj" then
        loadAnimDict("anim@mp_player_intcelebrationmale@dj")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@dj", "dj", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )

    elseif task == "brolove" then
        loadAnimDict("anim@mp_player_intcelebrationmale@bro_love")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@bro_love", "bro_love", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )

    elseif task == "fingerknep" then
        loadAnimDict("anim@mp_player_intcelebrationmale@dock")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@dock", "dock", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )

    elseif task == "skråtop" then
        loadAnimDict("anim@mp_player_intcelebrationmale@finger")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@finger", "finger", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )

    elseif task == "rage" then
        loadAnimDict("anim@mp_player_intcelebrationmale@freakout")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@freakout", "freakout", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )

    elseif task == "knækfingre" then
        loadAnimDict("anim@mp_player_intcelebrationmale@knuckle_crunch")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@knuckle_crunch", "knuckle_crunch", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )

    elseif task == "peace" then
        loadAnimDict("anim@mp_player_intcelebrationmale@peace")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@peace", "peace", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )

    elseif task == "dollyno" then
        loadAnimDict("anim@mp_player_intcelebrationfemale@no_way")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationfemale@no_way", "no_way", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )

    elseif task == "salute" then
        loadAnimDict("anim@mp_player_intcelebrationmale@salute")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@salute", "salute", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )

    elseif task == "tys" then
        loadAnimDict("anim@mp_player_intcelebrationmale@shush")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@shush", "shush", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )

    elseif task == "thumbsup" then
        loadAnimDict("anim@mp_player_intcelebrationfemale@thumbs_up")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationfemale@thumbs_up", "thumbs_up", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )

    elseif task == "drillepind" then
        loadAnimDict("anim@mp_player_intcelebrationmale@thumb_on_ears")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@thumb_on_ears", "thumb_on_ears", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )

    elseif task == "wank" then
        loadAnimDict("anim@mp_player_intcelebrationmale@wank")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@wank", "wank", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )

    elseif task == "ligpåmaven" then
        loadAnimDict("amb@world_human_sunbathe@male@front@enter")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_sunbathe@male@front@enter", "enter", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
        Wait(4000)
        TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_SUNBATHE")

    elseif task == "knæ" then
        loadAnimDict("amb@medic@standing@kneel@enter")
        TaskPlayAnim(GetPlayerPed(-1), "amb@medic@standing@kneel@enter", "enter", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
        Wait(7500)
        loadAnimDict("amb@medic@standing@kneel@base")
        TaskPlayAnim(GetPlayerPed(-1), "amb@medic@standing@kneel@base", "base", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )

    elseif task == "statue" then
        loadAnimDict("amb@world_human_statue@enter")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_statue@enter", "enter", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
        Wait(3000)
        TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_HUMAN_STATUE")

    elseif task == "optag" then
        loadAnimDict("amb@world_human_mobile_film_shocking@male@enter")
        local prop = "prop_amb_phone"
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_mobile_film_shocking@male@enter", "enter", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
        Wait(2500)
        loadAnimDict("amb@world_human_mobile_film_shocking@male@base")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_mobile_film_shocking@male@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
        emotePlaying = true
    elseif task == "frygt" then
        loadAnimDict("amb@code_human_cower_stand@male@enter")
        TaskPlayAnim(GetPlayerPed(-1), "amb@code_human_cower_stand@male@enter", "enter", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
        Wait(500)
        loadAnimDict("amb@code_human_cower_stand@male@idle_a")
        TaskPlayAnim(GetPlayerPed(-1), "amb@code_human_cower_stand@male@idle_a", "idle_a", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )

    elseif task == "kikkert" then
        loadAnimDict("amb@world_human_binoculars@male@enter")
        local prop = "prop_binoc_01"
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_binoculars@male@enter", "enter", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
        Wait(1000)
        loadAnimDict("amb@world_human_binoculars@male@base")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_binoculars@male@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
        emotePlaying = true
    elseif task == "notesblok" then
        loadAnimDict("amb@medic@standing@timeofdeath@enter")
        local prop = "p_notepad_01_s"
        TaskPlayAnim(GetPlayerPed(-1), "amb@medic@standing@timeofdeath@enter", "enter", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 0xeb95), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
        Wait(6000)
        loadAnimDict("amb@medic@standing@timeofdeath@base")
        TaskPlayAnim(GetPlayerPed(-1), "amb@medic@standing@timeofdeath@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
        emotePlaying = true

    elseif task == "repairtest" then
        loadAnimDict("amb@world_human_vehicle_mechanic@male@idle_a")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_vehicle_mechanic@male@idle_a", "idle_b", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
        Wait(19000)
        loadAnimDict("amb@world_human_vehicle_mechanic@male@exit")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_vehicle_mechanic@male@exit", "exit", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
		
	elseif task == 'klørøv' then
		local ad = "mp_player_int_upperarse_pick"
		local player = PlayerPedId()
				
		if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
			loadAnimDict( ad )
			if ( IsEntityPlayingAnim( player, ad, "mp_player_int_arse_pick", 3 ) ) then 
				TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (100)
				notes = false
			else
				TaskPlayAnim( player, ad, "mp_player_int_arse_pick", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (500)
				notes = true
			end     
		end
		
	elseif task == 'kløskridt' then
		local ad = "mp_player_int_uppergrab_crotch"
		local player = PlayerPedId()
				
		if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
			loadAnimDict( ad )
			if ( IsEntityPlayingAnim( player, ad, "mp_player_int_grab_crotch", 3 ) ) then 
				TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (100)
				notes = false
			else
				TaskPlayAnim( player, ad, "mp_player_int_grab_crotch", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (500)
				notes = true
			end     
		end
		
	elseif task == 'fred' then
		local ad = "mp_player_int_upperpeace_sign"
		local player = PlayerPedId()
				
		if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
			loadAnimDict( ad )
			if ( IsEntityPlayingAnim( player, ad, "mp_player_int_peace_sign", 3 ) ) then 
				TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (100)
				notes = false
			else
				TaskPlayAnim( player, ad, "mp_player_int_peace_sign", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (500)
				notes = true
			end     
		end
		
	elseif task == 'krydsarme2' then
		local ad = "oddjobs@assassinate@construction@"
		local player = PlayerPedId()
				
		if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
			loadAnimDict( ad )
			if ( IsEntityPlayingAnim( player, ad, "unarmed_fold_arms", 3 ) ) then 
				TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (100)
			else
				TaskPlayAnim( player, ad, "unarmed_fold_arms", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (500)
			end     
		end
		
    elseif task == "fuckfinger" then
        loadAnimDict("anim@mp_player_intselfiethe_bird")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intselfiethe_bird", "idle_a", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
		
	elseif task == 'taske' then
		local player = PlayerPedId()
		if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
			GiveWeaponToPed(player, 0x01B79F17, 1, false, true);
		end
				
	elseif task == 'taske2' then
		local player = PlayerPedId()
		if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
			GiveWeaponToPed(player, 0x88C78EB7, 1, false, true);
		end
		
	elseif task == 'spildød' then
		local ad = "misslamar1dead_body"
		local player = PlayerPedId()
		if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
			loadAnimDict( ad )
			if ( IsEntityPlayingAnim( player, ad, "dead_idle", 3 ) ) then 
				TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 33, 0, 0, 0, 0 )
				Wait (100)
			else
				TaskPlayAnim( player, ad, "dead_idle", 8.0, 1.0, -1, 33, 0, 0, 0, 0 )
				Wait (500)
			end     
		end
		
	elseif task == 'holster' then
		local ad = "move_m@intimidation@cop@unarmed"
		local player = PlayerPedId()
		if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
			loadAnimDict( ad )
			if ( IsEntityPlayingAnim( player, ad, "idle", 3 ) ) then 
				TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (100)
			else
				TaskPlayAnim( player, ad, "idle", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (500)
			end     
		end
			
	elseif task == 'sigt' then
		local ad = "move_weapon@pistol@copa"
		local player = PlayerPedId()
		if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
			loadAnimDict( ad )
			if ( IsEntityPlayingAnim( player, ad, "idle", 3 ) ) then 
				TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (100)
			else
				TaskPlayAnim( player, ad, "idle", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (500)
			end     
		end

		elseif task == 'sigt2' then
		local ad = "move_weapon@pistol@cope"
		local player = PlayerPedId()
		if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
			loadAnimDict( ad )
			if ( IsEntityPlayingAnim( player, ad, "idle", 3 ) ) then 
				TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (100)
			else
				TaskPlayAnim( player, ad, "idle", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (500)
			end     
		end

	elseif task == 'cigar' then
		local cigar_name = cigar_name or 'prop_cigar_02' --noprop
		local playerPed = PlayerPedId()	
		if ( DoesEntityExist( playerPed ) and not IsEntityDead( playerPed )) then 
			if IsCigar then
				Wait(500)
				DeleteObject(cigar)
				IsCigar = false
			else
				IsCigar = true
				Wait(500)
				local x,y,z = table.unpack(GetEntityCoords(playerPed))
				cigar = CreateObject(GetHashKey(cigar_name), x, y, z+0.2,  true,  true, true)
				AttachEntityToEntity(cigar, playerPed, GetPedBoneIndex(playerPed, 47419), 0.015, -0.0001, 0.003, 55.0, 0.0, -85.0, true, true, false, true, 1, true)
			end     
		end
		
   elseif task == 'cigar2' then
		local cigar_name = cigar_name or 'prop_cigar_01' --noprop
		local playerPed = PlayerPedId()			
		if ( DoesEntityExist( playerPed ) and not IsEntityDead( playerPed )) then 
			if IsCigar then
				Wait(500)
				DeleteObject(cigar)
				IsCigar = false
			else
				IsCigar = true
				Wait(500)
				local x,y,z = table.unpack(GetEntityCoords(playerPed))
				cigar = CreateObject(GetHashKey(cigar_name), x, y, z+0.2,  true,  true, true)
				AttachEntityToEntity(cigar, playerPed, GetPedBoneIndex(playerPed, 47419), 0.015, -0.0001, 0.003, 55.0, 0.0, -85.0, true, true, false, true, 1, true)
			end     
		end
		
	elseif task == 'gang' then
		local ad = "mp_player_int_uppergang_sign_a"
		local player = PlayerPedId()				
		if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
			loadAnimDict( ad )
			if ( IsEntityPlayingAnim( player, ad, "mp_player_int_gang_sign_a", 3 ) ) then 
				TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (100)
				notes = false
			else
				TaskPlayAnim( player, ad, "mp_player_int_gang_sign_a", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (500)
				notes = true
			end     
		end
	
	elseif task == 'gang2' then
		local ad = "mp_player_int_uppergang_sign_b"
		local player = PlayerPedId()				
		if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
			loadAnimDict( ad )
			if ( IsEntityPlayingAnim( player, ad, "mp_player_int_gang_sign_b", 3 ) ) then 
				TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (100)
				notes = false
			else
				TaskPlayAnim( player, ad, "mp_player_int_gang_sign_b", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (500)
				notes = true
			end     
		end

	elseif task == 'krydsarme3' then
		local ad = "missfbi_s4mop"
		local player = PlayerPedId()				
		if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
			loadAnimDict( ad )
			if ( IsEntityPlayingAnim( player, ad, "guard_idle_a", 3 ) ) then 
				TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (100)
			else
				TaskPlayAnim( player, ad, "guard_idle_a", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Wait (500)
			end 
		end
		



        ----GLAD HUMØR KODE GOES HERE
    elseif task == "skid" then
        Poop(ped)
	elseif task == "tis" then
		Pee(ped)
	elseif task == "cam" then
		loadAnimDict("missfinale_c2mcs_1")
        RequestAnimSet("fin_c2_mcs_1_camman")
        local prop = "prop_v_cam_01"
		TaskPlayAnim(GetPlayerPed(-1), "missfinale_c2mcs_1", "fin_c2_mcs_1_camman", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid																			-- venstre - pas - pas - 
		AttachEntityToEntity(propspawned, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 1, 0, 1, 0, 1)
		TaskPlayAnim(GetPlayerPed(-1), "missfinale_c2mcs_1", "fin_c2_mcs_1_camman", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
        Drink = true
        emotePlaying = true	
	elseif task == "mic" then 
		loadAnimDict("missheistdocksprep1hold_cellphone")
        RequestAnimSet("hold_cellphone")
        local prop = "p_ing_microphonel_01"
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid																			-- venstre - pas - pas - 
        AttachEntityToEntity(propspawned, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()), 60309), 0.055, 0.05, 0.0, 240.0, 0.0, 0.0, 1, 1, 0, 1, 0, 1)
		TaskPlayAnim(GetPlayerPed(-1), "missheistdocksprep1hold_cellphone", "hold_cellphone", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
        Drink = true
        emotePlaying = true		
	elseif task == "mic2" then
		loadAnimDict("missfra1")
        RequestAnimSet("mcs2_crew_idle_m_boom")
        local prop = "prop_v_bmike_01"
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid																			-- venstre - pas - pas - 
        AttachEntityToEntity(propspawned, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()), 28422), -0.08, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 1, 0, 1, 0, 1)
		TaskPlayAnim(GetPlayerPed(-1), "missfra1", "mcs2_crew_idle_m_boom", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
        Drink = true
        emotePlaying = true	
    elseif task == "phone" then
        Phone()


    elseif not Delay then
        TaskStartScenarioInPlace(GetPlayerPed(-1), task)
        Delay = true

    end
    return true
end


AddEventHandler("emote:start", function(name)
    if emotes[name] ~= nil then
        if playEmote(emotes[name]) then

            TriggerEvent("pNotify:SendNotification",{text = "Afspiller emote:<b style='color:lightblue';> "..name.."",type = "success",timeout = (3000),layout = "bottomCenter",queue = "fart",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer=true})
            reset()
        end
    else
        TriggerEvent("pNotify:SendNotification",{text = "Denne emote findes ikke",type = "error",timeout = (3000),layout = "bottomCenter",queue = "fart",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer=true})
    end
end)
AddEventHandler("emote:dog", function(name)
    if dogemotes[name] ~= nil then
        if playEmote(dogemotes[name]) then

            TriggerEvent("pNotify:SendNotification",{text = "Afspiller emote:<b style='color:lightblue';> "..name.."",type = "success",timeout = (3000),layout = "bottomCenter",queue = "fart",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer=true})
        end
    else
        TriggerEvent("pNotify:SendNotification",{text = "Denne emote findes ikke",type = "error",timeout = (3000),layout = "bottomCenter",queue = "fart",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer=true})
    end
end)

RegisterNetEvent('kaz_blomst:on')
AddEventHandler('kaz_blomst:on', function()
loadAnimDict("missheistdocksprep1hold_cellphone")
RequestAnimSet("hold_cellphone")
local prop = "prop_single_rose"
local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
Citizen.Wait(100)
local netid = ObjToNet(propspawned)
prop_net = netid																			-- venstre - pas - pas - 
AttachEntityToEntity(propspawned, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()), 60309), 0.055, 0.05, 0.0, 240.0, 0.0, 0.0, 1, 1, 0, 1, 0, 1)
TaskPlayAnim(GetPlayerPed(-1), "missheistdocksprep1hold_cellphone", "hold_cellphone", 8.0, 1.0, -1, 50, 0, 0, 0, 0)
Drink = true
emotePlaying = true	
end)

RegisterNetEvent('kaz_attach:openbox')
AddEventHandler('kaz_attach:openbox', function()
exports['kaz_progressbar']:startUI(15000, "Åbner kufferten")
local ped = GetPlayerPed(-1)
TaskStartScenarioInPlace(PlayerPedId(), "CODE_HUMAN_MEDIC_KNEEL")
local prop = "prop_idol_case_02"
local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.6, -1.0)
local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
Citizen.Wait(100)
local netid = ObjToNet(propspawned)
Drink = true
emotePlaying = true	
Citizen.Wait(7500)
DetachEntity(NetToObj(netid), 1, 1)
DeleteEntity(NetToObj(netid))
DeleteObject(NetToObj(netid))
ClearFacialIdleAnimOverride(ped)
Drink = false
emotePlaying = false
local prop = "prop_idol_case"
local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
Citizen.Wait(100)
local netid = ObjToNet(propspawned)
Drink = true
emotePlaying = true	
Citizen.Wait(7500)
FreezeEntityPosition(PlayerPedId(),false)
ClearPedTasksImmediately(PlayerPedId())
ClearPedTasks(ped)
DetachEntity(NetToObj(netid), 1, 1)
DeleteEntity(NetToObj(netid))
DeleteObject(NetToObj(netid))
ClearFacialIdleAnimOverride(ped)
Drink = false
emotePlaying = false
end)

AddEventHandler("emote:mood", function(name)
    if moods[name] ~= nil then
        if playEmote(moods[name]) then

            SetFacialIdleAnimOverride(GetPlayerPed(-1), moods[name])
            TriggerEvent("pNotify:SendNotification",{text = "Humør:<b style='color:lightblue';> "..name.."",type = "success",timeout = (3000),layout = "bottomCenter",queue = "fart",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer=true})
        end
    else
        TriggerEvent("pNotify:SendNotification",{text = "Dette humør findes ikke",type = "error",timeout = (3000),layout = "bottomCenter",queue = "fart",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer=true})
    end
end)

AddEventHandler("emote:display", function()
    displayEmotes()
end)



function reset()
    Wait(5000)
    Delay = false

end


Citizen.CreateThread( function()
    while true do
        Citizen.Wait(0)
            if IsDisabledControlJustReleased( 0, 20 ) then -- INPUT_MULTIPLAYER_INFO (Z)
			local ped = PlayerPedId()
			if DoesEntityExist( ped ) and not IsEntityDead( ped ) and not IsPedInAnyVehicle(PlayerPedId(), true) then
                if IsEntityPlayingAnim(GetPlayerPed(-1), "amb@world_human_push_ups@male@base", "base", 3) then
                    loadAnimDict("amb@world_human_push_ups@male@exit")
                    TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_push_ups@male@exit", "exit", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
                end
                if IsEntityPlayingAnim(GetPlayerPed(-1), "amb@world_human_sit_ups@male@base", "base", 3) then
                    loadAnimDict("amb@world_human_sit_ups@male@exit")
                    TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_sit_ups@male@exit", "exit", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
                end
                if IsPedUsingScenario(GetPlayerPed(-1), "WORLD_HUMAN_SMOKING") then
                    loadAnimDict("amb@world_human_smoking@male@male_a@exit")
                    TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_smoking@male@male_a@exit", "exit", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
                end
                if IsEntityPlayingAnim(GetPlayerPed(-1), "amb@medic@standing@kneel@base", "base", 3) then
                    loadAnimDict("amb@medic@standing@kneel@exit")
                    TaskPlayAnim(GetPlayerPed(-1), "amb@medic@standing@kneel@exit", "exit", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
                end
                if IsEntityPlayingAnim(GetPlayerPed(-1), "amb@code_human_wander_texting@male@base", "static", 3) then
                    loadAnimDict("amb@world_human_stand_mobile@male@text@exit")
                    TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_stand_mobile@male@text@exit", "exit", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
                end
                if IsEntityPlayingAnim(GetPlayerPed(-1), "cellphone@female", "cellphone_call_listen_base", 3) then
                    loadAnimDict("amb@world_human_stand_mobile@male@text@exit")
                    TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_stand_mobile@male@text@exit", "exit", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
                end
                if IsEntityPlayingAnim(GetPlayerPed(-1), "amb@world_human_mobile_film_shocking@male@base", "base", 3) then
                    loadAnimDict("amb@world_human_mobile_film_shocking@male@exit")
                    TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_mobile_film_shocking@male@exit", "exit", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
                end
                if IsEntityPlayingAnim(GetPlayerPed(-1), "amb@code_human_cower_stand@male@idle_a", "idle_a", 3) then
                    loadAnimDict("amb@code_human_cower_stand@male@exit")
                    TaskPlayAnim(GetPlayerPed(-1), "amb@code_human_cower_stand@male@exit", "exit", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
                end
                if IsEntityPlayingAnim(GetPlayerPed(-1), "amb@world_human_binoculars@male@base", "base", 3) then
                    loadAnimDict("amb@world_human_binoculars@male@exit")
                    TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_binoculars@male@@exit", "exit", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
                end
                if IsEntityPlayingAnim(GetPlayerPed(-1), "amb@medic@standing@timeofdeath@base", "base", 3) then
                    loadAnimDict("amb@medic@standing@timeofdeath@exit")
                    TaskPlayAnim(GetPlayerPed(-1), "amb@medic@standing@timeofdeath@exit", "exit", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
                end
                ClearPedTasks(ped)
                DetachEntity(NetToObj(prop_net), 1, 1)
                DeleteEntity(NetToObj(prop_net))
                DeleteObject(NetToObj(prop_net))
                StopScreenEffect(Rampage)
                ResetPedMovementClipset(ped, 0.0)
                --  SetFacialIdleAnimOverride(GetPlayerPed(-1), "mood_normal_1")
                ClearFacialIdleAnimOverride(ped)
                Drink = false
                emotePlaying = false

            end
        end
    end
end)

function Repair()
	local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1),true))
		veh = GetClosestVehicle(x+0.0001,y+0.0001,z+0.0001, 7+0.0001, 0, 4+2+1) -- cars
		SetVehicleDoorOpen(veh, 4, 0, 1)
	Citizen.Wait(1000)
    loadAnimDict("mp_intro_seq@")
    TaskPlayAnim(GetPlayerPed(-1), "mp_intro_seq@", "mp_mech_fix", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
	exports['kaz_progressbar']:startUI(12000, "Reparer")
	Wait(8000)
    loadAnimDict("anim@amb@facility@missle_controlroom@")
    TaskPlayAnim(GetPlayerPed(-1), "anim@amb@facility@missle_controlroom@", "exit", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
	Citizen.Wait(1000)
		SetVehicleDoorShut(veh, 4, 0, 1)
end

function Repair2()
    TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_WELDING")
	exports['kaz_progressbar']:startUI(12000, "Reparer")
	Wait(10000)
	ClearPedTasksImmediately(GetPlayerPed(-1))
end

function Unlock()
    loadAnimDict("amb@world_human_welding@male@base")
    TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_welding@male@base", "base", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
	exports['kaz_progressbar']:startUI(5000, "Picker låsen")
	Wait(2000)
    loadAnimDict("amb@world_human_welding@male@base")
    TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_welding@male@base", "base", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
    

end



function Poop(ped)
    local Player = ped
    local PlayerPed = GetPlayerPed(GetPlayerFromServerId(ped))

    local particleDictionary = "scr_amb_chop"
    local particleName = "ent_anim_dog_poo"
    local animDictionary = 'missfbi3ig_0'
    local animName = 'shit_loop_trev'

    RequestNamedPtfxAsset(particleDictionary)

    while not HasNamedPtfxAssetLoaded(particleDictionary) do
        Citizen.Wait(0)
    end

    RequestAnimDict(animDictionary)

    while not HasAnimDictLoaded(animDictionary) do
        Citizen.Wait(0)
    end

    SetPtfxAssetNextCall(particleDictionary)

    --gets bone on specified ped
    bone = GetPedBoneIndex(PlayerPed, 11816)

    --animation
    TaskPlayAnim(PlayerPed, animDictionary, animName, 8.0, -8.0, -1, 0, 0, false, false, false)

    --2 effets for more shit
    effect = StartParticleFxLoopedOnPedBone(particleName, PlayerPed, 0.0, 0.0, -0.6, 0.0, 0.0, 20.0, bone, 2.0, false, false, false)
    Wait(3500)
    effect2 = StartParticleFxLoopedOnPedBone(particleName, PlayerPed, 0.0, 0.0, -0.6, 0.0, 0.0, 20.0, bone, 2.0, false, false, false)
    Wait(1000)

    StopParticleFxLooped(effect, 0)
    Wait(10)
    StopParticleFxLooped(effect2, 0)
end

function Pee()
    local ped = PlayerPedId()
    if IsPedSittingInAnyVehicle(ped) then
        return false
    end
    local PlayerPed = GetPlayerPed(GetPlayerFromServerId(ped))

    local animDictionary = 'missbigscore1switch_trevor_piss'
    local animName = 'piss_loop'

    local sex = "male"
    if(GetEntityModel(ped) == GetHashKey("mp_f_freemode_01")) then
        sex = 'female'
    end

    RequestAnimDict(animDictionary)

    while not HasAnimDictLoaded(animDictionary) do
        Citizen.Wait(1)
    end
    if sex == 'male' then
        local heading = GetEntityPhysicsHeading(PlayerPed)
        TaskPlayAnim(PlayerPed, animDictionary, animName, 8.0, -8.0, -1, 0, 0, false, false, false)
    elseif sex == 'female' then
        RequestAnimDict('missfbi3ig_0')
        while not HasAnimDictLoaded('missfbi3ig_0') do
            Citizen.Wait(1)
        end
        local heading = GetEntityPhysicsHeading(PlayerPed)
        TaskPlayAnim(PlayerPed, 'missfbi3ig_0', 'shit_loop_trev', 8.0, -8.0, -1, 0, 0, false, false, false)
    end

    TriggerServerEvent("kaz_emotes:particles",PedToNet(PlayerPed),"core","ent_amb_peeing",{default={0.0, 0.0, -0.1, -90.0, 0.0, 20.0,11816},female={0.0, 0.0, -0.55, 0.0, 0.0, 20.0,11816}},"ped",5000)
end



local holdingphone = false
local holdingphone2 = false
local usingphone = false
local phoneModel = "prop_amb_phone"
local phoneanimDict = "amb@code_human_wander_texting@male@base"
local phoneanimName = "static"
local phoneModel2 = "prop_npc_phone_02"
local phoneanimDict2 = "cellphone@"
local phoneanimName2 = "cellphone_call_out"
local phone_net = nil
local phone_net2 = nil

function Phone()
    local ped = GetPlayerPed(-1)
    if not DoesEntityExist(ped) then
        return false
    end
    local veh = GetVehiclePedIsUsing(ped)
    if DoesEntityExist(veh) then
        --TriggerEvent("pNotify:SendNotification", {text = "Du kan ikke bruge emotes i et køretøj!", type = "error", timeout = 2000, layout = "centerLeft"})
        return false
    end
    loadAnimDict("amb@world_human_stand_mobile@male@text@enter")
    local prop = "prop_amb_phone"
    TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_stand_mobile@male@text@enter", "enter", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
    local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
    Citizen.Wait(100)
    local netid = ObjToNet(propspawned)
    prop_net = netid
    AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
    Wait(2000)
    loadAnimDict("amb@code_human_wander_texting@male@base")
    TaskPlayAnim(GetPlayerPed(-1), "amb@code_human_wander_texting@male@base", "static", 8.0, 1.0, -1, 49, 0, 0, 0, 0)

    Drink = true
    emotePlaying = true
end

function PhoneEar()
    local ped = GetPlayerPed(-1)
    if not DoesEntityExist(ped) then
        return false
    end
    local veh = GetVehiclePedIsUsing(ped)
    if DoesEntityExist(veh) then
        --TriggerEvent("pNotify:SendNotification", {text = "Du kan ikke bruge emotes i et køretøj!", type = "error", timeout = 2000, layout = "centerLeft"})
        return false
    end
    loadAnimDict("cellphone@female")

    local prop = "prop_amb_phone"
    TaskPlayAnim(GetPlayerPed(-1), "cellphone@female", "cellphone_call_listen_base", 1.0, 1.0, -1, 49, 0, 0, 0, 0)
    local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
    local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
    Citizen.Wait(100)
    local netid = ObjToNet(propspawned)
    prop_net = netid
    AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
    Drink = true
    emotePlaying = true
end

function Phone33()
    if not holdingphone then
        RequestModel(GetHashKey(phoneModel))
        while not HasModelLoaded(GetHashKey(phoneModel)) do
            Citizen.Wait(100)
        end

        while not HasAnimDictLoaded(phoneanimDict) do
            RequestAnimDict(phoneanimDict)
            Citizen.Wait(100)
        end

        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
        local phonespawned = CreateObject(GetHashKey(phoneModel), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(1000)
        local netid = ObjToNet(phonespawned)
        SetNetworkIdExistsOnAllMachines(netid, true)
        NetworkSetNetworkIdDynamic(netid, true)
        SetNetworkIdCanMigrate(netid, false)
        AttachEntityToEntity(phonespawned, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 1, 0, 1, 0, 1)
        loadAnimDict("amb@code_human_wander_texting@male@base")
        TaskPlayAnim(GetPlayerPed(-1), "amb@code_human_wander_texting@male@base", "static", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
        phone_net = netid
        holdingphone = true
        emotePlaying = true
    else
        ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
        DetachEntity(NetToObj(phone_net), 1, 1)
        DeleteEntity(NetToObj(phone_net))
        phone_net = nil
        holdingphone = false
        usingphone = false
        emotePlaying = false
    end
end


function PhoneEar33()
    if not holdingphone2 then
        RequestModel(GetHashKey(phoneModel2))
        while not HasModelLoaded(GetHashKey(phoneModel2)) do
            Citizen.Wait(100)
        end

        while not HasAnimDictLoaded(phoneanimDict2) do
            RequestAnimDict(phoneanimDict2)
            Citizen.Wait(100)
        end

        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
        local phonespawned = CreateObject(GetHashKey(phoneModel2), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(1000)
        local netid = ObjToNet(phonespawned2)
        SetNetworkIdExistsOnAllMachines(netid, true)
        NetworkSetNetworkIdDynamic(netid, true)
        SetNetworkIdCanMigrate(netid, false)
        AttachEntityToEntity(phonespawned2, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 1, 0, 1, 0, 1)
        loadAnimDict("cellphone@")
        TaskPlayAnim(GetPlayerPed(-1), "cellphone@", "cellphone_call_out", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
        phone_net2 = netid
        holdingphone2 = true
        emotePlaying = true
    else
        ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
        DetachEntity(NetToObj(phone_net2), 1, 1)
        DeleteEntity(NetToObj(phone_net2))
        phone_net2 = nil
        holdingphone2 = false
        usingphone2 = false
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        if holdingphone then
            while not HasAnimDictLoaded(phoneanimDict) do
                RequestAnimDict(phoneanimDict)
                Citizen.Wait(100)
            end

            if not IsEntityPlayingAnim(PlayerPedId(), phoneanimDict, "static", 3) then
                TaskPlayAnim(GetPlayerPed(PlayerId()), 1.0, -1, -1, 50, 0, 0, 0, 0) -- 50 = 32 + 16 + 2
                TaskPlayAnim(GetPlayerPed(PlayerId()), phoneanimDict, "static", 1.0, -1, -1, 50, 0, 0, 0, 0)
            end

            DisablePlayerFiring(PlayerId(), true)
            DisableControlAction(0,25,true) -- disable aim
            DisableControlAction(0, 44,  true) -- INPUT_COVER
            DisableControlAction(0,37,true) -- INPUT_SELECT_WEAPON
            SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey("WEAPON_UNARMED"), true)

            if (IsPedInAnyVehicle(GetPlayerPed(-1), -1) and GetPedVehicleSeat(GetPlayerPed(-1)) == -1) or IsPedCuffed(GetPlayerPed(-1)) or holdingMic then
                ClearPedSecondaryTask(GetPlayerPed(-1))
                DetachEntity(NetToObj(phone_net), 1, 1)
                DeleteEntity(NetToObj(phone_net))
                phone_net = nil
                holdingphone = false
                usingphone = false
            end
        end
    end
end)


function Phone2()
    if not holdingphone then
        RequestModel(GetHashKey(phoneModel))
        while not HasModelLoaded(GetHashKey(phoneModel)) do
            Citizen.Wait(100)
        end
        while not HasAnimDictLoaded(phoneanimDict) do
            RequestAnimDict(phoneanimDict)
            Citizen.Wait(100)
        end
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
        local phonespawned = CreateObject(GetHashKey(phoneModel), plyCoords.x, plyCoords.y, plyCoords.z, true, true, false)
        Citizen.Wait(1000)
        local netid = ObjToNet(phonespawned)
        SetNetworkIdExistsOnAllMachines(netid, true)
        NetworkSetNetworkIdDynamic(netid, true)
        SetNetworkIdCanMigrate(netid, false)
        AttachEntityToEntity(phonespawned, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()), 28422), -0.00, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 1, 0, 1, 0, 1)
        TaskPlayAnim(GetPlayerPed(GetPlayerPed(-1)), 1.0, -1, -1, 50, 0, 0, 0, 0) -- 50 = 32 + 16 + 2
        TaskPlayAnim(GetPlayerPed(GetPlayerPed(-1)), phoneanimDict, phoneanimName, 1.0, -1, -1, 50, 0, 0, 0, 0)
        phone_net = netid
        holdingphone = false
        Drink = true
        emotePlaying = true
    end
end



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        if Drink then

            DisablePlayerFiring(PlayerId(), true)
            DisableControlAction(0,25,true) -- disable aim
            DisableControlAction(0, 44,  true) -- INPUT_COVER
            DisableControlAction(0,37,true) -- INPUT_SELECT_WEAPON
            SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey("WEAPON_UNARMED"), true)

            if (IsPedInAnyVehicle(GetPlayerPed(-1), -1) and GetPedVehicleSeat(GetPlayerPed(-1)) == -1) or IsPedCuffed(GetPlayerPed(-1)) or holdingMic then
                ClearPedSecondaryTask(GetPlayerPed(-1))
                DetachEntity(NetToObj(phone_net), 1, 1)
                DeleteEntity(NetToObj(phone_net))
                phone_net = nil
                holdingphone = false
                usingphone = false
            end
        end
    end
end)

Citizen.CreateThread(function()
    local dict = "anim@mp_player_intupperwave"
    local ped = GetPlayerPed(-1)
    local sitting = IsPedSittingInAnyVehicle(ped)

    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(100)
    end
    local wave = false
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 113) and not IsPedInAnyVehicle(PlayerPedId(), true) and not IsPedSwimming(PlayerPedId(), true) then
            if not wave and not sitting then
                TaskPlayAnim(GetPlayerPed(-1), dict, "idle_a", 8.0, 8.0, -1, 49, 0, false, false, false)
                wave = true
            else
                wave = false
                ClearPedSecondaryTask(GetPlayerPed(-1))
            end
        elseif IsPedInAnyVehicle(PlayerPedId(), true) and wave == true then
            wave = false
            ClearPedSecondaryTask(GetPlayerPed(-1))
        end
        if wave == true then
            DisableControlAction(0, 24, true) -- attack
            DisableControlAction(0, 25, true) -- aim
            DisableControlAction(0, 44, true) -- cover
            DisableControlAction(0, 45, true) -- reload
            DisableControlAction(0, 140, true) -- light attack
            DisableControlAction(0, 141, true) -- heavy attack
            DisableControlAction(0, 142, true) -- alternative attack
            DisablePlayerFiring(GetPlayerPed(-1), true) -- Disable weapon firing
        end
    end
end)

function delProps(ped)
    ClearPedTasks(ped)
    DetachEntity(NetToObj(prop_net), 1, 1)
    DeleteEntity(NetToObj(prop_net))
    DeleteObject(NetToObj(prop_net))
    StopScreenEffect(Rampage)
    ClearFacialIdleAnimOverride(ped)
    Drink = false
    emotePlaying = false
end

-- POLITI PIS --
local holstered = true

-- RESTRICTED PEDS --
-- I've only listed peds that have a remote speaker mic, but any ped listed here will do the animations.
local skins = {
    "s_m_y_cop_01",
    "s_f_y_cop_01",
    "s_m_y_hwaycop_01",
    "s_m_y_sheriff_01",
    "s_f_y_sheriff_01",
    "s_m_y_ranger_01",
    "s_f_y_ranger_01",
}

-- Add/remove weapon hashes here to be added for holster checks.
local weapons = {
    "WEAPON_PISTOL",
    "WEAPON_COMBATPISTOL",
}

-- RADIO ANIMATIONS --

Citizen.CreateThread(function()
    while true do
        Citizen.Wait( 0 )
        local ped = PlayerPedId()

        local weaponHash = GetHashKey("WEAPON_COMBATPISTOL")
        if DoesEntityExist( ped ) and not IsEntityDead( ped ) then
            if not IsPauseMenuActive() then
                loadAnimDict( "random@arrests" )
                if IsControlJustReleased( 0, 19 ) then -- INPUT_CHARACTER_WHEEL (LEFT ALT)
                    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'off', 0.1)
                    ClearPedTasks(ped)
                    --SetEnableHandcuffs(ped, false)
                else
                    if IsControlJustPressed( 0, 19 ) and not IsPlayerFreeAiming(PlayerId()) then -- INPUT_CHARACTER_WHEEL (LEFT ALT)
                        delProps(ped)
                        TriggerServerEvent('InteractSound_SV:PlayOnSource', 'on', 0.1)
                        TaskPlayAnim(ped, "random@arrests", "generic_radio_enter", 8.0, 2.0, -1, 50, 2.0, 0, 0, 0 )
                       -- SetEnableHandcuffs(ped, true)
                    elseif IsControlJustPressed( 0, 19 ) and IsPlayerFreeAiming(PlayerId()) then -- INPUT_CHARACTER_WHEEL (LEFT ALT)
                        delProps(ped)
                        TriggerServerEvent('InteractSound_SV:PlayOnSource', 'on', 0.1)
                        TaskPlayAnim(ped, "random@arrests", "radio_chatter", 8.0, 2.0, -1, 50, 2.0, 0, 0, 0 )
                      --  SetEnableHandcuffs(ped, true)
                    end
                    if IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "random@arrests", "generic_radio_enter", 3) then
                        DisableActions(ped)
                    elseif IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "random@arrests", "radio_chatter", 3) then
                        DisableActions(ped)
                    end
                end
            end
        end
    end
end )

-- HOLD WEAPON HOLSTER ANIMATION --

Citizen.CreateThread( function()
    while true do
        Citizen.Wait(0)
        local ped = PlayerPedId()
        if DoesEntityExist( ped ) and not IsEntityDead( ped ) and not IsPedInAnyVehicle(PlayerPedId(), true) and CheckSkin(ped) then
            DisableControlAction( 0, 20, true ) -- INPUT_MULTIPLAYER_INFO (Z)
            if not IsPauseMenuActive() then
                loadAnimDict( "reaction@intimidation@cop@unarmed" )
                if IsDisabledControlJustReleased( 0, 20 ) then -- INPUT_MULTIPLAYER_INFO (Z)
                    ClearPedTasks(ped)
                    SetEnableHandcuffs(ped, false)
                    SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
                else
                    if IsDisabledControlJustPressed( 0, 20 ) and CheckSkin(ped) then -- INPUT_MULTIPLAYER_INFO (Z)
                        delProps(ped)
                        SetEnableHandcuffs(ped, true)
                        SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
                        TaskPlayAnim(ped, "reaction@intimidation@cop@unarmed", "intro", 8.0, 2.0, -1, 50, 2.0, 0, 0, 0 )
                    end
                    if IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "reaction@intimidation@cop@unarmed", "intro", 3) then
                        DisableActions(ped)
                    end
                end
            end
        end
    end
end )

-- HOLSTER/UNHOLSTER PISTOL --

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local ped = PlayerPedId()
        if DoesEntityExist( ped ) and not IsEntityDead( ped ) and not IsPedInAnyVehicle(PlayerPedId(), true) and CheckSkin(ped) then
            loadAnimDict( "rcmjosh4" )
            loadAnimDict( "weapons@pistol@" )
            if CheckWeapon(ped) then
                if holstered then
                    TaskPlayAnim(ped, "rcmjosh4", "josh_leadout_cop2", 8.0, 2.0, -1, 48, 10, 0, 0, 0 )
                    Citizen.Wait(600)
                    ClearPedTasks(ped)
                    holstered = false
                end
                SetPedComponentVariation(ped, 9, 0, 0, 0)
            elseif not CheckWeapon(ped) then
                if not holstered then
                    TaskPlayAnim(ped, "weapons@pistol@", "aim_2_holster", 8.0, 2.0, -1, 48, 10, 0, 0, 0 )
                    Citizen.Wait(500)
                    ClearPedTasks(ped)
                    holstered = true
                end
                SetPedComponentVariation(ped, 9, 1, 0, 0)
            end
        end
    end
end)

-- DO NOT REMOVE THESE! --

function CheckSkin(ped)
    for i = 1, #skins do
        if GetHashKey(skins[i]) == GetEntityModel(ped) then
            return true
        end
    end
    return false
end

function CheckWeapon(ped)
    for i = 1, #weapons do
        if GetHashKey(weapons[i]) == GetSelectedPedWeapon(ped) then
            return true
        end
    end
    return false
end

function DisableActions(ped)
    DisableControlAction(1, 140, true)
    DisableControlAction(1, 141, true)
    DisableControlAction(1, 142, true)
    DisablePlayerFiring(ped, true) -- Disable weapon firing
end

RegisterNetEvent("kaz_stoffer:ryg")
AddEventHandler("kaz_stoffer:ryg", function() 
		local prop = "p_amb_joint_01"
        loadAnimDict("amb@world_human_smoking_pot@male@idle_a")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_smoking_pot@male@idle_a", "idle_a", 8.0, 1.0, -1, 1, 0, 0, 0, 0)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 0xeb95), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
        Wait(5000)
        loadAnimDict("amb@world_human_smoking_pot@male@base")
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_smoking_pot@male@base", "base", 8.0, 1.0, -1, 1, 0, 0, 0, 0)
end)

RegisterNetEvent("kaz_emotes:makeitrainpayed")
AddEventHandler("kaz_emotes:makeitrainpayed", function() 
		local holdingcash = false
		local cashmodel = "prop_anim_cash_pile_01"
		local cash_net = nil
	if holdingcash == false then
		local player = GetPlayerPed(-1)
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
        local cashmodel = CreateObject(GetHashKey(cashmodel), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        local netid = ObjToNet(cashmodel)
        local ad = "anim@mp_player_intupperraining_cash"
        local pd = "scr_xs_celebration"
        local pn = "scr_xs_money_rain"
        local isRaining = false
        loadAnimDict(ad)
        loadParticleDict(pd)
        RequestModel(GetHashKey(cashmodel))
        TaskPlayAnim( player, ad, "idle_a", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
        AttachEntityToEntity(cashmodel,GetPlayerPed(PlayerId()),GetPedBoneIndex(GetPlayerPed(PlayerId()), 60309),0.0,0.0,0.01,180.0,360.0,70.0,1,1,0,1,0,1)
        cash_net = netid
        holdingcash = true
		--stopcash()

        while holdingcash do
            Wait(0)
            if isRaining == false then
                DisplayHelpText("Tryk ~INPUT_PICKUP~ at smide med penge")
                if IsControlJustPressed(0, 38) then
                    isRaining = true
                    Wait(500)
                    RequestNamedPtfxAsset(pd)
                    HasNamedPtfxAssetLoaded(pd)
                    UseParticleFxAssetNextCall(pd)
                    TriggerServerEvent("kaz:particles",cash_net,pd,pn,{default={0.0, 0.0, -0.09, -80.0, 0.0, 0.0, 1.0}},"entity",15000)
                    Wait(16000)
                    isRaining = false
					stopcash()
					holdingcash = false
					local netid = ObjToNet(cashmodel)
					penis = netid
					local ped = GetPlayerPed(-1)
					ClearPedTasks(ped)
					DetachEntity(NetToObj(penis), 1, 1)
					DeleteEntity(NetToObj(penis))
					DeleteObject(NetToObj(penis))
					StopScreenEffect(Rampage)
					ClearFacialIdleAnimOverride(ped)
					Drink = false
					emotePlaying = false
                end
            end
        end
	end
end)

RegisterNetEvent("kaz_stoffer:ryg2")
AddEventHandler("kaz_stoffer:ryg2", function() 
		loadAnimDict("amb@world_human_smoking@male@male_a@enter")
        local prop = "ng_proc_cigarette01a"
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_smoking@male@male_a@enter", "enter", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -4.0)
        local propspawned = CreateObject(GetHashKey(prop), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(100)
        local netid = ObjToNet(propspawned)
        prop_net = netid
        AttachEntityToEntity(propspawned, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 0x6f06), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 1)
        Drink = true
        Wait(13000)
        TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_SMOKING")
        emotePlaying = true
end)

RegisterNetEvent('kaz:startparticles')
AddEventHandler('kaz:startparticles', function(entity,dict,parname,settings,type,stoptime)
    RequestNamedPtfxAsset(dict)
    while not HasNamedPtfxAssetLoaded(dict) do
        Citizen.Wait(1)
    end
    SetPtfxAssetNextCall(dict)
    local effect = ""
    if type == "ped" then
        local ped = NetToPed(entity)
        local xoff,yoff,zoff,xrot,yrot,zrot,bone = ""
        if settings.female ~= nil and GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
            xoff,yoff,zoff,xrot,yrot,zrot,bone = table.unpack(settings.female)
        else
            xoff,yoff,zoff,xrot,yrot,zrot,bone = table.unpack(settings.default)
        end
        bone = GetPedBoneIndex(ped, bone)
        effect = StartParticleFxLoopedOnPedBone(parname, ped, xoff,yoff,zoff,xrot,yrot,zrot,bone, 2.0, false, false, false)
    elseif type == "entity" then
        local entity = NetToObj(entity)
        local xoff,yoff,zoff,xrot,yrot,zrot,whatever = table.unpack(settings.default)
        effect = StartParticleFxLoopedOnEntity(parname, entity, xoff,yoff,zoff,xrot,yrot,zrot,whatever, false, false, false)
    end
    Citizen.Wait(stoptime)
    StopParticleFxLooped(effect, 0)
end)

function loadParticleDict(dict)
    RequestNamedPtfxAsset(dict)
    while not HasNamedPtfxAssetLoaded(dict) do
        Citizen.Wait(5)
    end
end

function DisplayHelpText(str)
    SetTextComponentFormat("STRING")
    AddTextComponentString(str)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function stopcash()
	DetachEntity(NetToObj(cash_net), 1, 1)
        DeleteEntity(NetToObj(cash_net))
        Wait(750)
        ClearPedSecondaryTask(GetPlayerPed(-1))
        cash_net = nil
        holdingcash = false
        StopParticleFxLooped("scr_xs_money_rain",0)
end

RegisterNetEvent('kaz_emotes:startparticles')
AddEventHandler('kaz_emotes:startparticles', function(entity,dict,parname,settings,type,stoptime)
    RequestNamedPtfxAsset(dict)
    while not HasNamedPtfxAssetLoaded(dict) do
        Citizen.Wait(1)
    end
    SetPtfxAssetNextCall(dict)
    local effect = ""
    if type == "ped" then
        local ped = NetToPed(entity)
        local xoff,yoff,zoff,xrot,yrot,zrot,bone = ""
        if settings.female ~= nil and GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
            xoff,yoff,zoff,xrot,yrot,zrot,bone = table.unpack(settings.female)
        else
            xoff,yoff,zoff,xrot,yrot,zrot,bone = table.unpack(settings.default)
        end
        bone = GetPedBoneIndex(ped, bone)
        effect = StartParticleFxLoopedOnPedBone(parname, ped, xoff,yoff,zoff,xrot,yrot,zrot,bone, 2.0, false, false, false)
    elseif type == "entity" then
        local entity = NetToObj(entity)
        local xoff,yoff,zoff,xrot,yrot,zrot,whatever = table.unpack(settings.default)
        effect = StartParticleFxLoopedOnEntity(parname, entity, xoff,yoff,zoff,xrot,yrot,zrot,whatever, false, false, false)
    end
    Citizen.Wait(stoptime)
    StopParticleFxLooped(effect, 0)
end)
