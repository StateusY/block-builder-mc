execute if score @s default_namespace.hit_timer matches 60 run scoreboard players set @s default_namespace.hit_count 0
execute if score @s default_namespace.hit_timer matches 60 run return run scoreboard players set @s default_namespace.hit_timer 0
execute if score @s default_namespace.hit_count matches 1..2 run return run scoreboard players add @s default_namespace.hit_timer 1

function default_namespace:blocks/sandstone_table/break/break