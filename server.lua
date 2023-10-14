local QBCore = exports['qb-core']:GetCoreObject()

-------------------------------------- use balloon packet -------------------------------------------------------
QBCore.Functions.CreateUseableItem('balloons_packet', function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) then
        TriggerClientEvent('br-ballons:client:useBalloonsPacket', src)
    end
end)
RegisterServerEvent('br-ballons:server:giveBalloons', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('balloons_packet', 1)
    Player.Functions.AddItem('empty_balloon', Config.UnpackBalloons)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['empty_balloon'], "add")
end)

-------------------------------------- use balloon -------------------------------------------------------
QBCore.Functions.CreateUseableItem('full_balloon', function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) then
        TriggerClientEvent('br-ballons:client:useBalloon', src)
    end
end)
RegisterServerEvent('br-balloons:server:removeBalloon', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('full_balloon', 1)
end)
------------------------------------------ use flask -----------------------------------------------------
QBCore.Functions.CreateUseableItem('flask', function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local itemData = Player.Functions.GetItemBySlot(item.slot)
    if Player.Functions.GetItemByName(item.name) then
        TriggerClientEvent('br-ballons:client:useFlask', src, itemData.info.quality)
    end
end)
RegisterServerEvent('br-balloons:server:updateInfo', function(qual)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('flask', 1)
    Player.Functions.RemoveItem('empty_balloon', 1)
    Player.Functions.AddItem('flask', 1, nil, { quality = qual })
    Player.Functions.AddItem('full_balloon', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['full_balloon'], "add")
end)


AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        local white = 0
        local green = 2
        local red = 1
        print('^'..white..'+-+-+-+-+-+-+-+-+-+-+-+')
        print('^'..green..'|B|R|-|B|A|L|L|O|O|N|S|')
        print('^'..red..'+-+-+-+-+-+-+-+-+-+-+-+')
    end
end)
