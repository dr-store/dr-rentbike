ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('dr-rentbike:attemptRent')
AddEventHandler('dr-rentbike:attemptRent', function(bikeModel, price, spawn)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getMoney() >= price then
        xPlayer.removeMoney(price)
        TriggerClientEvent('dr-rentbike:notify', source, Config.RentBike.Texts.RentedBike, 'success')
        TriggerClientEvent('dr-rentbike:spawnBike', source, bikeModel, spawn)
    elseif xPlayer.getAccount('bank').money >= price then
        xPlayer.removeAccountMoney('bank', price)
        TriggerClientEvent('dr-rentbike:notify', source, Config.RentBike.Texts.RentedBike, 'success')
        TriggerClientEvent('dr-rentbike:spawnBike', source, bikeModel, spawn)
    else
        TriggerClientEvent('dr-rentbike:notify', source, Config.RentBike.Texts.NotEnoughMoney, 'error')
    end
end)
