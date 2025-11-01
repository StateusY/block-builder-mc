execute if score $hit_sandstone_table_check default_namespace.dummy matches 1 run return fail

execute on attacker if entity @s[tag=default_namespace.hit_sandstone_table] run scoreboard players set $hit_sandstone_table_check default_namespace.dummy 1
execute if score $hit_sandstone_table_check default_namespace.dummy matches 1 run data remove entity @s attack
execute if score $hit_sandstone_table_check default_namespace.dummy matches 1 on vehicle run scoreboard players add @s default_namespace.hit_count 1
execute if score $hit_sandstone_table_check default_namespace.dummy matches 1 on vehicle at @s run playsound minecraft:block.stone.hit block @a ~ ~ ~ 1 2
execute if score $hit_sandstone_table_check default_namespace.dummy matches 1 on vehicle at @s run particle minecraft:item{item:{id:"minecraft:sandstone"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 5