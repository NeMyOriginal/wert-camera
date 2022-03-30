local ESX = exports['original_framework']:getSharedObject()

local WebHook = "https://discord.com/api/webhooks/868230914164023346/LyCpWwI13Y_tjhQOOAESt7yCVXg66vbGDthapM2FgD6CS6g8WcY1q9QDitgIQrzvEJ03"

ESX.RegisterUsableItem("camera", function(source, item)
    local src = source
    TriggerClientEvent("wert-camera:client:use-camera", src)
end)

RegisterNetEvent("wert-camera:server:add-photo-item", function(url)
    local src = source
    local ply = ESX.GetPlayerFromId(source)
    if ply then
        local info = {
            photourl = string.gsub(url, '\"', '"'),
            description = 'Slikano fotoaparatom Canon EOS M50'
        }
        exports.original_inventar:AddItem(source, 'photo', 1, info)
    end
end)

ESX.RegisterServerCallback("wert-camera:server:webhook",function(source,cb)
	if WebHook ~= "" then
		cb(WebHook)
	else
		cb(nil)
	end
end)