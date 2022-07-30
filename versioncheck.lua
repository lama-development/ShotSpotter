Citizen.CreateThread( function()
updatePath = "/ItzEndah/ShotSpotter"
resourceName = "ShotSpotter by Lama"

function checkVersion(err,responseText, headers)
    -- Returns the current version set in fxmanifest.lua
	curVersion = GetResourceMetadata(GetCurrentResourceName(), "version")

	if tonumber(curVersion) < tonumber(responseText) then
		print("^1WARNING!\n" .. resourceName .. " is outdated.\nLatest version: " .. responseText .. "Current version: " .. curVersion .. "\nPlease update it from: https://github.com" .. updatePath)
	else
		print("^2" .. resourceName .." is up to date. Enjoy.")
	end
end

PerformHttpRequest("https://raw.githubusercontent.com" .. updatePath .. "/main/version", checkVersion, "GET")
end)