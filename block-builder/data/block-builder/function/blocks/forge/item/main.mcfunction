execute if score @s block-builder.item_count matches 9.. run return run function block-builder:blocks/forge/smelt/main

scoreboard players operation $global block-builder.item_count = @n[type=item_display,tag=block-builder.forge,distance=..2] block-builder.item_count
execute at @n[type=item_display,tag=block-builder.forge,distance=..2] summon minecraft:item_display run function block-builder:blocks/forge/item/place_in_slot
scoreboard players operation @n[type=item_display,tag=block-builder.forge,distance=..2] block-builder.item_count = $global block-builder.item_count