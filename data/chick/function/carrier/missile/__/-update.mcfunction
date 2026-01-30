## Get motion rate.
scoreboard players operation #chick:carrier/missile/-update|rate -- = @s chick.tick
execute if score #chick:carrier/missile/-update|rate -- matches 100.. run scoreboard players set #chick:carrier/missile/-update|rate -- 100

## Set motion.
data modify storage egg:nog/scale_motion <<motion set from entity @s data.chick.carrier.missile.__motion
execute store result storage egg:nog/scale_motion <<scale double 0.01 run scoreboard players get #chick:carrier/missile/-update|rate --
function egg:nog/scale_motion
data modify entity @s Motion set from storage egg:nog/scale_motion >>motion

## Update tick.
scoreboard players add @s chick.tick 1
## Continue.
return 1