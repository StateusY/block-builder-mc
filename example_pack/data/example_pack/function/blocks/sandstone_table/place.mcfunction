# remove setup item frame
kill @s

# play place block sound
playsound minecraft:block.stone.place block @a ~ ~ ~ 1 2

# spawn the block's item display
execute unless block ~ ~ ~ #minecraft:air run return run loot spawn ~ ~ ~ loot example_pack:blocks/sandstone_table
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[tag=smithed.block,distance=..0.1] at @s run return run loot spawn ~ ~ ~ loot example_pack:blocks/sandstone_table

setblock ~ ~ ~ minecraft:barrier

# rotate to player orientation
data modify storage example_pack:temp rotation set value 0
execute store result score $player_rotation example_pack.dummy run data get entity @p[advancements={example_pack:blocks/item_frame=true}] Rotation[0]
execute if score $player_rotation example_pack.dummy matches 135..180 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage example_pack:temp rotation set value 90
execute if score $player_rotation example_pack.dummy matches -180..-135 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage example_pack:temp rotation set value 90
execute if score $player_rotation example_pack.dummy matches -135..-45 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage example_pack:temp rotation set value 180
execute if score $player_rotation example_pack.dummy matches -45..45 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage example_pack:temp rotation set value -90
execute if score $player_rotation example_pack.dummy matches 45..135 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage example_pack:temp rotation set value 0

# run data to macro
function example_pack:blocks/sandstone_table/macro with storage example_pack:temp
scoreboard players set @n[type=minecraft:item_display,tag=example_pack.sandstone_table] example_pack.sandstone_table.hit_count 0
scoreboard players set @n[type=minecraft:item_display,tag=example_pack.sandstone_table] example_pack.sandstone_table.hit_timer 0