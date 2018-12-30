AddEventHandler('onClientMapStart', function()
  Citizen.CreateThread(function()
    local display = true

    TriggerEvent('wm:display', true)
  end)
end)

RegisterNetEvent('wm:display')
AddEventHandler('wm:display', function(value)
  SendNUIMessage({
    type = "wm",
    display = value
  })
end)

function ShowInfo(text, state)
  SetTextComponentFormat("STRING")
  AddTextComponentString(text)
  DisplayHelpTextFromStringLabel(0, state, 0, -1)
end