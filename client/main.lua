ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Create Main Blips, Peds and interact

CreateThread(function()
	for _, loc in pairs(Config.RentBike.Locs) do
		local ped_hash = GetHashKey(Config.RentBike.NPC)
		RequestModel(ped_hash)
		while not HasModelLoaded(ped_hash) do
			Citizen.Wait(1)
		end
		local NPC = CreatePed(1, ped_hash, loc.Pos.x, loc.Pos.y, loc.Pos.z-1, loc.Pos.w, false, true)
		SetBlockingOfNonTemporaryEvents(NPC, true)
		SetPedDiesWhenInjured(NPC, false)
		SetPedCanPlayAmbientAnims(NPC, true)
		SetPedCanRagdollFromPlayerImpact(NPC, false)
		SetEntityInvincible(NPC, true)
		FreezeEntityPosition(NPC, true)
	
		local blip = AddBlipForCoord(loc.Pos.x, loc.Pos.y, loc.Pos.z)
	
		SetBlipSprite(blip, Config.RentBike.Blip.Sprite)
		SetBlipDisplay(blip, Config.RentBike.Blip.Display)
		SetBlipScale(blip, Config.RentBike.Blip.Scale)
		SetBlipColour(blip, Config.RentBike.Blip.Colour)
		SetBlipAsShortRange(blip, true)
	
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName(Config.RentBike.Texts.MarkerText)
		EndTextCommandSetBlipName(blip)

		local options = {
			{
				name = 'interact_menu',
				label = Config.RentBike.Texts.MarkerText,
				icon = 'fa-solid fa-bicycle',
				event = 'dr-rentbike:showmenu',
				spawn = loc.Spawn
			}
		}
	
		exports.ox_target:addLocalEntity(NPC, options)
	end
end)

-- Menu

RegisterNetEvent("dr-rentbike:showmenu")
AddEventHandler("dr-rentbike:showmenu", function(data)
	local options = {}
	for i, bike in ipairs(Config.RentBike.Bikes) do
		table.insert(options, {
			title = bike.BikeName .. ' - ' .. bike.Price .. ' €',
			icon = 'fa-solid fa-bicycle',
			image = bike.image,
			onSelect = function()
				if searchNearbyVehicle() then
					TriggerServerEvent('dr-rentbike:attemptRent', bike.SpawnCode, bike.Price, data.spawn)
				else
					TriggerEvent('dr-rentbike:notify', Config.RentBike.Texts.BlockedSpawn, 'error')
				end
			end
		})
	end
	
	lib.registerContext({
		id = 'rent_menu',
		title = Config.RentBike.Texts.MarkerText,
		options = options
	})

	lib.showContext('rent_menu')
end)

-- ox_lib Notify

RegisterNetEvent("dr-rentbike:notify")
AddEventHandler("dr-rentbike:notify", function(message, type)
	lib.notify({
		title = Config.RentBike.Texts.MarkerText,
		description = message,
		type = type,
		duration = 10000
	})
end)

-- Spawn Rented Bike

RegisterNetEvent('dr-rentbike:spawnBike')
AddEventHandler('dr-rentbike:spawnBike', function(bikeModel, spawn)
	ESX.Game.SpawnVehicle(bikeModel, spawn, spawn.w, function(vehicle)
		TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
	end)
end)

-- Search if Rent area is blocked

function searchNearbyVehicle(coords)
    local searchRadius = 2.0

	local vehicles = ESX.Game.GetVehiclesInArea(coords, searchRadius)

    for _, _ in pairs(vehicles) do
        return false  -- There is at least one vehicle, so we don't want to spawn
    end

    return true  -- No vehicles found, it's good to spawn
end