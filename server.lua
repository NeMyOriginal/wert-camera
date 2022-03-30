local ESX = exports['es_extended']:getSharedObject()

local WebHook = "" -- Put your webhook

ESX.RegisterUsableItem("camera", function(source, item)
    local src = source
    TriggerClientEvent("wert-camera:client:use-camera", src)
end)

RegisterNetEvent("wert-camera:server:add-photo-item", function(url)
    local time = os.date('*t')
    local src = source
    local ply = ESX.GetPlayerFromId(source)
    if ply then
        local info = {
            photourl = string.gsub(url, '\"', '"'),
            description = 'Photo taken with Canon EOS M50 \n  Date and Time: ' .. time.day .. '/'  .. time.month .. '/' .. time.year .. ' - ' .. time.hour .. ':' .. time.min
        }
        exports.ox_inventory:AddItem(source, 'photo', 1, info)
    end
end)

ESX.RegisterServerCallback("wert-camera:server:webhook",function(source,cb)
	if WebHook ~= "" then
		cb(WebHook)
	else
		cb(nil)
	end
end)
