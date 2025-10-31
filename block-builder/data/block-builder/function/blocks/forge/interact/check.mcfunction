execute if score $interact_forge_check block-builder.dummy matches 1 run return fail

execute on target if entity @s[tag=block-builder.interact_forge] run scoreboard players set $interact_forge_check block-builder.dummy 1
execute if score $interact_forge_check block-builder.dummy matches 1 run function block-builder:blocks/forge/interact/found