data modify storage chick:sorcery/creeper_cannon shock set value {name:"egg:shock/give_to_oppositions",data:{scale:4,yv:2}}
data modify storage chick:sorcery/creeper_cannon shock.data.source set from entity @s UUID
execute if items entity @s weapon.mainhand minecraft:wooden_axe run data modify storage chick:sorcery/creeper_cannon shock.data merge value {distance:4,amount:4}
execute if items entity @s weapon.mainhand minecraft:stone_axe run data modify storage chick:sorcery/creeper_cannon shock.data merge value {distance:6,amount:5}
execute if items entity @s weapon.mainhand minecraft:copper_axe run data modify storage chick:sorcery/creeper_cannon shock.data merge value {distance:10,amount:6}
execute if items entity @s weapon.mainhand minecraft:iron_axe run data modify storage chick:sorcery/creeper_cannon shock.data merge value {distance:12,amount:8}
execute if items entity @s weapon.mainhand minecraft:golden_axe run data modify storage chick:sorcery/creeper_cannon shock.data merge value {distance:24,amount:4}
execute if items entity @s weapon.mainhand minecraft:diamond_axe run data modify storage chick:sorcery/creeper_cannon shock.data merge value {distance:16,amount:12}
execute if items entity @s weapon.mainhand minecraft:netherite_axe run data modify storage chick:sorcery/creeper_cannon shock.data merge value {distance:24,amount:16}

execute if items entity @s weapon.mainhand minecraft:wooden_sword run data modify storage chick:sorcery/creeper_cannon shock.data merge value {distance:4,amount:4}
execute if items entity @s weapon.mainhand minecraft:stone_sword run data modify storage chick:sorcery/creeper_cannon shock.data merge value {distance:6,amount:5}
execute if items entity @s weapon.mainhand minecraft:copper_sword run data modify storage chick:sorcery/creeper_cannon shock.data merge value {distance:8,amount:6}
execute if items entity @s weapon.mainhand minecraft:iron_sword run data modify storage chick:sorcery/creeper_cannon shock.data merge value {distance:10,amount:8}
execute if items entity @s weapon.mainhand minecraft:golden_sword run data modify storage chick:sorcery/creeper_cannon shock.data merge value {distance:16,amount:4}
execute if items entity @s weapon.mainhand minecraft:diamond_sword run data modify storage chick:sorcery/creeper_cannon shock.data merge value {distance:12,amount:10}
execute if items entity @s weapon.mainhand minecraft:netherite_sword run data modify storage chick:sorcery/creeper_cannon shock.data merge value {distance:16,amount:12}

execute if items entity @s weapon.mainhand minecraft:wooden_axe run data modify storage chick:sorcery/creeper_cannon impact set value {name:"chick:impact/explosion_small",data:{}}
execute if items entity @s weapon.mainhand minecraft:stone_axe run data modify storage chick:sorcery/creeper_cannon impact set value {name:"chick:impact/explosion_small",data:{}}
execute if items entity @s weapon.mainhand minecraft:copper_axe run data modify storage chick:sorcery/creeper_cannon impact set value {name:"chick:impact/explosion_medium",data:{}}
execute if items entity @s weapon.mainhand minecraft:iron_axe run data modify storage chick:sorcery/creeper_cannon impact set value {name:"chick:impact/explosion_medium",data:{}}
execute if items entity @s weapon.mainhand minecraft:golden_axe run data modify storage chick:sorcery/creeper_cannon impact set value {name:"chick:impact/explosion_medium",data:{}}
execute if items entity @s weapon.mainhand minecraft:diamond_axe run data modify storage chick:sorcery/creeper_cannon impact set value {name:"chick:impact/explosion_large",data:{}}
execute if items entity @s weapon.mainhand minecraft:netherite_axe run data modify storage chick:sorcery/creeper_cannon impact set value {name:"chick:impact/explosion_large",data:{}}

execute if items entity @s weapon.mainhand minecraft:wooden_sword run data modify storage chick:sorcery/creeper_cannon impact set value {name:"chick:impact/explosion_small",data:{}}
execute if items entity @s weapon.mainhand minecraft:stone_sword run data modify storage chick:sorcery/creeper_cannon impact set value {name:"chick:impact/explosion_small",data:{}}
execute if items entity @s weapon.mainhand minecraft:copper_sword run data modify storage chick:sorcery/creeper_cannon impact set value {name:"chick:impact/explosion_medium",data:{}}
execute if items entity @s weapon.mainhand minecraft:iron_sword run data modify storage chick:sorcery/creeper_cannon impact set value {name:"chick:impact/explosion_medium",data:{}}
execute if items entity @s weapon.mainhand minecraft:golden_sword run data modify storage chick:sorcery/creeper_cannon impact set value {name:"chick:impact/explosion_medium",data:{}}
execute if items entity @s weapon.mainhand minecraft:diamond_sword run data modify storage chick:sorcery/creeper_cannon impact set value {name:"chick:impact/explosion_large",data:{}}
execute if items entity @s weapon.mainhand minecraft:netherite_sword run data modify storage chick:sorcery/creeper_cannon impact set value {name:"chick:impact/explosion_large",data:{}}

data modify storage chick:sorcery/creeper_cannon new_bullet_body set value {name:"chick:body/bullet/new", data:{lifetime:800}}
data modify storage chick:sorcery/creeper_cannon new_bullet_body.data.shock set from storage chick:sorcery/creeper_cannon shock
data modify storage chick:sorcery/creeper_cannon new_bullet_body.data.impact set from storage chick:sorcery/creeper_cannon impact

execute if items entity @s weapon.mainhand #minecraft:swords run data modify storage chick:sorcery/creeper_cannon new_bullet_carrier set value {name:"chick:carrier/parabola/new", data:{velocity:2.0}}
execute if items entity @s weapon.mainhand #minecraft:axes run data modify storage chick:sorcery/creeper_cannon new_bullet_carrier set value {name:"chick:carrier/missile/new", data:{velocity:2.0}}

data modify storage chick:sorcery/creeper_cannon new_body set value {name:"chick:body/cannon/new",data:{}}
data modify storage chick:sorcery/creeper_cannon new_body.data.new_bullet_body set from storage chick:sorcery/creeper_cannon new_bullet_body
data modify storage chick:sorcery/creeper_cannon new_body.data.new_bullet_carrier set from storage chick:sorcery/creeper_cannon new_bullet_carrier

## New body.
data modify storage egg:pack/call <<pack set from storage chick:sorcery/creeper_cannon new_body
function egg:pack/call

## Success.
return 1
