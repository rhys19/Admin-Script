--[[
CREDITS:
CREATED BY RHYS19
HALF THE CODE WAS FROM PRIORTY COOLDOWN
--]]

print("Admin Script by rhys19 has loaded successfully!!!")

isadmin = false

-- Admin Command

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/adminon' then
		if IsPlayerAceAllowed(player, "AdminScript.cmds") then
			TriggerEvent('UpdateAdmin')
			CancelEvent()
		else
			TriggerClientEvent('AdminScript:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/adminoff' then
		if IsPlayerAceAllowed(player, "AdminScript.cmds") then
			TriggerEvent('CancelAdmin')
			CancelEvent()
		else
			TriggerClientEvent('AdminScript:NoPerms', player)
		end
    end
end)

RegisterNetEvent('UpdateAdmin')
AddEventHandler('UpdateAdmin', function()
	isadmin = true
	Citizen.Wait(1)
	TriggerClientEvent('UpdateAdmin', -1, isadmin)
end)

RegisterNetEvent('CancelAdmin')
AddEventHandler('CancelAdmin', function()
	isadmin = false
	Citizen.Wait(1)
	TriggerClientEvent('CancelAdmin', -1, isadmin)
end)