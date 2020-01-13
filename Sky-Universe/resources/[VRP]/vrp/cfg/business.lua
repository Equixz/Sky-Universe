
local cfg = {}

-- minimum capital to open a business
cfg.minimum_capital = 1

-- capital transfer reset interval in minutes
-- default: reset every 24h
cfg.transfer_reset_interval = 24*30

-- commerce chamber {blipid,blipcolor}
cfg.blip = {431,70}

-- positions of commerce chambers
cfg.commerce_chambers = {
	{169.03646850586,-567.33532714844,43.872875213623}
}

return cfg
