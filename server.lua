print("Admin Script by rhys19 has loaded successfully!!!")

-- Admin Command

RegisterCommand("startadmin", function(source, args, raw)
    TriggerClientEvent("adminpursuit:AddAdmin", -1, source)
end, true)

RegisterCommand("stopadmin", function(source, args, raw)
    TriggerClientEvent("adminpursuit:RemoveAdmin", -1, source)
end, true)
