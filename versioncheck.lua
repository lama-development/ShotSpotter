Citizen.CreateThread( function()
	updatePath = "/ItzEndah/ShotSpotter"
	resourceName = "ShotSpotter by Lama"
	
	function checkVersion(err, responseText, headers)
		-- Returns the version set in the file
		curVersion = GetResourceMetadata(GetCurrentResourceName(), "version")

		if curVersion ~= responseText then
			print("^1" .. resourceName .. ": there was an error retrieving the latest version of the resource from GitHub. The version checker will be skipped.")	
		else if tonumber(curVersion) < tonumber(responseText) then
			print("^1" .. resourceName .. " is outdated.\nLatest version: " .. responseText .. "Current version: " .. curVersion .. "\nPlease update it from: https://github.com" .. updatePath)
		else
			print("^2" .. resourceName .." is up to date. Enjoy.")
		end
	end
end
	
	PerformHttpRequest("https://raw.githubusercontent.com" .. updatePath .. "/main/version", checkVersion, "GET")
end)
