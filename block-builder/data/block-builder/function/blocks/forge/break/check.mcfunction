execute if score @s block-builder.hit_timer matches 60 run scoreboard players set @s block-builder.hit_count 0
execute if score @s block-builder.hit_timer matches 60 run return run scoreboard players set @s block-builder.hit_timer 0
execute if score @s block-builder.hit_count matches 1..2 run return run scoreboard players add @s block-builder.hit_timer 1

function block-builder:blocks/forge/break/break