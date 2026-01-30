## Set data.
#data modify entity @s Item set value {id:"minecraft:ghast_tear",count:1}
data modify entity @s Motion set from storage chick:carrier/parabola/__/-initialize <<.motion
## Set tags.
tag @s add chick.carrier.parabola

## Ride.
data modify storage egg:nog/ride <<uuid set from storage chick:carrier/parabola/__/-initialize <<.instance
function egg:nog/ride

## Success.
return 1