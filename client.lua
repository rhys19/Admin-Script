--[[
CREDITS:
CREATED BY RHYS19
HALF THE CODE WAS FROM PRIORTY COOLDOWN
--]]

isadmin = false

RegisterNetEvent('UpdateAdmin')
AddEventHandler('UpdateAdmin', function(newisadmin)
    isadmin = newisadmin
end)

RegisterNetEvent('CancelAdmin')
AddEventHandler('CancelAdmin', function(newisnotadmin)
    isadmin = newisadmin
end)

RegisterNetEvent('AdminScript:NoPerms')
AddEventHandler('AdminScript:NoPerms', function()
	TriggerEvent("chatMessage", "Admin Script", {255, 0, 0}, "Insignificant Permissions to run command.")
	end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if isadmin == true then
			DrawText5("~g~Priorities Are On Hold")
			DrawText2("~r~ ADMIN PURSUIT NEARBY")
			DrawText3("~y~ Stop what you are doing and pull over to the side of the road!")
			DrawText4("~o~ There is currently 1 Admin in pursuit!")
		end
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
        DrawText(0.277, 0.055)
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