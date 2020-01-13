local cfg = {}

-- size of the sms history
cfg.sms_history = 100

-- maximum size of an sms
cfg.sms_size = 750

-- duration of a sms position marker (in seconds)
cfg.smspos_duration = 300

-- define phone services
-- blipid, blipcolor (customize alert blip)
-- alert_time (alert blip display duration in seconds)
-- alert_permission (permission required to receive the alert)
-- alert_notify (notification received when an alert is sent)
-- notify (notification when sending an alert)
cfg.services = {
	["Politi"] = {
		blipid = 304,
		blipcolor = 38,
		alert_time = 300, -- 5 minutes
		alert_permission = "police.service",
		alert_notify = "Alarmcentral: ",
		notify = "Du ringede til politet.",
		answer_notify = "Politiet er på vej."
	},
	["EMS-Job"] = {
		blipid = 153,
		blipcolor = 1,
		alert_time = 300, -- 5 minutes
		alert_permission = "emergency.service",
		alert_notify = "Alarmcentral: ",
		notify = "Du tilkaldte en ambulance.",
		answer_notify = "En ambulance er på vej."
	},
	["Taxi"] = {
		blipid = 198,
		blipcolor = 5,
		alert_time = 300,
		alert_permission = "taxi.service",
		alert_notify = "Taxicentral: ",
		notify = "Du tilkaldte en Taxi.",
		answer_notify = "En Taxi er på vej."
	},
	["Mekaniker-Job"] = {
		blipid = 446,
		blipcolor = 5,
		alert_time = 300,
		alert_permission = "repair.service",
		alert_notify = "Værkføre: ",
		notify = "Du tilkaldte en Mekaniker-Job.",
		answer_notify = "En Mekaniker-Job er på vej."
	},
	["Advokat"] = {
		blipid = 133,
		blipcolor = 16,
		alert_time = 600,
		alert_permission = "lawyer.service",
		alert_notify = "Advokatkontor: ",
		notify = "Du tilkaldte en advokat.",
		answer_notify = "En advokat er på vej."
	},
	["Journalist"] = {
		blipid = 184,
		blipcolor = 45,
		alert_time = 600,
		alert_permission = "journalist.service",
		alert_notify = "Journalist: ",
		notify = "Du tilkaldte en journalist.",
		answer_notify = "En journalist er på vej."
	},
	["Psykolog"] = {
		blipid = 205,
		blipcolor = 16,
		alert_time = 600,
		alert_permission = "psych.service",
		alert_notify = "Psykolog: ",
		notify = "Du tilkaldte en psykolog.",
		answer_notify = "En psykolog er på vej."
	}
}

-- define phone announces
-- image: background image for the announce (800x150 px)
-- price: amount to pay to post the announce
-- description (optional)
-- permission (optional): permission required to post the announce
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
		image = "https://cdn.khRamlovOgHoej.com/attachments/508720804612014090/537390088695316490/reklame.png",
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

return cfg
