print("Admin Script by rhys19 has loaded successfully!!!")

-- Admin Command

RegisterCommand("startadmin", function(source, args, raw)
    TriggerClientEvent("adminpursuit:AddAdmin", -1, source)
end, true)

RegisterCommand("stopadmin", function(source, args, raw)
    TriggerClientEvent("adminpursuit:RemoveAdmin", -1, source)
end, true)

-- Version Checker do not remove --

local CurrentVersion = '2.0'
local GithubResourceName = 'Admin-Script'

PerformHttpRequest('https://raw.githubusercontent.com/rhys19/Admin-Script-Stuff/master/VERSION', function(Error, NewestVersion, Header)
	PerformHttpRequest('https://raw.githubusercontent.com/rhys19/Admin-Script-Stuff/master/CHANGES', function(Error, Changes, Header)
		print('\n')
		print('--------------------------------------------------------------------')
		print('')
		print('Admin Script')
		print('')
		print('Current Version: ' .. CurrentVersion)
		print('Newest Version: ' .. NewestVersion)
		io.write("")
		print(' Changelog: ' .. Changes)
		print('')
		if CurrentVersion ~= NewestVersion then
			print('--------------------------------------------------------------------')
		else
			print('-- Up to date!')
			print('--------------')
		end
		print('\n')
end)
end)
