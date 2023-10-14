# BR-BALLOONS V1

Thank you for downloading my sciprt!
To setup the br-balloons, you have to put this codes:

# qbcore -> shared -> items -> 

```lua
    ['balloons_packet'] = {['name'] = 'balloons_packet', ['label'] = 'Балони', ['weight'] = 500, ['type'] = 'item', ['image'] = 'ballons_packet.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'Пакет с балони, брат мее.'},
    
    ['flask'] = {['name'] = 'flask', ['label'] = 'Флакон', ['weight'] = 500, ['type'] = 'item', ['image'] = 'flask.png', ['unique'] = true,    ['useable'] = true, ['shouldClose'] = true, ['description'] = 'Райски газ, брат мее.'},
    
    ['empty_balloon'] = {['name'] = 'empty_balloon', ['label'] = 'Балони', ['weight'] = 500, ['type'] = 'item', ['image'] = 'balloon.png',    ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'Балони.'},
    
    ['full_balloon'] = {['name'] = 'full_balloon', ['label'] = 'Балони с райски газ', ['weight'] = 500, ['type'] = 'item', ['image']     ='empty_balloon.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'Балонаа.'},
```

# inventory -> html -> js -> around line 500 ->
```js
} else if (itemData.name == "flask") {
                $(".item-info-title").html("<p>" + itemData.label + "</p>");
                $(".item-info-description").html(
                    "<p><strong>Quality: </strong><span>" +
                    itemData.info.quality +
                    "</span></p>"
                );
```
