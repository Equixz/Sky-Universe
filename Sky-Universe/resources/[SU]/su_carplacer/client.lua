local vehicles = {
    -- Fotovogne
	{Model= "burrito3", X= 349.111328125, Y= -719.79571533203, Z= 28.137498855591, A= 339.78430175781},
	{Model= "burrito3", X= 250.09657287598, Y= -642.85693359375, Z= 38.767728424072, A= 337.65362548828},
	{Model= "burrito3", X= 112.3533782959, Y= -946.18273925781, Z= 28.530124664307, A= 159.416015625},
	{Model= "burrito3", X= 205.17272949219, Y= -1218.4689941406, Z= 28.164844512939, A= 180.77841186523},
	-- Carauction
	{Model= "peyote2", X= 233.52496337891, Y= 1167.0572509766, Z= 225.03634643555-0.6, A= 336.74267578125},
	{Model= "locust", X= 229.06379699707, Y= 1176.5212402344, Z= 225.03852844238-0.6, A= 252.74409484863},
	{Model= "gauntlet4", X= 230.7014465332, Y= 1179.6405029297, Z= 225.03430175781-0.6, A= 232.32382202148},

}

RegisterNetEvent("su_carplacer:place")
AddEventHandler("su_carplacer:place", function()
    for _, item in pairs(vehicles) do
        RequestModel(GetHashKey(item.Model));
        while not HasModelLoaded(GetHashKey(item.Model)) do
            RequestModel(GetHashKey(item.Model));
            Wait(50)
        end
        local vehicle = CreateVehicle(GetHashKey(item.Model), item.X, item.Y, item.Z, item.A, false, false)
        FreezeEntityPosition(vehicle,true)
    end
end)




