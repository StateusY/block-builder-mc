execute if score $forge_item_count block-builder.dummy matches 9 \
        if function block-builder:blocks/forge/smelt/generic/iron_ingot if score $iron_ingot_count block-builder.dummy matches 9 \
        if function block-builder:blocks/forge/smelt/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".block-builder.smelt_callback set value "block-builder:recipes/forge/iron_block"

execute if score $forge_item_count block-builder.dummy matches 1 \
        if data storage block-builder:temp forge.Items[{id:"minecraft:iron_block"}] \
        if function block-builder:blocks/forge/smelt/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".block-builder.smelt_callback set value "block-builder:recipes/forge/iron_ingot"

# execute if score $forge_item_count block-builder.dummy matches 1 \
#         if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{block-builder:{ingredient:{type:"crystalline_mythril"}}}}}] \
#         if function block-builder:blocks/forge/smelt/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".block-builder.smelt_callback set value "block-builder:recipes/forge/mythril_gem"
