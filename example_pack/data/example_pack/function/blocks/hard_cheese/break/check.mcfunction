execute if score @s example_pack.hard_cheese.hit_timer matches 60 run scoreboard players set @s example_pack.hard_cheese.hit_count 0
execute if score @s example_pack.hard_cheese.hit_timer matches 60 run return run scoreboard players set @s example_pack.hard_cheese.hit_timer 0
execute if score @s example_pack.hard_cheese.hit_count matches 1..9 run return run scoreboard players add @s example_pack.hard_cheese.hit_timer 1

function example_pack:blocks/hard_cheese/break/break