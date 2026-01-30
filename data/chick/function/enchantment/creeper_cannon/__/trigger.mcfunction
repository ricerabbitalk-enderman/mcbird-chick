## Get input state.
execute store result score #chick:enchantment/creeper_cannon/-axe|triggered -- run function egg:input/-triggered

## Wither skull.
execute if score #chick:enchantment/creeper_cannon/-axe|triggered -- matches 5.. \
  at @s positioned ~ ~1.62 ~ positioned ^ ^ ^2 run return run function chick:enchantment/creeper_cannon/__/call

## Success.
return 1