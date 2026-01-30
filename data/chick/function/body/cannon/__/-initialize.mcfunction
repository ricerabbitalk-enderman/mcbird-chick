## Set data.
data modify entity @s data merge value {chick:{body:{cannon:{}}}}
data modify entity @s data.chick.body.cannon.__new_bullet_body set from storage chick:body/cannon/__/-initialize <<.new_bullet_body
data modify entity @s data.chick.body.cannon.__new_bullet_carrier set from storage chick:body/cannon/__/-initialize <<.new_bullet_carrier
## Set tags.
tag @s add chick.body.cannon

## Sound.
execute at @s run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1.5 0.5

## Success.
return 1