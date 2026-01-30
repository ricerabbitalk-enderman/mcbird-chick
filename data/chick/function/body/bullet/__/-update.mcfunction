## Land.
execute unless function egg:nog/vehicle if function chick:body/bullet/__/-shock run return 0
## Timeout.
execute if function egg:animation/-finished if function chick:body/bullet/__/-shock run return 0

## Particle.
execute on vehicle at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.05 1

## Count donw.
scoreboard players remove @s chick.tick 1
## Continue.
return 1