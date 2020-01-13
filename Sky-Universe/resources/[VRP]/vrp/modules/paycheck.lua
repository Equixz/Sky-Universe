local Proxy = module("vrp", "lib/Proxy")

RegisterServerEvent('paycheck:salary')
AddEventHandler('paycheck:salary', function()
    function format_thousands(v)
        local s = string.format("%d", math.floor(v))
        local pos = string.len(s) % 3
        if pos == 0 then pos = 3 end
     return string.sub(s, 1, pos)
        .. string.gsub(string.sub(s, pos+1), "(...)", ".%1")
    end

  	local user_id = vRP.getUserId(source)
	
	if vRP.hasPermission(user_id,"policechief.paycheck") then -- Politichef
		local salary = 20000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Politichef</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Tjenesten Pol</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"police.paycheck") then -- Politi
		local salary = 15000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Politi-Job</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})	
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Tjenesten Pol</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"haend.paycheck") then -- håndværker
		local salary = 12000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Håndværker</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})	
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Craft & Build Sjakket</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"policestudent.paycheck") then -- Politielev
		local salary = 7500
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Politi-Job</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})	
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Tjenesten Pol</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"emergencychief.paycheck") then -- EMS-Jobchef
		local salary = 17000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>EMS-Jobchef</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Pillbox medicinsk</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"emergency.paycheck") then -- EMS-Job
		local salary = 14500
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Ambulanceredder</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Pillbox medicinsk</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"emergencystudent.paycheck") then -- EMS-Jobelev
		local salary = 7500
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Ambulanceredder</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Pillbox medicinsk</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"judge.paycheck") then -- Højesteretsdommer
		local salary = 14200
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Højesteretsdommer</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Illuminati Corp</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"journalist.paycheck") then -- Journalist
		local salary = 9500
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Journalist</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Weasel Newz 24/7</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"advochef.paycheck") then -- Advochef
		local salary = 14000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Advokatchef</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Advokatkontoret</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"lawyer.paycheck") then -- Advokat
		local salary = 10200
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Advokat</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Advokatkontoret</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"psych.paycheck") then -- Psyokolog
		local salary = 8460
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Psykolog</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Psyk. fonden</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"bankdriver.paycheck") then -- Pengetransporter
		local salary = 8000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Pengetransporter</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Value Transporting Corp.</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"repairchief.paycheck") then -- Mekaniker-Jobchef
		local salary = 12000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Mekaniker-Jobchef</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Santos.Mechanics</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"repair.paycheck") then -- Mekaniker-Job
		local salary = 8625
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Mekaniker-Job</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Santos.Mechanics</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"ejendoms.paycheck") then -- Ejendomsmægler
		local salary = 10000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Ejendomsmægler</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Sky bolig</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})	
	elseif vRP.hasPermission(user_id,"bil.paycheck") then -- Bilforhandler
		local salary = 8625
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Bilforhandler</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>AutoCentralen A/S</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"skraldemand.paycheck") then -- Skraldemand
		local salary = 8000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Skraldemand</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Skidt betaler sig</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"trucker.paycheck") then -- Lastbilchauffør
		local salary = 8000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Lastbilchauffør</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Tuck Trucker & Son</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"advochef.paycheck") then -- Advochef
		local salary = 14000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Advokatchef</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Advokatkontoret</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"lager.paycheck") then -- Lager
		local salary = 11000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Lager</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Lager & Logistik ApS</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"taxi.paycheck") then -- Taxi
		local salary = 7500
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Taxichauffør</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Santos Taxi</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"tree.paycheck") then -- Træhugger
		local salary = 8000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Træhugger</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Lumberjack & Jones</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"mining.paycheck") then -- Minearbejder
		local salary = 5500
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Minearbejder</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})		
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Mining Corp</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"delivery.paycheck") then -- Udbringer
		local salary = 8000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Udbringer</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})	
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Karsten Kurer & co.</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"postman.paycheck") then -- Postbud
		local salary = 8000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Postbud</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Post Santos</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"fisher.paycheck") then -- Fisker
		local salary = 8000
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Fisker</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Friske Fisk</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"pilot.paycheck") then -- Pilot
		local salary = 9500
		vRP.giveBankMoney(user_id,salary)
		--TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Pilot</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Luftkompagniet A/S</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"user.paycheck") then -- Civil
		local salary = 4500
		vRP.giveBankMoney(user_id,salary)
--		TriggerClientEvent("pNotify:SendNotification", source,{text = "Kontanthjælp: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Arbejdsløs</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Bistandskontoret</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	elseif vRP.hasPermission(user_id,"bande.paycheck") then -- Civil
		local salary = 4500
		vRP.giveBankMoney(user_id,salary)
--		TriggerClientEvent("pNotify:SendNotification", source,{text = "Kontanthjælp: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>Arbejdsløs</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "<b style = 'color: #136c91'><h1><center>NETBANK</center></h1><br><h3><center><b style = 'color:white'>Kontoaktivitet</center></h3><br> Indbetalt: <b style = 'color:green'><b>" ..format_thousands(math.floor(salary)).. "<b style = 'color:white'> DKK</b><br><b style = 'color:white'> Afsender: <u>Bistandskontoret</u><br></b>",
						theme = "loen",
						type = "success",
						queue = "lmao",
						timeout = 3500,
						layout = "centerLeft"
					})
	end



	--local id = 1
	--local salaries = 9000
	--local pung = vRP.getMoney(id)
	--local bank = vRP.getBankMoney(id)
	--local total = (pung+bank+salaries)
	--vRP.giveBankMoney(id,salaries)
	--TriggerClientEvent("pNotify:SendNotification", -1,{text = "Udbetaling til borgmesteren: <b style='color: #4E9350'>"..format_thousands(math.floor(salaries)).." DKK</b>.<br/>Total formue: <b>"..format_thousands(math.floor(total)).." DKK</b>.", type = "success", queue = "global",timeout = 4000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})	
end)