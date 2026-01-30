## Set data.
data modify entity @s data merge value {chick:{body:{bullet:{}}}}
data modify entity @s data.chick.body.bullet.__shock set from storage chick:body/bullet/__/-initialize <<.shock
data modify entity @s data.chick.body.bullet.__impact set from storage chick:body/bullet/__/-initialize <<.impact
## Set scoreboards.
execute store result score @s chick.tick run data get storage chick:body/bullet/__/-initialize <<.lifetime
## Set tags.
tag @s add chick.body.bullet

## Success.
return 1