cfg = {}
cfg.seconds = 500 -- sekunder at røve i. 
cfg.cooldown = 2400 -- tid mellem røverierne.


cfg.pengereward = 125000 -- MINIMUMS BELØB PR CIRKEL (SE BORT FRA DEM UNDER CFG.BANKS)
cfg.pengerewardhoj = 200000 -- MAXIMUMS BELØB PR CIRKEL

cfg.mm = { ['x'] = 705.86846923828, ['y'] = -964.4150390625, ['z'] = 29.408239364624 } -- MASTERMIND KORDINATER
cfg.svej = { ['x'] = 2608.6884765625, ['y'] = 2806.0092773438, ['z'] = 33.725120544434 } -- SKÆRE BRÆNDER STJÆLNINGS KORDINATER

cfg.banks = { -- liste af bankene
	["Midtby Bank"] = {
		bankname = "Midtby Bank", -- Sørg for der er forskel på disse ift andre banker
		circle1 = { ['x'] = 148.9228, ['y'] = -1045.009, ['z'] = 28.346313476563 },
		circle2 = { ['x'] = 150.7907, ['y'] = -1046.51, ['z'] = 28.346313476563 },
		circle3 = { ['x'] = 147.4762, ['y'] = -1047.899, ['z'] = 28.346313476563 },
		circle4 = { ['x'] = 150.4864, ['y'] = -1048.995, ['z'] = 28.346313476563 },
		circle5 = { ['x'] = 148.1786, ['y'] = -1050.341, ['z'] = 28.346313476563 },
		circle6 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		circle7 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		amount = 5,
		banknr = 1,
		terminal = {['x'] = 147.2554, ['y'] = -1046.259, ['z'] = 29.59504-0.2},
		doortype = 2121050683,
		heading1 = 149,
		heading2 = 249
	},
	["Nordea Bank"] = {
		bankname = "Nordea Bank",
		circle1 = { ['x'] = -2955.016, ['y'] = 482.8115, ['z'] = 14.675312995911 },
		circle2 = { ['x'] = -2954.879, ['y'] = 486.0173, ['z'] = 14.675312995911 },
		circle3 = { ['x'] = -2952.887, ['y'] = 484.3164, ['z'] = 14.675312995911 },
		circle4 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		circle5 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		circle6 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		circle7 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		amount = 3,
		banknr = 2,
		terminal = {['x'] = -2956.5434570313, ['y'] = 481.62408447266, ['z'] = 15.697090148926},
		doortype = -63539571,
		heading1 = 256,
		heading2 = 357
	},
	["Jyske Bank"] = {
		bankname = "Jyske Bank (Paleto Bay)",
		circle1 = { ['x'] = -103.759, ['y'] = 6475.26, ['z'] = 30.650075912476 },
		circle2 = { ['x'] = -106.2368, ['y'] = 6477.744, ['z'] = 30.650075912476 },
		circle3 = { ['x'] = -103.5312, ['y'] = 6477.922, ['z'] = 30.650075912476 },
		circle4 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		circle5 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		circle6 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		circle7 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		amount = 3,
		banknr = 3,
		terminal = {['x'] = -105.4440536499, ['y'] = 6471.833984375, ['z'] = 31.626703262329},
		doortype = 1622278560,
		heading1 = 145,
		heading2 = 46
	},
	["Sydbank"] = {
		bankname = "Sydbank (Rockford Hills - Vestlig Los Santos)",
		circle1 = { ['x'] = -1210.209, ['y'] = -334.3447, ['z'] = 36.759262084961 },
		circle2 = { ['x'] = -1209.059, ['y'] = -337.3741, ['z'] = 36.759262084961 },
		circle3 = { ['x'] = -1206.191, ['y'] = -335.9254, ['z'] = 36.759262084961 },
		circle4 = { ['x'] = -1206.694, ['y'] = -338.4777, ['z'] = 36.759262084961 },
		circle5 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		circle6 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		circle7 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		amount = 4,
		banknr = 4,
		terminal = {['x'] = -1210.9654541016, ['y'] = -336.3642578125, ['z'] = 37.781024932861},
		doortype = 2121050683,
		heading1 = 195,
		heading2 = 296
	},
	["Alm. Brand Bank"] = {
		bankname = "Alm. Brand Bank (Alta - Nord for LS Midtby)",
		circle1 = { ['x'] = 313.2495, ['y'] = -283.3621, ['z'] = 53.143013000488 },
		circle2 = { ['x'] = 315.2467, ['y'] = -284.5289, ['z'] = 53.143013000488 },
		circle3 = { ['x'] = 311.8142, ['y'] = -286.2646, ['z'] = 53.143013000488 },
		circle4 = { ['x'] = 314.8209, ['y'] = -287.3687, ['z'] = 53.143013000488 },
		circle5 = { ['x'] = 312.5994, ['y'] = -288.7427, ['z'] = 53.143013000488 },
		circle6 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		circle7 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		amount = 5,
		banknr = 5,
		terminal = {['x'] = 310.97958374023, ['y'] = -284.09292602539, ['z'] = 54.164764404297},
		doortype = 2121050683,
		heading1 = 148,
		heading2 = 249
	},
	["Danmarks Nationalbank"] = {
		bankname = "Danmarks Nationalbank (Downtown Vinewood)",
		circle1 = { ['x'] = 257.1299, ['y'] = 215.2391, ['z'] = 100.68346405029 },
		circle2 = { ['x'] = 258.0995, ['y'] = 217.901, ['z'] = 100.68346405029 },
		circle3 = { ['x'] = 259.8137, ['y'] = 214.2614, ['z'] = 100.68346405029 },
		circle4 = { ['x'] = 260.7883, ['y'] = 216.9369, ['z'] = 100.68346405029 },
		circle5 = { ['x'] = 262.3266, ['y'] = 213.346, ['z'] = 100.68346405029 },
		circle6 = { ['x'] = 263.2989, ['y'] = 216.0223, ['z'] = 100.68346405029 },
		circle7 = { ['x'] = 265.502, ['y'] = 213.7191, ['z'] = 100.68346405029 },
		amount = 7,
		banknr = 6,
		terminal = {['x'] = 252.8626, ['y'] = 228.5469, ['z'] = 102.0988-0.4},
		doortype = 961976194,
		heading1 = 5,
		heading2 = 160
	},
	["Sandy Bank"] = {
		bankname = "Sandy Bank",
		circle1 = { ['x'] = 1174.496, ['y'] = 2711.146, ['z'] = 37.097747802734 },
		circle2 = { ['x'] = 1172.207, ['y'] = 2711.552, ['z'] = 37.097747802734 },
		circle3 = { ['x'] = 1174.845, ['y'] = 2714.378, ['z'] = 37.097747802734 },
		circle4 = { ['x'] = 1171.635, ['y'] = 2714.384, ['z'] = 37.097747802734 },
		circle5 = { ['x'] = 1173.221, ['y'] = 2716.423, ['z'] = 37.097747802734 },
		circle6 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		circle7 = { ['x'] = 0, ['y'] = 0, ['z'] = 0 },
		amount = 5,
		banknr = 7,
		terminal = {['x'] = 1176.044, ['y'] = 2712.691, ['z'] = 38.097747802734},
		doortype = 2121050683,
		heading1 = 5,
		heading2 = 90
	}
}





