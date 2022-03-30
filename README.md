# wert-camera
Camera script for ESX Legacy and ox_inventory converted from https://github.com/Wert22/wert-camera !
Thanks to Luke and overextended team for help!!!

### IMPORTANT ###
Change WebHook in server.lua!

Insert items in your data/items.lua
```	
['camera'] = {
		label = 'Camera',
		weight = 900,
		close = true,
		stack = false,
		consume = 0
	},
	['photo'] = {
		label = 'Photo',
		weight = 70,
		close = true,
		stack = false,
		consume = 0
	},
```
Add this to your ox_inventory/modules/items/client.lua

```
Item('photo', function(data, slot)
    TriggerEvent('wert-camera:client:use-photo', slot.metadata.photourl)
end)
