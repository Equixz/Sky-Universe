vRPsb = {}
Tunnel.bindInterface("su_playerlist1",vRPsb)
users = {}
isEmergency = false
playerBlips = {}

function getUsers()
    return users
end

RegisterNetEvent("hp:playerlist")
AddEventHandler("hp:playerlist", function(user_id,data)
  local source, name, job, hbvip = table.unpack(data)
  if user_id ~= nil then
    if source ~= nil and name ~= nil then
      users[tonumber(user_id)] = { source = tonumber(source), name = tostring(name), job = tostring(job), hbvip = tostring(hbvip) }
      if PlayerId() == GetPlayerFromServerId(tonumber(source)) then
        if tostring(job) == "Politi-Job" or tostring(job) == "Elev" or tostring(job) == "AKS" or tostring(job) == "EMS-Jobelev" or tostring(job) == "EMS-Job" then
          isEmergency = true
        else
          isEmergency = false
        end
      end
    else
      users[tonumber(user_id)] = nil
    end
  end
end)



function DrawText3D(x,y,z,text)
  local onScreen,_x,_y=World3dToScreen2d(x,y,z)
  local px,py,pz=table.unpack(GetGameplayCamCoords())
  local dist = GetDistanceBetweenCoords(px,py,pz,x,y,z,1)

  local scale = (1/dist)*2
  local fov = (1/GetGameplayCamFov())*100
  local scale = scale*fov
  
  if onScreen then
    SetTextScale(0.0*scale, 0.45*scale)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
  end
end

function updatePlayerBlip(id,ped,idtype,idcolor,text)
  if not DoesBlipExist(playerBlips[id]) then
    playerBlips[id] = AddBlipForEntity(ped)
    SetBlipSprite(playerBlips[id], idtype)
    SetBlipAsShortRange(playerBlips[id], true)
    SetBlipColour(playerBlips[id],idcolor)
    SetBlipScale(playerBlips[id],0.8)
    if text ~= nil and text ~= '' then
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(text)
      EndTextCommandSetBlipName(playerBlips[id])
    end
  end
end

Citizen.CreateThread(function()
  listOn = false
  while true do
    Citizen.Wait(1)
    if IsControlPressed(0, 121) then
      if not listOn then
        local players = {}
		local playersOn = 0
		local secondCounter = 0
		local police = 0
        local ems = 0
        local lawyer = 0
        local mechanic = 0
        local taxi = 0
        local ejen = 0
		local jour = 0
		
        for k, v in pairs(users) do
		  if k ~= nil and v.source ~= nil and v.name ~= nil and NetworkIsPlayerActive(GetPlayerFromServerId(v.source)) then
			  playersOn = playersOn+1
			  if v.job == "Politi-Job" then
				police = police+1
			  elseif v.job == "AKS" then
				police = police+1
			  elseif v.job == "EMS-Job" then
				ems = ems+1
			  elseif v.job == "EMS-Jobelev" then
				ems = ems+1
			  elseif v.job == "Advokat" then
				lawyer = lawyer+1
			  elseif v.job == "Dommer" then
				lawyer = lawyer+1
			  elseif v.job == "Journalist" then
				jour = jour+1
			  elseif v.job == "Mekaniker-Job" then
				mechanic = mechanic+1
			  elseif v.job == "Taxi" then
				taxi = taxi+1
			  elseif v.job == "Ejendom" then
			    ejen = ejen+1
			  end
			  TriggerEvent('kaz:sendpolice', police)
			  TriggerEvent('kaz:sendems', ems)
		  end
        end
		table.insert(players,'<tr class="header"><td colspan="5"><table width="100%"><tr><td class="job">🚑 '..ems..'</td><td class="job">💼 '..lawyer..'</td><td class="job">📷 '..jour..'</td><td class="job">🔧 '..mechanic..'</td><td class="job">🚖 '..taxi..'</td><td class="job">🏠 '..ejen..'</td><td class="job">✅ '..playersOn..'/80</td><tr></table></td></tr>')
		table.insert(players,'<tr class="bluebar"><td class="bluebartext"><div align="center">Tak fordi du valgte Sky-Universe!</div></td><td class="bluebartext"></td></tr>')
		table.insert(players,'<tr style="height: 5px;"><td></td><td></td></tr>')
		

        
	table.insert(players,'<tr class="footer"></tr>')
        SendNUIMessage({text = table.concat(players)})
        listOn = true
        while listOn do
          Citizen.Wait(0)
          if(IsControlPressed(0, 121) == false) then
            listOn = false
            SendNUIMessage({meta = 'close'})
            break
          end
        end
      end
    end
  end
end)


Citizen.CreateThread(function()
  while true do
    Citizen.Wait(10000)
    for i=0,255 do
      RemoveMpGamerTag(i)
    end
	if isEmergency == true then 
		for k, v in pairs(users) do
		  if v.source ~= nil and NetworkIsPlayerActive(GetPlayerFromServerId(v.source)) then    
			if isEmergency and v.job == "Politi-Job" and GetPlayerPed(-1) ~= GetPlayerPed(GetPlayerFromServerId(v.source)) then
			  updatePlayerBlip(k,GetPlayerPed(GetPlayerFromServerId(v.source)),1,29,"Politi-Job")
			elseif isEmergency and v.job == "AKS" and GetPlayerPed(-1) ~= GetPlayerPed(GetPlayerFromServerId(v.source)) then
			  updatePlayerBlip(k,GetPlayerPed(GetPlayerFromServerId(v.source)),1,35,"AKS")
			elseif isEmergency and v.job == "Elev" and GetPlayerPed(-1) ~= GetPlayerPed(GetPlayerFromServerId(v.source)) then
			  updatePlayerBlip(k,GetPlayerPed(GetPlayerFromServerId(v.source)),1,18,"Elev")
			elseif isEmergency and v.job == "EMS-Jobelev" and GetPlayerPed(-1) ~= GetPlayerPed(GetPlayerFromServerId(v.source)) then
			  updatePlayerBlip(k,GetPlayerPed(GetPlayerFromServerId(v.source)),1,18,"EMS-Jobelev")
			elseif isEmergency and v.job == "EMS-Job" and GetPlayerPed(-1) ~= GetPlayerPed(GetPlayerFromServerId(v.source)) then
			  updatePlayerBlip(k,GetPlayerPed(GetPlayerFromServerId(v.source)),1,69,"EMS-Job")
			else
			  if DoesBlipExist(playerBlips[k]) then RemoveBlip(playerBlips[k]) end
			  playerBlips[k] = nil
			end
		  else
			if DoesBlipExist(playerBlips[k]) then RemoveBlip(playerBlips[k]) end
			playerBlips[k] = nil
		  end
		end
	end
  end
end)

Citizen.CreateThread(function()
	while true do
    Citizen.Wait(0)
		for k, v in pairs(users) do
			if IsControlPressed(3,121) then
				if v.source ~= nil and NetworkIsPlayerActive(GetPlayerFromServerId(v.source)) then
					x2, y2, z2 = table.unpack(GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(v.source)),true))
					if GetPlayerPed(-1) ~= GetPlayerPed(GetPlayerFromServerId(v.source)) and IsEntityVisible(GetPlayerPed(GetPlayerFromServerId(v.source))) then
						DrawText3D(x2,y2,z2+1.25,k)
					end
				end
			end
			if NetworkIsPlayerTalking(GetPlayerFromServerId(v.source)) then
				x2, y2, z2 = table.unpack(GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(v.source)),true))
				if GetPlayerPed(-1) ~= GetPlayerPed(GetPlayerFromServerId(v.source)) and IsEntityVisible(GetPlayerPed(GetPlayerFromServerId(v.source))) then
					if v.hbvip == "true" then 
						DrawMarker(27,x2, y2, z2 - 0.98, 0, 0, 0, 0, 0, 1, 1.0, 1.0, 10.3, 239, 255, 0 , 200 , 0, 0, 0, true)
					else
						DrawMarker(27,x2, y2, z2 - 0.98, 0, 0, 0, 0, 0, 1, 1.0, 1.0, 10.3, 55, 160, 205 , 200 , 0, 0, 0, true)
					end
				end
			end
		end
	end
end)

