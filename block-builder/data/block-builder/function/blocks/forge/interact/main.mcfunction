advancement revoke @s only block-builder:interact_forge

tag @s add block-builder.crafter_open

scoreboard players set $interact_forge_check block-builder.dummy 0

tag @s add block-builder.interact_forge
execute as @e[type=minecraft:interaction,tag=block-builder.forge_interaction,distance=..20] run function block-builder:blocks/forge/interact/check
tag @s remove block-builder.interact_forge