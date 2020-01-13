local cfg = {}

-- define customization parts
local parts = {
	-- ["Ansigt"] = 0,
	-- ["Hår"] = 2,
	["Masker"] = 1,
	["Hænder/Arme"] = 3,
	["Bukser"] = 4,
	["Tasker"] = 5,
	["Sko"] = 6,
	["Hals"] = 7,
	["Undertrøje"] = 8,
	["Veste"] = 9,
	-- ["Mærker"] = 10,
	["Overtøj"] = 11,
	["Hatte"] = "p0",
	["Briller"] = "p1",
	["Ører"] = "p2",
	["Ure"] = "p6"
}
local parts_ped = {
	["Ansigt"] = 0,
	["Hår"] = 2,
	["Masker"] = 1,
	["Hænder/Arme"] = 3,
	["Bukser"] = 4,
	["Tasker"] = 5,
	["Sko"] = 6,
	["Hals"] = 7,
	["Undertrøje"] = 8,
	["Veste"] = 9,
    ["Mærker"] = 10,
	["Overtøj"] = 11,
	["Hatte"] = "p0",
	["Briller"] = "p1",
	["Ører"] = "p2",
	["Ure"] = "p6"
}


-- changes prices (any change to the character parts add amount to the total price)
cfg.drawable_change_price = 20
cfg.texture_change_price = 5

-- skinshops list {parts,x,y,z,hidden}
cfg.skinshops = {
}

return cfg