scoreboard players set $hit_sandstone_table_check default_namespace.dummy 0

tag @s add default_namespace.hit_sandstone_table
execute as @e[type=minecraft:interaction,tag=default_namespace.sandstone_table_interaction_slot_2,distance=..20,sort=nearest] run function default_namespace:blocks/sandstone_table/hit/check
tag @s remove default_namespace.hit_sandstone_table