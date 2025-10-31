scoreboard players set $hit_forge_check block-builder.dummy 0

tag @s add block-builder.hit_forge
execute if score $global block-builder.selected_slot matches 0 as @e[type=minecraft:interaction,tag=block-builder.forge_interaction_base,distance=..20,sort=nearest] run function block-builder:blocks/forge/hit/check
execute if score $global block-builder.selected_slot matches 1 as @e[type=minecraft:interaction,tag=block-builder.forge_interaction_slot_1,distance=..20,sort=nearest] run function block-builder:blocks/forge/hit/check
execute if score $global block-builder.selected_slot matches 2 as @e[type=minecraft:interaction,tag=block-builder.forge_interaction_slot_2,distance=..20,sort=nearest] run function block-builder:blocks/forge/hit/check
execute if score $global block-builder.selected_slot matches 3 as @e[type=minecraft:interaction,tag=block-builder.forge_interaction_slot_3,distance=..20,sort=nearest] run function block-builder:blocks/forge/hit/check
execute if score $global block-builder.selected_slot matches 4 as @e[type=minecraft:interaction,tag=block-builder.forge_interaction_slot_4,distance=..20,sort=nearest] run function block-builder:blocks/forge/hit/check
execute if score $global block-builder.selected_slot matches 5 as @e[type=minecraft:interaction,tag=block-builder.forge_interaction_slot_5,distance=..20,sort=nearest] run function block-builder:blocks/forge/hit/check
execute if score $global block-builder.selected_slot matches 6 as @e[type=minecraft:interaction,tag=block-builder.forge_interaction_slot_6,distance=..20,sort=nearest] run function block-builder:blocks/forge/hit/check
execute if score $global block-builder.selected_slot matches 7 as @e[type=minecraft:interaction,tag=block-builder.forge_interaction_slot_7,distance=..20,sort=nearest] run function block-builder:blocks/forge/hit/check
execute if score $global block-builder.selected_slot matches 8 as @e[type=minecraft:interaction,tag=block-builder.forge_interaction_slot_8,distance=..20,sort=nearest] run function block-builder:blocks/forge/hit/check
execute if score $global block-builder.selected_slot matches 9 as @e[type=minecraft:interaction,tag=block-builder.forge_interaction_slot_9,distance=..20,sort=nearest] run function block-builder:blocks/forge/hit/check
tag @s remove block-builder.hit_forge