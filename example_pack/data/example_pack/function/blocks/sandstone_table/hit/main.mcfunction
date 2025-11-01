scoreboard players set $hit_sandstone_table_check example_pack.sandstone_table.dummy 0

tag @s add example_pack.hit_sandstone_table
execute as @e[type=minecraft:interaction,tag=example_pack.sandstone_table_interaction_base,distance=..20,sort=nearest] run function example_pack:blocks/sandstone_table/hit/check
tag @s remove example_pack.hit_sandstone_table