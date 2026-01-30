## New body.
data modify storage egg:pack/call <<pack set from entity @s data.chick.body.cannon.__new_bullet_body
function egg:pack/call

## New carrier.
data modify storage egg:pack/call <<pack set from entity @s data.chick.body.cannon.__new_bullet_carrier
data modify storage egg:pack/call <<pack.data.instance set from storage egg:pack/call >>uuid
function egg:pack/call

## Sound.
execute at @s run playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1.5 0.5
## Particle.
execute at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.05 8
execute at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 16

## Success.
return 1
