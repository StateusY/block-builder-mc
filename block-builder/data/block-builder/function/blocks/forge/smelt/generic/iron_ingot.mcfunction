scoreboard players set $iron_ingot_count block-builder.dummy 0

execute store result score $iron_ingot_count block-builder.dummy run data remove storage block-builder:temp forge.Items[{id:"minecraft:iron_ingot"}]

return 1