scoreboard players add @s block-builder.smelt_time 1

execute if score @s block-builder.smelt_time matches 1 run playsound minecraft:block.smithing_table.use block @a ~ ~ ~ 1 0.8

execute if score @s block-builder.smelt_time matches 10.. run tag @s remove block-builder.smelting
execute if score @s block-builder.smelt_time matches 10.. run function block-builder:blocks/forge/smelt/finish with entity @s item.components."minecraft:custom_data".block-builder
execute if score @s block-builder.smelt_time matches 10.. run scoreboard players set @s block-builder.smelt_time 0