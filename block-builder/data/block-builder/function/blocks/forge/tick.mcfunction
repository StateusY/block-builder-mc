execute if score @s block-builder.hit_count matches 1.. run function block-builder:blocks/forge/break/check

# break if improper floor
#execute unless block ~ ~ ~ minecraft:barrier run function block-builder:blocks/forge/break/break
#execute if block ~ ~-1 ~ #block-builder:blocks run function block-builder:blocks/forge/break/break

execute if entity @s[tag=block-builder.smelting] run function block-builder:blocks/forge/smelt/process