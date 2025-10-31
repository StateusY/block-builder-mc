# exit if slot is wrong number of is occupied
$execute unless score $global block-builder.selected_slot matches $(slot) if score @n[type=item_display,tag=block-builder.forge,distance=..2] block-builder.occupied_slot_$(slot) matches 1 run return fail


# set item_count and occupied_slot
scoreboard players add $global block-builder.item_count 1
$scoreboard players set @n[type=item_display,tag=block-builder.forge,distance=..2,sort=nearest] block-builder.occupied_slot_$(slot) 1

# Slot Placement
execute if score $global block-builder.selected_slot matches 1 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[-0.315f,0.5f,0.315f]},Tags:["block-builder.forge_item","block-builder.forge_1"],interpolation_duration:3,teleport_duration:2}

execute if score $global block-builder.selected_slot matches 2 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[-0.315f,0.5f,0f]},Tags:["block-builder.forge_item","block-builder.forge_2"],interpolation_duration:3,teleport_duration:2}

execute if score $global block-builder.selected_slot matches 3 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[-0.315f,0.5f,-0.315f]},Tags:["block-builder.forge_item","block-builder.forge_3"],interpolation_duration:3,teleport_duration:2}

execute if score $global block-builder.selected_slot matches 4 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[0f,0.5f,0.315f]},Tags:["block-builder.forge_item","block-builder.forge_4"],interpolation_duration:3,teleport_duration:2}

execute if score $global block-builder.selected_slot matches 5 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[0f,0.5f,0f]},Tags:["block-builder.forge_item","block-builder.forge_5"],interpolation_duration:3,teleport_duration:2}

execute if score $global block-builder.selected_slot matches 6 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[0f,0.5f,-0.315f]},Tags:["block-builder.forge_item","block-builder.forge_6"],interpolation_duration:3,teleport_duration:2}

execute if score $global block-builder.selected_slot matches 7 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[0.315f,0.5f,0.315f]},Tags:["block-builder.forge_item","block-builder.forge_7"],interpolation_duration:3,teleport_duration:2}

execute if score $global block-builder.selected_slot matches 8 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[0.315f,0.5f,0f]},Tags:["block-builder.forge_item","block-builder.forge_8"],interpolation_duration:3,teleport_duration:2}

execute if score $global block-builder.selected_slot matches 9 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[0.315f,0.5f,-0.315f]},Tags:["block-builder.forge_item","block-builder.forge_9"],interpolation_duration:3,teleport_duration:2}
