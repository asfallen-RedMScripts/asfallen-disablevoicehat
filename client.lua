local function DisableVoice()
    Citizen.InvokeNative(0xE036A705F989E049) -- _DISABLE_VOICE
end

AddEventHandler('onClientResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
  
    DisableVoice()
end)

AddEventHandler('playerSpawned', function()
    DisableVoice()
end)