RegisterCommand('hud', function()
  TriggerEvent('esx_status:getStatus', 'hunger', function (hunger) 
    TriggerEvent('esx_status:getStatus', 'thirst', function (thirst) 
      SendNUIMessage({
        type = 'hud',
        health = GetEntityHealth(PlayerPedId()) / 2,
        thirst = thirst.getPercent(),
        hunger = hunger.getPercent(),
      })
    end)
  end)
end)


CreateThread(function ()
    while true do
      Citizen.Wait(500)
      TriggerEvent('esx_status:getStatus', 'hunger', function (hunger) 
        TriggerEvent('esx_status:getStatus', 'thirst', function (thirst) 
          SendNUIMessage({
            health = GetEntityHealth(PlayerPedId()) / 2,
            thirst = thirst.getPercent(),
            hunger = hunger.getPercent(),
          })
        end)
      end)
    end
end)