RDX = nill

TriggerEvent('rdx:getSharedObject', function(obj) RDX = obj end)


RDX.RegisterUsableItem('cigarro', function(source)
	local xPlayer = RDX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('cigarro', 1)
TriggerClientEvent("cig", source) 
	TriggerClientEvent('vorp-Notify:client:SendAlert', source, { type = 'verde', text = 'Você fumou um cigarro', length = 4500, style = { ['background-color'] = '#72cc72', ['color'] = '#ffffff' } })

end)

RDX.RegisterUsableItem('charuto', function(source)
	local xPlayer = RDX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('charuto', 1)
TriggerClientEvent("cig2", source) 
TriggerClientEvent('vorp-Notify:client:SendAlert', source, { type = 'verde', text = 'Você fumou um charuto', length = 4500, style = { ['background-color'] = '#72cc72', ['color'] = '#ffffff' } })
	
end)



