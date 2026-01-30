## Unpack parameters.
execute if data storage egg:pack/call << \
  run data modify storage chick:carrier/missile/__/-initialize << set from storage egg:pack/call <<

## Get parameters.
execute unless data storage egg:pack/call << \
  run data modify storage chick:carrier/missile/__/-initialize << set from storage chick:carrier/missile/new <<

## Get motion.
data modify storage egg:3d/motion_from_rotation <<rotation set from entity @s Rotation
function egg:3d/motion_from_rotation
data modify storage egg:nog/scale_motion <<motion set from storage egg:3d/motion_from_rotation >>motion
data modify storage egg:nog/scale_motion <<scale set from storage chick:carrier/missile/__/-initialize <<.velocity
function egg:nog/scale_motion
data modify storage chick:carrier/missile/__/-initialize <<.motion set from storage egg:nog/scale_motion >>motion

## New.
execute positioned ~ ~-0.125 ~ summon minecraft:snowball \
  if function chick:carrier/missile/__/-initialize \
    run data modify storage chick:carrier/missile/new >>uuid set from entity @s UUID

## Set result.
data modify storage egg:pack/call >>uuid set from storage chick:carrier/missile/new >>uuid

## Success.
return 1