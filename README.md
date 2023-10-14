# BR-BALLOONS V1

Thank you for downloading my sciprt!
To setup the br-balloons, you have to put this codes:

* qbcore -> shared -> items -> 

```lua
   
	['balloons_packet'] = {['name'] = 'balloons_packet', ['label'] = 'Balloons pack', ['weight'] = 500, ['type'] = 'item', ['image'] = 'ballons_packet.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'Packet with balloons for a 
    birthday'},

	['flask'] = {['name'] = 'flask', ['label'] = 'Flask', ['weight'] = 500, ['type'] = 'item', ['image'] = 'flask.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'Flask with heaven gas.'},

	['empty_balloon'] = {['name'] = 'empty_balloon', ['label'] = 'Balloons', ['weight'] = 500, ['type'] = 'item', ['image'] = 'empty_balloon.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'Baloons.'},

	['full_balloon'] = {['name'] = 'full_balloon', ['label'] = 'Heaven Balloons', ['weight'] = 500, ['type'] = 'item', ['image'] = 'full_balloon.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'Balloon with heaven gas maan.'},
```

* inventory -> html -> js -> around line 500 ->
```js
} else if (itemData.name == "flask") {
                $(".item-info-title").html("<p>" + itemData.label + "</p>");
                $(".item-info-description").html(
                    "<p><strong>Quality: </strong><span>" +
                    itemData.info.quality +
                    "</span></p>"
                );
```
