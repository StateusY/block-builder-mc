scoreboard players set $hit_hard_cheese_check example_pack.hard_cheese.dummy 0

tag @s add example_pack.hit_hard_cheese
execute as @e[type=minecraft:interaction,tag=example_pack.hard_cheese_interaction_base,distance=..20,sort=nearest] run function example_pack:blocks/hard_cheese/hit/check
tag @s remove example_pack.hit_hard_cheese