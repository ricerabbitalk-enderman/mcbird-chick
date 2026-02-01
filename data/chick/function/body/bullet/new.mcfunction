## Unpack parameters.
execute if data storage egg:pack/call << \
  run data modify storage chick:body/bullet/__/-initialize << set from storage egg:pack/call <<

## Get parameters.
execute unless data storage egg:pack/call << \
  run data modify storage chick:body/bullet/__/-initialize << set from storage chick:body/bullet/new <<

## New.
function #egg:bdengine/creeper_cannon_bullet
## Initialize.
data modify storage egg:model/-show <<looks set from storage egg:bdengine creeper_cannon_bullet
data modify storage egg:animation/-set << set value {repeat:0,path:creeper_cannon_bullet-launch}
execute as @e[tag=__uninitialized] \
  if function egg:model/-enable \
  if function egg:model/-rotate \
  if function egg:model/-show \
  if function egg:animation/-enable \
  if function egg:animation/-set \
  if function egg:animation/-play \
  if function chick:body/bullet/__/-initialize \
    run data modify storage chick:body/bullet/new >>uuid set from entity @s UUID
## Initailized.
tag @e[tag=__uninitialized] remove __uninitialized

## Set result to pack.
data modify storage egg:pack/call >>uuid set from storage chick:body/bullet/new >>uuid

## Success.
return 1