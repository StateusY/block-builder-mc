# remove setup item frame
kill @s

# play place block sound
playsound minecraft:block.stone.place block @a ~ ~ ~ 1 2

# spawn the block's item display
execute unless block ~ ~ ~ #minecraft:air run return run loot spawn ~ ~ ~ loot default_namespace:blocks/sandstone_table
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[tag=smithed.block,distance=..0.1] at @s run return run loot spawn ~ ~ ~ loot default_namespace:blocks/sandstone_table

setblock ~ ~ ~ minecraft:barrier

# rotate to player orientation
data modify storage default_namespace:temp rotation set value 0
execute store result score $player_rotation default_namespace.sandstone_table.dummy run data get entity @p[advancements={default_namespace:blocks/item_frame=true}] Rotation[0]
execute if score $player_rotation default_namespace.sandstone_table.dummy matches 135..180 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage default_namespace:temp rotation set value 90
execute if score $player_rotation default_namespace.sandstone_table.dummy matches -180..-135 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage default_namespace:temp rotation set value 90
execute if score $player_rotation default_namespace.sandstone_table.dummy matches -135..-45 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage default_namespace:temp rotation set value 180
execute if score $player_rotation default_namespace.sandstone_table.dummy matches -45..45 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage default_namespace:temp rotation set value -90
execute if score $player_rotation default_namespace.sandstone_table.dummy matches 45..135 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage default_namespace:temp rotation set value 0

# run data to macro
function default_namespace:blocks/sandstone_table/macro with storage default_namespace:temp
scoreboard players set @n[type=minecraft:item_display,tag=default_namespace.sandstone_table] default_namespace.sandstone_table.hit_count 0
scoreboard players set @n[type=minecraft:item_display,tag=default_namespace.sandstone_table] default_namespace.sandstone_table.hit_timer 0