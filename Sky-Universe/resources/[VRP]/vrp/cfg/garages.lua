local cfg = {}
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is an associated list of veh_name/veh_definition 
-- they need a _config property to define the blip and the vehicle type for the garage (each vtype allow one vehicle to be spawned at a time, the default vtype is "default")
-- this is used to let the player spawn a boat AND a car at the same time for example, and only despawn it in the correct garage
-- _config: vtype, blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.rent_factor = 0.1 -- 10% of the original price if a rent
cfg.sell_factor = 0.25 -- sell for 75% of the original price

cfg.garage_types = {

["Politi"] = {
		_config = {vtype="default",blipid=56,blipcolor=49,permissions={"police.vehicle"}},
		["PO_BB2008DK"] = {"Bravado Buffalo (2008)",0, ""},
		["POMC_HAK2018DK"] = {"Hakucho (2018)",0, ""},
		["PO_UOXS2008DK"] = {"Ubermacht Oracle XS (2008)",0, ""},
		["POBUS_VPB2008DK"] = {"Vapid Prison Bus (2008)",0, ""},
		["POCIV_BB2018"] = {"Bravado Buffalo (Civil)",0, ""},
		["POCIV_KS2018"] = {"Karin Sultan (Civil)",0, ""},
		["POCIV_UOXS2018U"] = {"Ubermacht Oracle (Civil)",0, ""},
		["AKS_LB2018DK"] = {"Lenco Bearcat (2018)",0, ""},
		["POC_SHMB2015DK"] = {"Scorcher Hardtail (2015)",0, ""},
		["POO_BB2008DK"] = {"Bravado Bison (2008)",0, ""},
		["POCIV_SV2008"] = {"Speedo Van (2008)",0, ""},
		
	},
	["Ambulanceredder"] = {
		_config = {vtype="default",blipid=50,blipcolor=3,permissions={"emergency.vehicle"}},
		["AMB_VSA2008DK"] = {"Vapid Sadler (2008)",0, ""},
		["AMB_VS2008DK"] = {"Vapid Speedo (2008)",0, ""},
		["LG_DG2008DK"] = {"Declasse Granger (2008)",0, ""},
	},
	["Postbud"] = {
		_config = {vtype="default",blipid=50,blipcolor=3,permissions={"delivery.gopostal"}},
		["speedo"] = {"Postbil",0, ""}
	},
	["Helikopter"] = {
		_config = {vtype="default",blipid=50,blipcolor=3,permissions={"helikopter.vehicle"}},
		["frogger"] = {"Nyhedshelikopter",0, ""},
		["buzzard2"] = {"Buzzard",0, ""}
	},
	["Taxi"] = {
		_config = {vtype="default",blipid=50,blipcolor=81,permissions={"taxi.vehicle"}},
		["TAXI_DM2008"] = {"Declasse Merit (2008)",0, ""},
		["TAXI_VS2008"] = {"Vapid Stanier (2008)",0, ""},
	},
	["Udbringer"] = {
		_config = {vtype="default",blipid=226,blipcolor=31,permissions={"delivery.vehicle"}},
		["faggio2"] = {"Scooter",0, ""}
	},
	["Mekaniker"] = {
		_config = {vtype="default",blipid=50,blipcolor=31,permissions={"repair.vehicle"}},
		["MSA_MTLFB2013"] = {"MTL Flatbed (2013)",0, ""},
		["MSA_DG2008"] = {"Declasse Granger (2008)",0, ""},
	},
	["Lastbil garage"] = {
		_config = {vtype="default",blipid=67,blipcolor=4,permissions={"trucker.vehicle"}},
		["phantom"] = {"Phantom",0, ""},
		["packer"] = {"Packer",0, ""},
		["phantom3"] = {"Phantom High",0, ""}
	},
	["Pengetransport"] = {
		_config = {vtype="default",blipid=67,blipcolor=4,permissions={"bankdriver.vehicle"}},
		["stockade"] = {"Pengetransport",0, ""}
	},
	["Fisker"] = {
		_config = {vtype="default",blipid=371,blipcolor=3,permissions={"fisher.vehicle"}},
		["suntrap"] = {"Fiskerbåd",0, ""}
	},
    ["Skraldemand"] = {
		_config = {vtype="default",blipid=318,blipcolor=81,permissions={"skraldemand.vehicle"}},
		["trash"] = {"Skraldebil",0, ""}
	},
	["Politihelikopter"] = {
		_config = {vtype="default",blipid=43,blipcolor=26,permissions={"police.vehicle"}},
		["EAS350EP"] = {"Politi Helikopter",0, ""},
	},
	["Politi og EMS båd"] = {
		_config = {vtype="default",blipid=455,blipcolor=26,permissions={"police.vehicle"}},
		["predator"] = {"Politibåd",0, ""}
	},
	["Politi og EMS både"] = {
		_config = {vtype="default",blipid=455,blipcolor=26,permissions={"emergency.vehicle"}},
		["ambuboat"] = {"EMS-Jobbåd",0, ""}
	},
	["Minelastbil"] = {
		_config = {vtype="default",blipid=477,blipcolor=4,permissions={"mining.vehicle"}},
		["rubble"] = {"Minelastbil 1000KG",0, ""}
	},
	["EMS-Jobhelikopter"] = {
		_config  = {vtype="default",blipid=379,blipcolor=26,permissions={"emergency.vehicle"}},
		["EAS350EA"] = {"Læge Helikopter",0, ""},
	},  
	["Savværk"] = {
		_config  = {vtype="default",blipid=477,blipcolor=26,permissions={"tree.vehicle"}},
		["mule"] = {"Lastbil",0, ""}
	}, 
	["Advokat"] = {
		_config = {vtype="default",blipid=0,blipcolor=0,permissions={"advokat.vehicle"}},
		["wraith"] = {"Advokatbil",0, ""}
	},	
	["Psykolog"] = {
		_config = {vtype="default",blipid=0,blipcolor=0,permissions={"psykolog.vehicle"}},
		["ballsdeep"] = {"Psykologbil",0, ""}
	},
	["Pilot"] = {
		_config = {vtype="default",blipid=0,blipcolor=0,permissions={"pilot.vehicle"}},
		["Mammatus"] = {"mammatus",100, ""},
		["Dodo"] = {"dodo",100, ""},
		["Velum"] = {"velum",100, ""},
		["Cuban 800"] = {"cuban800",100, ""},
		["Shamal"] = {"shamal",100, ""},
		["Miljet"] = {"miljet",100, ""},
	},
	["BådGarage"] = {
		_config  = {vtype="default",blipid=455,blipcolor=11},
		["seashark"] = {"Vandscooter",95000, ""},
		["seashark2"] = {"Vandscooter 2",95000, ""},
		["seashark3"] = {"Vandscooter 3",95000, ""},
		["toro"] = {"Toro",400000, ""},
		["toro2"] = {"Toro 2",400000, ""},
		["tropic"] = {"Tropic",185000, ""},
		["squalo"] = {"Squalo",160000, ""},
		["speeder"] = {"Speeder",425000, ""},
		["speeder2"] = {"Speeder 2",425000, ""},
		["jetmax"] = {"Jetmax",325000, ""},
		["dinghy"] = {"Dinghy",215000, ""},
		["dinghy2"] = {"Dinghy 2",215000, ""},
		["dinghy3"] = {"Dinghy 3",215000, ""},
		["dinghy4"] = {"Dinghy 4",215000, ""},
		["marquis"] = {"Marquis",1000000, ""},
	}
}

-- {garage_type,x,y,z,hidden,larger}
cfg.garages = {
	{"Minelastbil",2678.5417480469,2844.7697753906,39.969902038574,false,false},
	{"Taxi",453.74609375,-1966.2294921875,22.962833404541,false,false},
	{"Politi og EMS båd",14.667664527893,-2812.0148925781,0.78065972685814,true,false},
	{"Politi og EMS båd",3855.5546875,4456.0424804688,-0.39966198801994,true,false},
	{"Politi og EMS båd",1732.5660400391,3987.9177246094,29.230627059937,true,false},
	{"Politi og EMS både",14.667664527893,-2812.0148925781,0.78065972685814,true,false},
	{"Politi og EMS både",3855.5546875,4456.0424804688,-0.39966198801994,true,false},
	{"Politi og EMS både",1732.5660400391,3987.9177246094,29.230627059937,true,false},
	{"BådGarage",-1787.3944091797,-1236.5512695313,0.88065972685814,false,true},
	{"BådGarage",1288.5843505859,4227.2446289063,31.054125213623,false,true},
	{"BådGarage",-844.21350097656,-1372.3095703125,-0.47438749670982,false,true},
	{"BådGarage",-1602.2725830078,5260.0571289063,-0.4744359254837,false,true},  	
	{"Politi",448.804, -1020.32, 28.6669,true,false},
	{"Politi",-474.33676147461,6025.6879882813,31.640551376343,true,false}, 
	{"Politi",1869.7581787109,3692.9592285156,33.625911712646,true,false}, 
	{"Politi",274.1555480957,-329.81622314453,45.223053741455,true,false}, 
	{"Politihelikopter",449.43023681641,-981.28009033203,43.691646575928,true,false}, 
	{"Politihelikopter",-474.74252319336,5989.5048828125,31.336685180664,true,false},
	{"Politihelikopter",1811.0076904297,3723.6652832031,34.02512512207,true,false}, 	
	{"Mekaniker",1121.2768554688,-784.53729248047,57.709400177002,true,false},
	{"Ambulanceredder",288.13388061523,-612.43804931641,43.401271820068,true,false}, -- Pillbox upper
	{"EMS-Jobhelikopter",351.79309082031,-588.16168212891,74.165634155273,true,false},
	{"Ambulanceredder",343.2126159668,-556.81359863281,28.743776321411,true,false}, -- Pillbox down
	{"Ambulanceredder",1843.2799072266,3704.1022949219,33.720157623291,true,false}, -- Sandy 
	{"Ambulanceredder",-241.66123962402,6336.193359375,32.425018310547,true,false}, -- Palito
	{"Mekaniker",1771.1879882813,3343.3752441406,41.083545684814,true,false},
	{"Mekaniker",498.95678710938,-1333.8204345703,29.32986831665,true,false},
	{"Skraldemand",-459.29528808594,-1717.1359863281,18.639282226563,false,false},
	{"Lastbil garage",8.2786722183228,-2499.0766601563,6.0067801475525,false,false},
	{"Pilot",-1248.6307373047,-2906.5871582031,13.944550514221,false,false},
	{"Savværk",-598.49536132813,5298.60546875,70.214500427246,false,false}, 
	{"Mekaniker",-189.31477355957,-1290.7404785156,31.295959472656,true,false},
}

return cfg
