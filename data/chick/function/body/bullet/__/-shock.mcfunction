## Shock.
data modify storage egg:pack/call <<pack set from entity @s data.chick.body.bullet.__shock
execute at @s positioned ~ ~0.625 ~ run function egg:pack/call

## Sound.
data modify storage egg:pack/call <<pack set from entity @s data.chick.body.bullet.__impact
execute at @s positioned ~ ~0.125 ~ run function egg:pack/call

## Success.
return 1