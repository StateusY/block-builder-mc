# /reload message
tellraw @a [{"text": "0 ","color": "white","font": "block-builder:icon","italic": false},{"translate":"block-builder.tooltip","font":"block-builder:tooltip","color":"white","italic":false},{text:" ","font":"minecraft:default"},{"translate":block-builder.loaded,"font":"minecraft:default"}]


# forge
scoreboard objectives add block-builder.dummy dummy
scoreboard objectives add block-builder.hit_count dummy
scoreboard objectives add block-builder.hit_timer dummy

scoreboard objectives add block-builder.selected_slot dummy
scoreboard objectives add block-builder.occupied_slots dummy
scoreboard objectives add block-builder.occupied_slot_1 dummy
scoreboard objectives add block-builder.occupied_slot_2 dummy
scoreboard objectives add block-builder.occupied_slot_3 dummy
scoreboard objectives add block-builder.occupied_slot_4 dummy
scoreboard objectives add block-builder.occupied_slot_5 dummy
scoreboard objectives add block-builder.occupied_slot_6 dummy
scoreboard objectives add block-builder.occupied_slot_7 dummy
scoreboard objectives add block-builder.occupied_slot_8 dummy
scoreboard objectives add block-builder.occupied_slot_9 dummy
scoreboard objectives add block-builder.item_count dummy
scoreboard objectives add block-builder.smelt_time dummy
scoreboard objectives add block-builder.rotation dummy
