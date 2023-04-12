ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

RegisterServerEvent('esx_clip:remove')
AddEventHandler('esx_clip:remove', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local weapons = {
		"WEAPON_PISTOL",
		"WEAPON_COMBATPISTOL",
		"WEAPON_APPISTOL",
		"WEAPON_PISTOL50",
		"WEAPON_MICROSMG",
		"WEAPON_SMG",
		"WEAPON_ASSAULTSMG",
		"WEAPON_ASSAULTRIFLE",
		"WEAPON_CARBINERIFLE",
		"WEAPON_ADVANCEDRIFLE",
		"WEAPON_MG",
		"WEAPON_COMBATMG",
		"WEAPON_PUMPSHOTGUN",
		"WEAPON_SAWNOFFSHOTGUN",
		"WEAPON_ASSAULTSHOTGUN",
		"WEAPON_BULLPUPSHOTGUN",
		"WEAPON_SNIPERRIFLE",
		"WEAPON_HEAVYSNIPER",
		"WEAPON_REMOTESNIPER",
		"WEAPON_GRENADELAUNCHER",
		"WEAPON_GRENADELAUNCHER_SMOKE",
		"WEAPON_RPG",
		"WEAPON_PASSENGER_ROCKET",
		"WEAPON_AIRSTRIKE_ROCKET",
		"WEAPON_STINGER",
		"WEAPON_MINIGUN",
		"WEAPON_GRENADE",
		"WEAPON_STICKYBOMB",
		"WEAPON_SMOKEGRENADE",
		"WEAPON_BZGAS",
		"WEAPON_FIREEXTINGUISHER",
		"WEAPON_PETROLCAN",
		"WEAPON_DIGISCANNER",
		"WEAPON_BRIEFCASE",
		"WEAPON_BRIEFCASE_02",
		"WEAPON_PISTOL_MK2",
		"WEAPON_SMG_MK2",
		"WEAPON_COMBATMG_MK2",
		"WEAPON_ASSAULTRIFLE_MK2",
		"WEAPON_CARBINERIFLE_MK2",
		"WEAPON_PUMPSHOTGUN_MK2",
		"WEAPON_SAWNOFFSHOTGUN_MK2",
		"WEAPON_REVOLVER_MK2",
		"WEAPON_MARKSMANRIFLE_MK2",
		"WEAPON_HEAVYSNIPER_MK2",
	}
	

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

