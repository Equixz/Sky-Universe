local Proxy = module("vrp", "lib/Proxy")

RegisterServerEvent('paycheck:vip')
AddEventHandler('paycheck:vip', function()
	function format_thousands(v)
		local s = string.format("%d", math.floor(v))
		local pos = string.len(s) % 3
		if pos == 0 then pos = 3 end
	 return string.sub(s, 1, pos)
		.. string.gsub(string.sub(s, pos+1), "(...)", ".%1")
	end

	  local user_id = vRP.getUserId(source)

if vRP.hasPermission(user_id,"ramlov.vip") then -- VIP
	local salary = 5000
	vRP.giveBankMoney(user_id,salary)
	TriggerClientEvent("pNotify:SendNotification", source,{text = "Bonus: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).." VIP", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
elseif vRP.hasPermission(user_id,"ramlov.vipplus") then -- VIPPLus
	local salary = 10000
	vRP.giveBankMoney(user_id,salary)
	TriggerClientEvent("pNotify:SendNotification", source,{text = "Bonus: <b style='color: #4E9350'>"..format_thousands(math.floor(salary)).."VIP Plus", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
end 



	--local id = 1
	--local salaries = 9000
	--local pung = vRP.getMoney(id)
	--local bank = vRP.getBankMoney(id)
	--local total = (pung+bank+salaries)
	--vRP.giveBankMoney(id,salaries)
	--TriggerClientEvent("pNotify:SendNotification", -1,{text = "Udbetaling til borgmesteren: <b style='color: #4E9350'>"..format_thousands(math.floor(salaries)).." DKK</b>.<br/>Total formue: <b>"..format_thousands(math.floor(total)).." DKK</b>.", type = "success", queue = "global",timeout = 4000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})	
end)