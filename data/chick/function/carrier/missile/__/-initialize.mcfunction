## Set data.
data modify entity @s Item set value {id:"minecraft:ghast_tear",count:1}
data modify entity @s Motion set value [0.0,0.0,0.0]
data modify entity @s NoGravity set value true
data modify entity @s data merge value {chick:{carrier:{missile:{}}}}
data modify entity @s data.chick.carrier.missile.__motion set from storage chick:carrier/missile/__/-initialize <<.motion
## Set scoreboards.
scoreboard players set @s chick.tick 0
## Set tags.
tag @s add chick.carrier.missile

## Ride.
data modify storage egg:nog/ride <<uuid set from storage chick:carrier/missile/__/-initialize <<.instance
function egg:nog/ride

## Success.
return 1