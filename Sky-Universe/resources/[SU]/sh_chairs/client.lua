local using = false
local lastPos = nil
local oPlayer = false

CreateThread(function()
	while true do
		Wait(1000)
		oPlayer = PlayerPedId()
		local pedPos = GetEntityCoords(oPlayer)
		for k,v in pairs(Config.objects.locations) do
			local oSelectedObject = GetClosestObjectOfType(pedPos.x, pedPos.y, pedPos.z, 0.8, GetHashKey(v.object), 0, 0, 0)
			local oEntityCoords = GetEntityCoords(oSelectedObject)
			local objectexits = DoesEntityExist(oSelectedObject)
			if objectexits then
				if GetDistanceBetweenCoords(oEntityCoords.x, oEntityCoords.y, oEntityCoords.z,pedPos) < 15.0 then
					if oSelectedObject ~= 0 then
						local objects = Config.objects
						if oSelectedObject ~= objects.object then
							objects.object = oSelectedObject
							objects.ObjectVertX = v.verticalOffsetX
							objects.ObjectVertY = v.verticalOffsetY
							objects.ObjectVertZ = v.verticalOffsetZ
							objects.OjbectDir = v.direction
						end
					end
				end
			end
		end
	end
end)

CreateThread(function()
	while true do
		Wait(1)
		local objects = Config.objects
		if objects.object ~= nil and objects.ObjectVertX ~= nil and objects.ObjectVertY ~= nil and objects.ObjectVertZ ~= nil and objects.OjbectDir ~= nil then
			local player = oPlayer
			local getPlayerCoords = GetEntityCoords(player)
			local objectcoords = GetEntityCoords(objects.object)
			if GetDistanceBetweenCoords(objectcoords.x, objectcoords.y, objectcoords.z,getPlayerCoords) < 1.8 and not using then
					DrawText3Ds(objectcoords.x, objectcoords.y, objectcoords.z+0.30, "[~g~E~w~] Sid")
					if IsControlJustPressed(0, 38) then
						PlayAnimOnPlayer(objects.object,objects.ObjectVertX,objects.ObjectVertY,objects.ObjectVertZ,objects.OjbectDir, player, objectcoords)
					end
				end
			end
			if using == true then
				Draw2DText("[~g~Z~w~] for at rejse dig!",0,1,0.5,0.92,0.6,255,255,255,255)

				if IsControlJustPressed(0, 20) then
					ClearPedTasks(player)
					using = false
					local x,y,z = table.unpack(lastPos)
					if GetDistanceBetweenCoords(x, y, z,getPlayerCoords) < 10 then
						SetEntityCoords(player, lastPos)
					end
					FreezeEntityPosition(player, false)
				end
			end
		end
end)

function PlayAnimOnPlayer(object,vertx,verty,vertz,dir, ped, objectcoords)
	lastPos = GetEntityCoords(ped)
	FreezeEntityPosition(object, true)
	SetEntityCoords(ped, objectcoords.x, objectcoords.y, objectcoords.z+-1.4)
	using = true
	TaskStartScenarioAtPosition(ped, Config.objects.SitAnimation, objectcoords.x+vertx, objectcoords.y-verty, objectcoords.z-vertz, GetEntityHeading(object)+dir, 0, true, true)
end




function DrawText3Ds(x,y,z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)

	if onScreen then
		SetTextScale(0.35, 0.35)
		SetTextFont(4)
		SetTextProportional(1)
		SetTextColour(255, 255, 255, 215)
		SetTextEntry("STRING")
		SetTextCentre(1)
		AddTextComponentString(text)
		DrawText(_x,_y)
		local factor = (string.len(text)) / 350
		DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 20, 20, 20, 100)
	end
end

function Draw2DText(text,font,centre,x,y,scale,r,g,b,a)
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
	DrawText(x,y)
end
