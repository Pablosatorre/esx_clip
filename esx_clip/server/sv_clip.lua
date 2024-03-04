ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('esx_clip:remove')
AddEventHandler('esx_clip:remove', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local weapons = ESX.GetWeaponList()

    for i = 1, #weapons do
        local weaponName = weapons[i]
        if xPlayer.hasWeapon(weaponName) then
            xPlayer.addWeaponAmmo(weaponName, 10)
        end
    end

    xPlayer.removeInventoryItem('clip', 1)
    print("El jugador con ID " .. source .. " ha usado un cargador")
end)


ESX.RegisterUsableItem('clip', function(source)
	TriggerClientEvent('esx_clip:clipcli', source)
end)

