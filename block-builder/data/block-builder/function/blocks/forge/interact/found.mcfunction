data remove entity @s interaction

execute on vehicle if entity @s[tag=block-builder.smelting] run return fail

execute if entity @p[tag=block-builder.interact_forge,predicate=block-builder:sneaking] on vehicle on passengers if entity @s[type=minecraft:item_display,tag=block-builder.forge_item] on vehicle at @s run return run function block-builder:blocks/forge/item/clear
execute unless items entity @p[tag=block-builder.interact_forge] weapon.mainhand * on vehicle on passengers if entity @s[type=minecraft:item_display,tag=block-builder.forge_item] on vehicle at @s run return run function block-builder:blocks/forge/smelt/main
execute if items entity @p[tag=block-builder.interact_forge] weapon.mainhand * at @s run return run function block-builder:blocks/forge/item/main