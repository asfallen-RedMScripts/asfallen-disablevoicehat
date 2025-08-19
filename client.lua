local function DisableVoice()
  
    MumbleSetActive(false)
    MumbleSetVoiceChannel(0)
    MumbleIsActive(false)

    Citizen.InvokeNative(0xE036A705F989E049) -- _DISABLE_VOICE
    Citizen.InvokeNative(0x2E0E1C2B4F6CB339, false) -- NETWORK_SET_VOICE_ACTIVE
    Citizen.InvokeNative(0xCBF12D65F95AD686, 0.0) -- NETWORK_SET_TALKER_PROXIMITY
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


Citizen.CreateThread(function()
    while true do
        DisableVoice()
        Citizen.Wait(1000)
    end
end)