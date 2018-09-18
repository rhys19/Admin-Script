--[[
CREDITS:
CREATED BY RHYS19
Proximity and players in pursuit by Xander1998
--]]

RegisterNetEvent('AdminScript:NoPerms')
AddEventHandler('AdminScript:NoPerms', function()
	TriggerEvent("chatMessage", "Admin Script", {255, 0, 0}, "Insufficient Permissions to run command.")
	end)


local admins = {}

RegisterNetEvent("adminpursuit:AddAdmin")
AddEventHandler("adminpursuit:AddAdmin", function(playerID)
    table.insert(admins, playerID)
end)

RegisterNetEvent("adminpursuit:RemoveAdmin")
AddEventHandler("adminpursuit:RemoveAdmin", function(playerID)
    local index = nil
    for a = 1, #admins do
        if admins[a] == playerID then
            index = a
        end
    end
    if index ~= nil then
        table.remove(admins, index)
    end
end)

Citizen.CreateThread(function()
    while true do
        for a = 1, #admins do
            -- Local Player
            local lPlayer = PlayerId()
            local lPlayerPed = GetPlayerPed(lPlayer)
            local lPlayerPedPos = GetEntityCoords(lPlayerPed, false)

            -- Admin Player
            local oPlayer = GetPlayerFromServerId(admins[a])
            local oPlayerPed = GetPlayerPed(oPlayer)
            local oPlayerPedPos = GetEntityCoords(oPlayerPed, false)

            if GetPlayerServerId(lPlayer) == admins[a] then
                local distance = Vdist(lPlayerPedPos.x, lPlayerPedPos.y, lPlayerPedPos.z, oPlayerPedPos.x, oPlayerPedPos.y, oPlayerPedPos.z)
                if distance <= 75.0 then
                    DrawText5("~g~Priorities Are On Hold")
                    DrawText2("~r~ ADMIN PURSUIT NEARBY")
                    DrawText3("~y~ Pull over, and stop what you are doing!")

                    local pursuitCount = 0
                    for b = 1, #admins do
                        if admins[a] then
                            pursuitCount = pursuitCount + 1    
                        end
                    end
                    DrawText4("~o~ There is currently " .. tostring(pursuitCount)  .. " Admin(s) in pursuit!")
                end
            end
        end
        Citizen.Wait(0)
    end
end)

	function DrawText2(text)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextScale(0.0, 0.85)
        SetTextDropshadow(1, 0, 0, 0, 255)
        SetTextEdge(1, 0, 0, 0, 255)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(0.299, 0.0)
    end
	
	function DrawText3(text)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextScale(2.2, 0.45)
        SetTextDropshadow(2, 2, 2, 2, 2)
        SetTextEdge(0, 0, 0, 0, 55)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(0.345, 0.055)
    end
	
	function DrawText4(text)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextScale(0.0, 0.45)
        SetTextDropshadow(1, 0, 0, 0, 255)
        SetTextEdge(1, 0, 0, 0, 255)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(0.345, 0.088)
    end
	
		function DrawText5(text)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextScale(0.0, 0.45)
        SetTextDropshadow(1, 0, 0, 0, 255)
        SetTextEdge(1, 0, 0, 0, 255)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(0.399, 0.122)
    end
