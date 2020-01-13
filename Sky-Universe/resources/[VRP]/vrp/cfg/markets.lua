
local cfg = {}

-- define market types like garages and weapons
-- _config: blipid, blipcolor, permissions (optional, only users with the permission will have access to the market)

cfg.market_types = {

	["Butik"] = {
		_config = {blipid=52, blipcolor=2},
		["whisky"] = 150,
		["water"] = 2,
		["coffee"] = 4,
		["gocagola"] = 12,
		["redgull"] = 100,
		["donut"] = 2,
		["kebab"] = 20,
		["kuglepen"] = 120,
		["lockpicking_kit"] = 1000,
		["Kikkert"] = 500,
		["strip"] = 100,
		["pose"] = 100,
		["jointpapir"] = 10,
		["boombox"] = 50000,
		["lakort"] = 10,
		["wbody|GADGET_PARACHUTE"] = 25000,
		["forlovelsesring"] = 100000,
		["vielsesring"] = 250000, 
		["rosekaz"] = 1000,
		["lighter"] = 50,	   
		
	},
	["PolitiButik"] = {
		_config = {blipid=52, blipcolor=2},
		["water"] = 2,
		["coffee"] = 4,
		["gocagola"] = 12,
		["redgull"] = 100,
		["donut"] = 2,
		["kebab"] = 20,
		
	},
		["Våbenbutik"] = {
		_config = {blipid=0, blipcolor=0},
		["PistolMK2"] = 4000000,
		["DesertEagle"] = 7000000,
		["Smith&Wesson"] = 3500000,
	},
	["Natklubben"] = {
		_config = {blipid=52, blipcolor=2},
		["margarita"] = 200,
		["white"] = 150,
		["pina"] = 200,
		["mojito"] = 200,
		["strawberry"] = 200,
		["teqshot"] = 100,
		["whisky"] = 150,	
	},
		["Våbenbutik"] = {
		_config = {blipid=0, blipcolor=0},
		["PistolMK2"] = 4000000,
		["DesertEagle"] = 7000000,
		["Smith&Wesson"] = 3500000,
	},
	["BlackMarket"] = {
		_config = {blipid=51, blipcolor=2},
		["wbody|WEAPON_PISTOL_MK2"] = 1500000,
		["wbody|WEAPON_REVOLVER"] = 1500000,
		["wbody|WEAPON_PISTOL50"] = 2000000,
		["wammo|WEAPON_PISTOL_MK2"] = 6000,
		["wammo|WEAPON_REVOLVER"] = 6000,
		["wammo|WEAPON_PISTOL50"] = 12000,
	},
	["Apotek"] = {
		_config = {blipid=51, blipcolor=2},
		["firstaidkit"] = 17500
	},
	["Dykkerudstyr"] = {
		_config = {blipid=366, blipcolor=40},
		["dykkerdragt"] = 55000,
	},
	["Telefonbutik"] = {
		_config = {blipid=459, blipcolor=13},
		["iphone"] = 10000,
		["samsung"] = 7500,
		["oneplus"] = 5000,
	}, 
	["Ambulanceredder"] = {
		_config = {blipid=51, blipcolor=68, permissions={"emergency.market"}},
		["medkit"] = 0,
		["bandage"] = 0,
		["dokument"] = 100000,
		["water"] = 0,
		["sandwich"] = 0
	},
	["Værktøj"] = {
		_config = {blipid=0, blipcolor=0, permissions={"repair.market"}},
		["repairkit"] = 50,
		["lockpicking_kit"] = 50,
		["screwdriver"] = 50,
		
		
	},
		["Nøgler"] = {
		_config = {blipid=402, blipcolor=47, permissions={"cut.market"}},
		["key_PD"] = 100,
		["key_HP"] = 100,
		["key_RS"] = 100,
		["key_SL"] = 100,
		["key_MIC"] = 100,
		["key_DC"] = 100,
		["key_FR"] = 100,
		["key_TRICK"] = 100,
		["key_LES"] = 100, 
		["key_FL"] = 100, 
		["key_TR"] = 100, 
		["key_MEK"] = 100,
		["key_EJE"] = 100,
		["key_BLANCA"] = 100,
		["key_ADVO"] = 100,
		["key_BIL"] = 100, 
		["key_TEST"] = 100, 
		["key_BH"] = 100, 
		["key_ANO"] = 100, 
		["key_SKU"] = 100, 
		["key_KOK"] = 100, 
		["key_KAZOON"] = 100,
		["key_HA"] = 100,
	},
		["StatensCut"] = {
		_config = {blipid=402, blipcolor=47, permissions={"cut.market"}},
		["10k"] = 10000,
		["25k"] = 25000,
		["50k"] = 50000, 
		["100k"] = 100000, 
		["250k"] = 250000, 
		["500k"] = 500000,
		["1mil"] = 1000000,
		
	},
	["Bar"] = { 
		_config = {blipid=0, blipcolor=0},
		["pina"] = 200,
		["mojito"] = 200,
		["teqshot"] = 100,
		["gocagola"] = 12,
		["redgull"] = 12,		
	},
	["Gunnars Køkken"] = { 
		_config = {blipid=0, blipcolor=0},
		["vand2"] = 0,
		["juicebrik"] = 0,
		["budding"] = 0,
		["mos"] = 0,
	},
	["Skraldesække"] = {
		_config = {blipid=402, blipcolor=47, permissions={"skraldemand.market"}},
		["skraldesæk"] = 0
	},
	["Pizzamand"] = {
		_config = {blipid=0, blipcolor=0},
		["pizza"] = 100,
		["durum"] = 80,
		["burger"] = 50,
		["gocagola"] = 25,
		
	},
		["Kaspers Døgnkiosk"] = {
		_config = {blipid=52, blipcolor=3, permissions={"kasper.kiosk"}},
		["pillpill"] = 7500,
	},
	["PolitiTilbehør"] = {
		_config = {blipid=0, blipcolor=0},
		["Kikkert"] = 500,
		["combatpistolflash"] = 1000,
	},
}



-- list of markets {type,x,y,z,hidden}
cfg.markets = {
	{"Butik",-47.522762298584,-1756.85717773438,29.4210109710693,false},
	{"Butik",25.7454013824463,-1345.26232910156,29.4970207214355,false}, 
	{"Butik",1135.57678222656,-981.78125,46.4157981872559,false}, 
	{"Butik",1163.53820800781,-323.541320800781,69.2050552368164,false}, 
	{"Butik",374.190032958984,327.506713867188,103.566368103027,false}, 
	{"Butik",2555.35766601563,382.16845703125,108.622947692871,false}, 
	{"Butik",2676.76733398438,3281.57788085938,55.2411231994629,false}, 
	{"Butik",1960.50793457031,3741.84008789063,32.3437385559082,false},
	{"Butik",1393.23828125,3605.171875,34.9809303283691,true}, 
	{"Gunnars Køkken",1628.9061279297,2543.6860351563,45.564865112305,true}, 
	{"Butik",1166.18151855469,2709.35327148438,38.15771484375,false}, 
	{"Butik",547.987609863281,2669.7568359375,42.1565132141113,false}, 
	{"Butik",1698.30737304688,4924.37939453125,42.0636749267578,false}, 
	{"Butik",1729.54443359375,6415.76513671875,35.0372200012207,false}, 
	{"Butik",-3243.9013671875,1001.40405273438,12.8307056427002,false}, 
	{"Butik",-2967.8818359375,390.78662109375,15.0433149337769,false}, 
	{"Butik",-3041.17456054688,585.166198730469,7.90893363952637,false}, 
	{"Butik",-1820.55725097656,792.770568847656,138.113250732422,false}, 
	{"Butik",-1486.76574707031,-379.553985595703,40.163387298584,false}, 
	{"Butik",-707.408996582031,-913.681701660156,19.2155857086182,false},
	{"Telefonbutik",66.879417419434,-1467.9372558594,29.291164398193,false}, 
	{"Telefonbutik",392.72326660156,-833.24810791016,29.291688919067,false}, 
	{"Skraldesække",-429.42758178711,-1727.9305419922,19.783836364746,false},
	{"Bar",127.10346984863,-1284.2747802734,29.280544281006,true},
	{"Bar",-559.93737792969,286.55841064453,82.176445007324,true},
	{"Bar",-1393.2857666016,-606.36651611328,30.319547653198,true},
	{"Bar",-1611.1088867188,-3018.9523925781,-75.205032348633,true},
	{"Natklubben",-1584.7628173828,-3012.4934082031,-76.004959106445,true},
	{"Natklubben",-1577.5975341797,-3016.7875976563,-79.005928039551,true},
	{"Pizzashop",287.56735229492,-962.91613769531,29.418626785278,true},
	{"Ambulanceredder",321.92846679688,-568.80688476563,43.317348480225,true},
	{"PolitiButik",436.70217895508,-986.59625244141,30.68967628479,true},	
	{"Bar",988.75927734375,-94.130187988281,74.845024108887,true},	
	{"Butik",-208.18330383301,-1341.5739746094,34.894371032715,true},
	{"PolitiTilbehør",450.24826049805,-990.54711914063,30.689315795898,true},
	{"Butik",1768.5421142578,3333.9858398438,41.438522338867,true},
}

return cfg
