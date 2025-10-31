data modify storage block-builder:temp forge.Items set value []
execute on passengers if entity @s[type=minecraft:item_display,tag=block-builder.forge_item] run function block-builder:blocks/forge/smelt/item_check
execute store result score $forge_item_count block-builder.dummy run data get storage block-builder:temp forge.Items
