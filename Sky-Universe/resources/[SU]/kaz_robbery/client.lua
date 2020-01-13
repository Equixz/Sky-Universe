--[[
─────────────────────────────────────────────────────────────────────────────────────────────────────────
─██████──████████─██████████████─██████████████████─██████████████─██████████████─██████──────────██████─
─██░░██──██░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██████████──██░░██─
─██░░██──██░░████─██░░██████░░██─████████████░░░░██─██░░██████░░██─██░░██████░░██─██░░░░░░░░░░██──██░░██─
─██░░██──██░░██───██░░██──██░░██─────────████░░████─██░░██──██░░██─██░░██──██░░██─██░░██████░░██──██░░██─
─██░░██████░░██───██░░██████░░██───────████░░████───██░░██──██░░██─██░░██──██░░██─██░░██──██░░██──██░░██─
─██░░░░░░░░░░██───██░░░░░░░░░░██─────████░░████─────██░░██──██░░██─██░░██──██░░██─██░░██──██░░██──██░░██─
─██░░██████░░██───██░░██████░░██───████░░████───────██░░██──██░░██─██░░██──██░░██─██░░██──██░░██──██░░██─
─██░░██──██░░██───██░░██──██░░██─████░░████─────────██░░██──██░░██─██░░██──██░░██─██░░██──██░░██████░░██─
─██░░██──██░░████─██░░██──██░░██─██░░░░████████████─██░░██████░░██─██░░██████░░██─██░░██──██░░░░░░░░░░██─
─██░░██──██░░░░██─██░░██──██░░██─██░░░░░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██████████░░██─
─██████──████████─██████──██████─██████████████████─██████████████─██████████████─██████──────────██████─
─────────────────────────────────────────────────────────────────────────────────────────────────────────
]]--
local placeringer = {
{sted= "1", x= 146.86296081543, y= -1046.0659179688, z= 29.368082046509, offset1= 0.3, offset2= 1.25, offset3= 0.6, h= 250.87744140625},
{sted= "2", x= -2956.5817871094, y= 481.70556640625, z= 15.69708442688, offset1= 0.2, offset2= 0.35, offset3= -0.4, h= 356.21008300781},
{sted= "3", x= -105.64775085449, y= 6472.0322265625, z= 31.626708984375, offset1= 0.2, offset2= 0.4, offset3= -0.4, h= 49.773498535156},
{sted= "4", x= -1210.7259521484, y= -336.5309753418, z= 37.781047821045, offset1= 0.25, offset2= 0.65, offset3= -0.4, h= 297.65634155273},
{sted= "5", x= 311.26318359375, y= -284.53680419922, z= 54.164775848389, offset1=  -0.6, offset2= -0.05, offset3= -0.2, h= 250.58807373047},
{sted= "6", x= 253.34, y= 228.25, z= 101.39, offset1= -0.0, offset2= -0.0, offset3= -0.0, h= 70.554237365723},
{sted= "7", x= 1176.0277099609, y= 2712.8991699219, z= 38.088035583496, offset1= 0.1, offset2= 0.75, offset3= 1.2, h= 93.431541442871},
}
police1 = 0
door3 = false
viruskobt = false
svejsteal = false
locked = false
virusbrugt = false 
terminalibrug = false
korrecthack = false
doorcurrent = "closed"
robbing = false
circlesactive = false
cooltest = false
check = false
door6 = false
hackingstarted = false
taske2 = false
circlesok = {
{spot = "false", circle = "ingen"}, 
{spot = "false", circle = "ingen"}, 
{spot = "false", circle = "ingen"}, 
{spot = "false", circle = "ingen"}, 
{spot = "false", circle = "ingen"}, 
{spot = "false", circle = "ingen"}, 
{spot = "false", circle = "ingen"}, 
}
RegisterNetEvent('kaz:sendpolice')
AddEventHandler('kaz:sendpolice', function(police)
police1 = police
end)
Citizen.CreateThread(function()
    RequestModel(GetHashKey("cs_bankman"))
    while not HasModelLoaded(GetHashKey("cs_bankman")) do
        Wait(1)
    end
    local caseyped =  CreatePed(4, 0x9760192e, 705.86846923828,-964.4150390625,29.408239364624,235.36206054688, false, true)
    SetEntityHeading(caseyped, 235.36206054688)
    FreezeEntityPosition(caseyped, true)
    SetEntityInvincible(caseyped, true)
    SetBlockingOfNonTemporaryEvents(caseyped, true)
end)
AddEventHandler('kaz:viruskobtnow', function()
Citizen.Wait(10000)
viruskobt = false
end)
AddEventHandler('kaz:svejsteal', function()
   Citizen.Wait(60000)
   FreezeEntityPosition(PlayerPedId(),false)
   ClearPedTasksImmediately(PlayerPedId())
   svejsteal = false
end)
RegisterNetEvent('kaz:virusbrugt2')
AddEventHandler('kaz:virusbrugt2', function()
hackingstarted = true
terminalibrug = true
FreezeEntityPosition(GetPlayerPed(-1),true)
TriggerEvent('kaz_robbery:animation1')
Citizen.Wait(7000)
TriggerEvent("mhacking:show")
TriggerEvent("mhacking:start",6,40,mycb)	
end)
RegisterNetEvent('kaz:robberygoing')
AddEventHandler('kaz:robberygoing', function()
	robbing = true
	secondsRemaining = 500
end)
RegisterNetEvent('kaz:aktiverdoor2')
AddEventHandler('kaz:aktiverdoor2', function(PlayerPos, doorcurrent)
PlayerPos2 = GetEntityCoords(PlayerPedId(), true)
doorcurrent = doorcurrent
done = false
	while GetDistanceBetweenCoords(PlayerPos.x, PlayerPos.y, PlayerPos.z, GetEntityCoords(PlayerPedId()), true ) > 75 do
		Citizen.Wait(5000)
	end
		for k,v in pairs(cfg.banks) do
			local pos2 = v.terminal
			if GetDistanceBetweenCoords(pos2.x, pos2.y, pos2.z, PlayerPos2.x, PlayerPos2.y, PlayerPos2.z, true ) < 49.0 then
				heading1 = v.heading1
				heading2 = v.heading2
				banknr = v.banknr
				doortype = v.doortype
				PlayerPos = GetEntityCoords(PlayerPedId(), true)
				VaultDoor = GetClosestObjectOfType(PlayerPos.x, PlayerPos.y, PlayerPos.z, 50.0, doortype, 0, 0, 0)
				local CurrentHeading = GetEntityHeading(VaultDoor)
				if banknr == 3 then 
					if doorcurrent == "open" then 
						while CurrentHeading < heading1 do
						Citizen.Wait(0)
						SetEntityHeading(VaultDoor, CurrentHeading + 0.4)
						CurrentHeading = GetEntityHeading(VaultDoor)
						end
					elseif doorcurrent == "closed" then 
						while CurrentHeading > heading2 do
						Citizen.Wait(0)
						SetEntityHeading(VaultDoor, CurrentHeading - 0.4)
						CurrentHeading = GetEntityHeading(VaultDoor)
						end
					end	
				else
					if doorcurrent == "open" then
						while CurrentHeading > heading1 do
						Citizen.Wait(0)
						SetEntityHeading(VaultDoor, CurrentHeading - 0.4)
						CurrentHeading = GetEntityHeading(VaultDoor)
						end
					elseif doorcurrent == "closed" then 
						while CurrentHeading < heading2 do
						Citizen.Wait(0)
						SetEntityHeading(VaultDoor, CurrentHeading + 0.4)
						CurrentHeading = GetEntityHeading(VaultDoor)
						end
					end	
				end
			end
		end
end)
RegisterNetEvent('kaz:robberyover2')
AddEventHandler('kaz:robberyover2', function()
robbing = false
locked = true
korrecthack = false
circlesactive = false
end)
RegisterNetEvent('kaz:checkomderernogen')
AddEventHandler('kaz:checkomderernogen', function()
check = true 
end)
RegisterNetEvent('kaz:unlockbank')
AddEventHandler('kaz:unlockbank', function()
Citizen.Wait(1000)
locked = false
korrecthack = false
terminalibrug = false
check = false
end)
RegisterNetEvent('kaz:updateskaere')
AddEventHandler('kaz:updateskaere', function(i)
	if i == 1 then 
		circlesok[1].spot = false
	elseif i == 2 then 
		circlesok[2].spot = false
	elseif i == 3 then 
		circlesok[3].spot = false
	elseif i == 4 then 
		circlesok[4].spot = false
	elseif i == 5 then 
		circlesok[5].spot = false
	elseif i == 6 then 
		circlesok[6].spot = false
	elseif i == 7 then 
		circlesok[7].spot = false
	end
end)
RegisterNetEvent('kaz:unlockmig')
AddEventHandler('kaz:unlockmig', function()
ped = GetPlayerPed(-1)
FreezeEntityPosition(ped,false)
ClearPedTasksImmediately(ped)
end)
RegisterNetEvent('kaz:circlesstart')
AddEventHandler('kaz:circlesstart', function(x, y, z)
terminalibrug = true
circlesactive = true
for i = 1,7 do 
circlesok[i].spot = true
end
	while circlesactive do
		Citizen.Wait(0)
			for k,v in pairs(cfg.banks) do
				PlayerPos2 = GetEntityCoords(PlayerPedId(), true)
				if GetDistanceBetweenCoords(x, y, z, PlayerPos2.x, PlayerPos2.y, PlayerPos2.z, true ) < 50 then
					circles = v.amount
						circlesok[1].circle = v.circle1
						circlesok[2].circle = v.circle2
						circlesok[3].circle = v.circle3
						circlesok[4].circle = v.circle4
						circlesok[5].circle = v.circle5
						circlesok[6].circle = v.circle6
						circlesok[7].circle = v.circle7
							for i = 1,circles do 
								if circlesok[i].spot == true then 
									DrawMarker(27, circlesok[i].circle.x, circlesok[i].circle.y, circlesok[i].circle.z, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 1555, 0, 0,255, 0, 0, 0,0)
										if GetDistanceBetweenCoords(circlesok[i].circle.x, circlesok[i].circle.y, circlesok[i].circle.z+1, GetEntityCoords(PlayerPedId()), true ) < 0.5 then
											DrawText3Ds(circlesok[i].circle.x, circlesok[i].circle.y, circlesok[i].circle.z+1.25, "[~g~E~w~] for at skære.", 3.0, 7)
												if IsControlJustPressed(1, 38) then
													TriggerServerEvent('kaz:skaere', i)
													TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_WELDING")
													FreezeEntityPosition(GetPlayerPed(-1),true)
												end
										end
								end	
							end
				end
			end
	end
end)
function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 80)
end
function mycb(success, timeremaining)
	if success then
		plyPos = GetEntityCoords(GetPlayerPed(-1))
		korrecthack = true
		TriggerEvent('hacking:success')
		TriggerEvent('mhacking:hide')
		TriggerServerEvent('kaz:bankstartet', bankname,  plyPos.x, plyPos.y, plyPos.z)
		FreezeEntityPosition(GetPlayerPed(-1),false)
		hackingstarted = false
	else
		TriggerEvent('mhacking:hide')
		FreezeEntityPosition(GetPlayerPed(-1),false)	
		terminalibrug = false
		hackingstarted = false
	end
end
function drawTxt(text,font,centre,x,y,scale,r,g,b,a)
	SetTextFont(6)
	SetTextProportional(6)
	SetTextScale(scale/1.0, scale/1.0)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0,255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(centre)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x , y)
end

Citizen.CreateThread(function()
	while true do 
		Citizen.Wait(0)
		if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), 705.86846923828,-964.4150390625,29.408239364624, true ) < 10 then
			if IsControlJustPressed(1, 38) then
				if viruskobt == true then
					RequestAnimDict("mp_common")
					TaskPlayAnim(caseyped,"mp_common","givetake1_a",100.0, 200.0, 0.3, 120, 0.2, 0, 0, 0)
					Wait(750)
					StopAnimTask(caseyped, "mp_common","givetake1_a", 1.0)
				end
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
	Citizen.Wait(0)
			if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), 705.86846923828,-964.4150390625,29.408239364624, true ) < 5 then
				if viruskobt == true then 
					DrawText3Ds(705.86846923828,-964.4150390625,29.408239364624+1.25, "~w~[Cooldown] Vent venligst 10 sekunder!", 3.0, 7)
				elseif viruskobt == false then
					DrawText3Ds(705.86846923828,-964.4150390625,29.408239364624+1.25, "~w~Tryk ~g~[E]~w~ for at købe Hacking-Taske. Pris: 50.000 kr.", 3.0, 7)	
						if IsControlJustPressed(1, 38) then
							if police1 >= 4 then 
								TriggerServerEvent('kaz:virus', police1) -- KØB Koden
								viruskobt = true
								TriggerEvent('kaz:viruskobtnow')
								RequestAnimDict("mp_common")
									while (not HasAnimDictLoaded("mp_common")) do 
									Citizen.Wait(0)
									end
								TaskPlayAnim(PlayerPedId(),"mp_common","givetake1_a",100.0, 200.0, 0.3, 120, 0.2, 0, 0, 0)
								Wait(750)
								StopAnimTask(PlayerPedId(), "mp_common","givetake1_a", 1.0)
							else
							TriggerEvent("pNotify:SendNotification",{text = "Ikke nok betjente.",type = "success",timeout = (8500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
							end 	
						end	
				end
			end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0) 
				if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), 2608.6884765625,2806.0092773438,33.725120544434, true ) < 5 then
					if svejsteal == false then
					DrawMarker(27,2608.6884765625-0.5,2806.0092773438,33.725120544434-0.9,0,0,0,0,0,Rotation,1.501,1.5001,0.5001,255,0,0,200,0,0,0,true)
					DrawText3Ds(2608.6884765625-0.5,2806.0092773438,33.725120544434, "~w~Tryk ~g~[E]~w~ for at stjæle skære brænder.", 3.0, 7)
						if IsControlJustPressed(1, 38) then
							TriggerServerEvent('kaz:svej')
							svejsteal = true
							TriggerEvent('kaz:svejsteal')
							TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_PARKING_METER")
							FreezeEntityPosition(PlayerPedId(),true)							
						end
					elseif svejsteal == true then 
						DrawMarker(27,2608.6884765625-0.5,2806.0092773438,33.725120544434-0.9,0,0,0,0,0,Rotation,1.501,1.5001,0.5001,255,0,0,200,0,0,0,true)
						DrawText3Ds(2608.6884765625-0.5,2806.0092773438,33.725120544434, "~w~[Cooldown] Vent venligst 60 sekunder!", 3.0, 7)
					end
				elseif GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), 2608.6884765625,2806.0092773438,33.725120544434, true ) < 40 then
					DrawMarker(27,2608.6884765625-0.5,2806.0092773438,33.725120544434-0.9,0,0,0,0,0,Rotation,1.501,1.5001,0.5001,255,0,0,200,0,0,0,true)		
				end
			local pos = GetEntityCoords(PlayerPedId(), true)
				for k,v in pairs(cfg.banks)do
					local pos2 = v.terminal
						if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), pos2.x, pos2.y, pos2.z, true ) < 10 then
						bankname = v.bankname
						banknr = v.banknr
						Terminal = v.terminal
						doortype = v.doortype
						heading1 = v.heading1
						heading2 = v.heading2
							if banknr == 3 then 
								if door3 == false then 
									PlayerPos = GetEntityCoords(PlayerPedId(), true)
									VaultDoor2 = GetClosestObjectOfType(PlayerPos.x, PlayerPos.y, PlayerPos.z, 50.0, doortype, 0, 0, 0)
											if VaultDoor2 ~= nil and VaultDoor2 ~= 0 then
												FreezeEntityPosition(VaultDoor2, true)
												door3 = true
											end
								end
							end
							if banknr == 6 then
								if door6 == false then 
									PlayerPos = GetEntityCoords(PlayerPedId(), true)
									VaultDoor2 = GetClosestObjectOfType(PlayerPos.x, PlayerPos.y, PlayerPos.z, 50.0, doortype, 0, 0, 0)
											if VaultDoor2 ~= nil and VaultDoor2 ~= 0 then
												FreezeEntityPosition(VaultDoor2, true)
												door6 = true
											end
								end
							end
						end
				end
	end
end)
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0) 
			if robbing then
				local ped = GetPlayerPed(-1)
					local pos2 = Terminal
					local pos = GetEntityCoords(GetPlayerPed(-1), true)
					health = GetEntityHealth(ped)
						drawTxt("Døren lukker om ~r~" .. secondsRemaining .. " sekunder. ~w~ Kom ud inden!",0,1,0.5,0.92,0.6,255,255,255,255)
							if secondsRemaining == 0 then 
								PlayerPos = GetEntityCoords(PlayerPedId(), true)
								reason = "Time"
								TriggerServerEvent('kaz:robberyover', reason, PlayerPos)
								secondsRemaining = -1
								robbing = false
							end	
							if health == 105 then
								PlayerPos = GetEntityCoords(PlayerPedId(), true)
								reason = "dead"
								TriggerServerEvent('kaz:robberyover', reason, PlayerPos)
								robbing = false
							elseif GetDistanceBetweenCoords(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z, true ) > 50 then
								PlayerPos = GetEntityCoords(PlayerPedId(), true)
								reason = "distance"
								TriggerServerEvent('kaz:robberyover', reason, PlayerPos)
								robbing = false
							end
			end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
			if Terminal ~= nil then
				if check == true then 
					if GetDistanceBetweenCoords(Terminal.x, Terminal.y, Terminal.z, GetEntityCoords(PlayerPedId()), true ) < 2 then
						DrawText3Ds(Terminal.x,Terminal.y,Terminal.z+0.5, "[~g~E~w~]~g~ Luk dør.", 3.0, 7)
							if IsControlJustPressed(1, 38) then
								local PlayerPos = GetEntityCoords(PlayerPedId(), true)
								TriggerServerEvent('kaz:resetnu', PlayerPos)
								check = false
								Citizen.Wait(5000)
							end
					end
				elseif locked == true then
					if GetDistanceBetweenCoords(Terminal.x, Terminal.y, Terminal.z, GetEntityCoords(PlayerPedId()), true ) < 2 then
						DrawText3Ds(Terminal.x,Terminal.y,Terminal.z+0.5, "[~r~E~w~]~r~ Tilkald Politi / Lås Op.", 3.0, 7)
							if IsControlJustPressed(1, 38) then
								local PlayerPos = GetEntityCoords(PlayerPedId(), true)
								TriggerServerEvent('kaz:tilkaldpoliti', PlayerPos)
								Citizen.Wait(10000)
							end
					end
				elseif check == true then 
					if GetDistanceBetweenCoords(Terminal.x, Terminal.y, Terminal.z, GetEntityCoords(PlayerPedId()), true ) < 2 then
						DrawText3Ds(Terminal.x,Terminal.y,Terminal.z+0.5, "[~g~E~w~]~g~ Luk dør.", 3.0, 7)
							if IsControlJustPressed(1, 38) then
								local PlayerPos = GetEntityCoords(PlayerPedId(), true)
								TriggerServerEvent('kaz:resetnu', PlayerPos)
								check = false
								Citizen.Wait(10000)
							end
					end
				elseif virusbrugt == true then 
					if GetDistanceBetweenCoords(Terminal.x, Terminal.y, Terminal.z, GetEntityCoords(PlayerPedId()), true ) < 15 then
						DrawText3Ds(Terminal.x,Terminal.y,Terminal.z+0.5, "~g~Døren er åben!", 3.0, 7)
					end
				elseif terminalibrug == false then				
					if GetDistanceBetweenCoords(Terminal.x, Terminal.y, Terminal.z, GetEntityCoords(PlayerPedId()), true ) < 0.8 then
						DrawText3Ds(Terminal.x,Terminal.y,Terminal.z+0.4, "[~g~E~w~] For at hacke.", 3.0, 7)
						DrawMarker(27, Terminal.x, Terminal.y, Terminal.z-0.95, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 1555, 0, 0,255, 0, 0, 0,0)
							if IsControlJustPressed(1, 38) then
								if police1 >= 4 then 
									TriggerServerEvent('kaz:virusbrugt')
								else
									TriggerEvent("pNotify:SendNotification",{text = "Ikke nok betjente.",type = "success",timeout = (8500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
								end
							end
					elseif GetDistanceBetweenCoords(Terminal.x, Terminal.y, Terminal.z, GetEntityCoords(PlayerPedId()), true ) < 15 then
							DrawMarker(27, Terminal.x, Terminal.y, Terminal.z-0.95, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 1555, 0, 0,255, 0, 0, 0,0)
					end
				end
			end
			if korrecthack == true then		
				if Terminal ~= nil then
					if locked == false then
						if GetDistanceBetweenCoords(Terminal.x, Terminal.y, Terminal.z, GetEntityCoords(PlayerPedId()), true ) < 0.8 then
							DrawText3Ds(Terminal.x,Terminal.y,Terminal.z+0.4, "[~g~E~w~] ~g~Aktiver Dør~w~.", 3.0, 7)
										if IsControlJustPressed(1, 38) then
											if doorcurrent == "closed" then 
												doorcurrent = "open"
											else
												doorcurrent = "closed"
											end
											local PlayerPos = GetEntityCoords(PlayerPedId(), true)
											TriggerServerEvent('kaz:aktiverdoor', PlayerPos, doorcurrent)
										end
						end
					end
				end
			end
	end
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
			if robbing then
				Citizen.Wait(1000)
					if(secondsRemaining > 0)then
						secondsRemaining = secondsRemaining - 1
					end
			end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(60000)
			TriggerServerEvent('kaz:updatelock')
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
			if cooltest == true then
				Citizen.Wait(10000)
					cooltest = false
			end
	end
end)		

AddEventHandler('kaz_robbery:animation1', function()
	for i = 1,7 do
		Citizen.Wait(1)
		if i == banknr then
			local animDict = "anim@heists@ornate_bank@hack"
			RequestAnimDict(animDict)
			RequestModel("hei_prop_hst_laptop")
			RequestModel("hei_p_m_bag_var22_arm_s")
			RequestModel("hei_prop_heist_card_hack_02")
				while not HasAnimDictLoaded(animDict)
					or not HasModelLoaded("hei_prop_hst_laptop")
					or not HasModelLoaded("hei_p_m_bag_var22_arm_s")
					or not HasModelLoaded("hei_prop_heist_card_hack_02") do
					Citizen.Wait(100)
				end
			local ped = PlayerPedId()						
			SetEntityCoordsNoOffset(ped,placeringer[i].x, placeringer[i].y, placeringer[i].z,0,0,1)
			SetEntityHeading(ped, placeringer[i].h) 
			Citizen.Wait(500)
			terminalcords = GetOffsetFromEntityInWorldCoords(ped,placeringer[i].offset1, placeringer[i].offset2, placeringer[i].offset3)
			local targetPosition, targetRotation = (vec3(GetEntityCoords(ped))), vec3(GetEntityRotation(ped))
			local animPos = GetAnimInitialOffsetPosition(animDict, "hack_enter", terminalcords.x, terminalcords.y, terminalcords.z, terminalcords.x, terminalcords.y, terminalcords.z, 0, 2) -- Animasyon kordinatları, buradan lokasyonu değiştirin // These are fixed locations so if you want to change animation location change here
			local animPos2 = GetAnimInitialOffsetPosition(animDict, "hack_loop", terminalcords.x, terminalcords.y, terminalcords.z, terminalcords.x, terminalcords.y, terminalcords.z, 0, 2)
			local animPos3 = GetAnimInitialOffsetPosition(animDict, "hack_exit", terminalcords.x, terminalcords.y, terminalcords.z, terminalcords.x, terminalcords.y, terminalcords.z, 0, 2)
			FreezeEntityPosition(ped, true)
			local netScene = NetworkCreateSynchronisedScene(animPos, targetRotation, 2, false, false, 1065353216, 0, 1.3)
			NetworkAddPedToSynchronisedScene(ped, netScene, animDict, "hack_enter", 1.5, -4.0, 1, 16, 1148846080, 0)
			local bag = CreateObject(GetHashKey("hei_p_m_bag_var22_arm_s"), targetPosition, 1, 1, 0)
			NetworkAddEntityToSynchronisedScene(bag, netScene, animDict, "hack_enter_bag", 4.0, -8.0, 1)
			local laptop = CreateObject(GetHashKey("hei_prop_hst_laptop"), targetPosition, 1, 1, 0)
			NetworkAddEntityToSynchronisedScene(laptop, netScene, animDict, "hack_enter_laptop", 4.0, -8.0, 1)
			local card = CreateObject(GetHashKey("hei_prop_heist_card_hack_02"), targetPosition, 1, 1, 0)
			NetworkAddEntityToSynchronisedScene(card, netScene, animDict, "hack_enter_card", 4.0, -8.0, 1)
			local netScene2 = NetworkCreateSynchronisedScene(animPos2, targetRotation, 2, false, false, 1065353216, 0, 1.3)
			NetworkAddPedToSynchronisedScene(ped, netScene2, animDict, "hack_loop", 1.5, -4.0, 1, 16, 1148846080, 0)
			NetworkAddEntityToSynchronisedScene(bag, netScene2, animDict, "hack_loop_bag", 4.0, -8.0, 1)
			NetworkAddEntityToSynchronisedScene(laptop, netScene2, animDict, "hack_loop_laptop", 4.0, -8.0, 1)
			NetworkAddEntityToSynchronisedScene(card, netScene2, animDict, "hack_loop_card", 4.0, -8.0, 1)
			local netScene3 = NetworkCreateSynchronisedScene(animPos3, targetRotation, 2, false, false, 1065353216, 0, 1.3)
			NetworkAddPedToSynchronisedScene(ped, netScene3, animDict, "hack_exit", 1.5, -4.0, 1, 16, 1148846080, 0)
			NetworkAddEntityToSynchronisedScene(bag, netScene3, animDict, "hack_exit_bag", 4.0, -8.0, 1)
			NetworkAddEntityToSynchronisedScene(laptop, netScene3, animDict, "hack_exit_laptop", 4.0, -8.0, 1)
			NetworkAddEntityToSynchronisedScene(card, netScene3, animDict, "hack_exit_card", 4.0, -8.0, 1)
			Citizen.Wait(500)
			SetPedComponentVariation(ped, 5, 0, 0, 0)
			NetworkStartSynchronisedScene(netScene)
			Citizen.Wait(4500) 
			NetworkStopSynchronisedScene(netScene)
			NetworkStartSynchronisedScene(netScene2)
				while hackingstarted == true do
					Citizen.Wait(4500)
					NetworkStopSynchronisedScene(netScene2)
					local netScene2 = NetworkCreateSynchronisedScene(animPos2, targetRotation, 2, false, false, 1065353216, 0, 1.3)
					NetworkAddPedToSynchronisedScene(ped, netScene2, animDict, "hack_loop", 1.5, -4.0, 1, 16, 1148846080, 0)
					NetworkStartSynchronisedScene(netScene2)
				end
			NetworkStopSynchronisedScene(netScene2)
			NetworkStartSynchronisedScene(netScene3)
			Citizen.Wait(4500)
			NetworkStopSynchronisedScene(netScene3)
			DeleteObject(bag)
			DeleteObject(laptop)
			DeleteObject(card)
			FreezeEntityPosition(ped, false)
			SetPedComponentVariation(ped, 5, 45, 0, 0)
		end
	end
end)

RegisterNetEvent('kaz_robbery:tjektaske:1')
AddEventHandler('kaz_robbery:tjektaske:1', function(lock)
locked = lock
	if taske2 == false then 
		SetPedComponentVariation(PlayerPedId(), 5, 45, 0, 0)
		TriggerEvent("pNotify:SendNotification",{text = "Du har fået taske på, da hacking sættet er tungt!",type = "success",timeout = (8500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
		taske2 = true
	end
end)

RegisterNetEvent('kaz_robbery:tjektaske:2')
AddEventHandler('kaz_robbery:tjektaske:2', function(lock)
locked = lock
	if taske2 == true then 
		SetPedComponentVariation(PlayerPedId(), 5, 0, 0, 0)
		taske2 = false
	end
end)


