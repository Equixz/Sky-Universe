vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "ram_jul")

local open = false
local skrabet = false
local skrabet1 = false

AddEventHandler("playerSpawned", function()
  while true do
    Citizen.Wait(5000)
  TriggerServerEvent('ram_jul:Skrabetstatus')
end)

AddEventHandler("ram_jul:SkrabetJa", function()
  skrabet = true
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    if (IsNear() and skrabet == false) then
      if IsControlJustPressed(1, Config.OpenMenu) then
      if open then
          closeGui()
        else
          openGui()
        end
      end
    else
      if (open) then
        closeGui()
      end
    end
  end
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    local pos = GetEntityCoords(GetPlayerPed(-1), true)
    for _, item in pairs(Config.Locations) do
      if(Vdist(pos.x, pos.y, pos.z, item.x, item.y, item.z+1) < 15.0)then
        if GetDistanceBetweenCoords(item.x, item.y, item.z, GetEntityCoords(LocalPed())) < 1 and IsPedInAnyVehicle(LocalPed(), true) == false then
          DrawText3Ds(item.x, item.y, item.z+2, Config.Language.openMenuText)
        end
      end
    end
  end
end)

Citizen.CreateThread(function()
    for _, item in pairs(Config.Locations) do
      item.blip = AddBlipForCoord(item.x, item.y, item.z)
      SetBlipSprite(item.blip, item.id)
      SetBlipAsShortRange(item.blip, true)
      SetBlipColour(item.blip, item.colour)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(item.name)
      EndTextCommandSetBlipName(item.blip)
    end
end)

Citizen.CreateThread(function()
  while true do
    if open then
      local ply = GetPlayerPed(-1)
      local active = true
      DisableControlAction(0, 1, active) -- LookLeftRight
      DisableControlAction(0, 2, active) -- LookUpDown
      DisableControlAction(0, 24, active) -- Attack
      DisablePlayerFiring(ply, true) -- Disable weapon firing
      DisableControlAction(0, 142, active) -- MeleeAttackAlternate
      DisableControlAction(0, 106, active) -- VehicleMouseControlOverride
    end
    Citizen.Wait(0)
  end
end)

RegisterNUICallback("close", function(data)
  closeGui()
end)

RegisterNUICallback("vinder", function()
  if skrabet == false then
  TriggerServerEvent("ram_jul:vinder")
  skrabet = true
  end
end)

RegisterNUICallback("verify", function()
  if skrabet1 == false then
  TriggerServerEvent("ram_jul:verify")
  skrabet1 = true
  end
end)

RegisterNetEvent("ram_jul:notification")
AddEventHandler("ram_jul:notification", function(message)
    nuiNotification(message)
end)

function openGui()
  open = true
  SetNuiFocus(true, true)
  SendNUIMessage({open = true})
end

function closeGui()
  SetNuiFocus(false)
  SendNUIMessage({open = false})
  open = false
end

function nuiNotification(message) 
  SendNUIMessage({
    notification = true,
    notification_msg = message
  })
end

function IsNear()
  local ply = GetPlayerPed(-1)
  local plyCoords = GetEntityCoords(ply, 0)
  for _, item in pairs(Config.Locations) do
    local distance =
      GetDistanceBetweenCoords(item.x, item.y, item.z, plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
    if (distance <= 2.2) then
      return true
    end
  end
end

function LocalPed()
  return GetPlayerPed(-1)
end

function DrawText3Ds(x,y,z, text)
  local onScreen,_x,_y=World3dToScreen2d(x,y,z)
  local px,py,pz=table.unpack(GetGameplayCamCoords())
  
  SetTextScale(0.35, 0.35)
  SetTextFont(4)
  SetTextProportional(1)
  SetTextColour(255, 255, 255, 215)
  SetTextEntry("STRING")
  SetTextCentre(1)
  AddTextComponentString(text)
  DrawText(_x,_y)
  local factor = (string.len(text)) / 370
  DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

function ply_drawTxt(text,font,centre,x,y,scale,r,g,b,a)
  SetTextFont(font)
  SetTextProportional(0)
  SetTextScale(scale, scale)
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

AddEventHandler("onResourceStop", function(resource)
  if resource == GetCurrentResourceName() then
    if open then
      closeGui()
    end
  end
end)
