# wert-camera
Camera script for ESX Legacy and ox_inventory converted from https://github.com/Wert22/wert-camera !
Thanks to Luke and overextended team for help!!!

#### IMPORTANT
Change WebHook in server.lua!
###### Requirements

[ESX_Legacy](https://github.com/esx-framework/esx-legacy)

[ox_inventory](https://github.com/overextended/ox_inventory)

Insert items in your data/items.lua
```	
['camera'] = {
label = 'Camera',
weight = 900,
close = true,
stack = false,
description = 'Used to take photos'
},
['photo'] = {
label = 'Photo',
weight = 70,
close = true,
stack = false,
description = 'Photo'
}
```
Add this to your ox_inventory/modules/items/client.lua

```
Item('photo', function(data, slot)
    TriggerEvent('wert-camera:client:use-photo', slot.metadata.photourl)
end)
