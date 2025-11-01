execute on passengers run kill @s
execute as @e[type=interaction,distance=..0.65,tag=default_namespace.sandstone_table_interaction] run kill @s
kill @s

setblock ~ ~ ~ minecraft:air replace
playsound minecraft:block.stone.break block @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:sandstone"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 20

loot spawn ~ ~ ~ loot default_namespace:blocks/sandstone_table