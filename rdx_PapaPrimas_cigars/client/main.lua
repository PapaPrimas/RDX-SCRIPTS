RegisterNetEvent('cig')
AddEventHandler('cig', function()	
    local propEntity = CreateObject(GetHashKey('P_CIGAR01X'), GetEntityCoords(PlayerPedId()), false, true, false, false, true)

    local task = TaskItemInteraction_2(PlayerPedId(), -1199896558, propEntity, GetHashKey('P_CIGAR02X_PH_R_HAND'), GetHashKey('QUICK_SMOKE_CIGARETTE_LEFT_HAND'), 1, 0, -1.0)
    local drink = true
    while drink do
        Wait(1)
        local retval  = DoesEntityExist(propEntity)
        if not retval then
            drink = false
            cigarsSmoked = cigarsSmoked + 1
            if cigarsSmoked == 3 and not smoke then
                timer = 100
                smoke = true
                Citizen.InvokeNative(0x4102732DF6B4005F,"PlayerDrunk01",0, true) --playdrunk
                Citizen.InvokeNative(0x406CCF555B04FAD3 , PlayerPedId(), 1, 0.95)
            end
        end
    end
end)

RegisterNetEvent('cig2')
AddEventHandler('cig2', function()	
    local propEntity = CreateObject(GetHashKey('p_cigar01x'), GetEntityCoords(PlayerPedId()), false, true, false, false, true)

    local task = TaskItemInteraction_2(PlayerPedId(), -1199896558, propEntity, GetHashKey('P_CIGAR01X_PH_R_HAND'), GetHashKey('QUICK_SMOKE_CIGAR_LEFT_HAND'), 1, 0, -1.0)
    local drink = true
    while drink do
        Wait(1)
        local retval  = DoesEntityExist(propEntity)
        if not retval then
            drink = false
            cigarsSmoked = cigarsSmoked + 1
            if cigarsSmoked == 3 and not smoke then
                timer = 100
                smoke = true
                Citizen.InvokeNative(0x4102732DF6B4005F,"PlayerDrunk01",0, true) --playdrunk
                Citizen.InvokeNative(0x406CCF555B04FAD3 , PlayerPedId(), 1, 0.95)
            end
        end
    end
end)
