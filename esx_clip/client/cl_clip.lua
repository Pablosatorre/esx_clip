ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx_clip:clipcli')
AddEventHandler('esx_clip:clipcli', function()
  ped = PlayerPedId()
  if IsPedArmed(ped, 4) then
    hash=GetSelectedPedWeapon(ped)
    if hash~=nil then
      TriggerServerEvent('esx_clip:remove')
      ESX.ShowNotification("Usaste un cargador")
    else
      ESX.ShowNotification("No tienes el arma en la mano")
    end
  else
    ESX.ShowNotification("Este tipo de munición no es adecuada")
  end
end)
