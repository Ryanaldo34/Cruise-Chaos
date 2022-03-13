scoreboard objectives add npc dummy
scoreboard objectives add quest dummy
scoreboard objectives add seq dummy
scoreboard objectives add seq_tl dummy
scoreboard objectives add fires dummy
scoreboard players set @a quest 0
scoreboard players set @a seq 0
scoreboard objectives setdisplay sidebar
say resetting
gamemode a @a
kill @e[type=gus:npc_2]
summon gus:npc_2 890 67 606 minecraft:entity_spawned §4Commander
replaceitem block 930 65 519 slot.container 23 cc:fuel_canister 1 0
replaceitem block 924 95 651 slot.container 14 cc:searchlight 1 0
replaceitem block 1078 87 568 slot.container 7 cc:key 1 0
event entity @e[type=gus:npc_2] minecraft:entity_spawned
tag @e remove compass
tag @e remove already_triggered_q2
tag @e remove stop_scene
tag @e remove scene4_opened
tag @e remove gotten_to_heli
tag @e remove already_triggered_all
tag @e remove gotten_all
tag @e remove intro_triggered
tag @e remove commander_intro_triggered
tag @e remove collecting_parts
tag @e remove q2_triggered
tag @e remove q3_triggered
tag @e remove q4_triggered
tag @e remove q4_ended
tag @e remove q5_triggered
tag @e remove q3_1
tag @e remove q3_2
tag @e remove q3_3
tag @e remove c3_1
tag @e remove c3_2
tag @e remove c3_3
tag @e remove q5_1
tag @e remove q5_2
tag @e remove q5_3
tag @e remove q5_4
tag @e remove q5_5
tag @e remove q5_complete
tag @e remove fires_out
tag @e remove game_complete
tag @e remove q5_end_scene
tag @e remove q5_leave
clear @a
tp @a 864 64 554
tp @e[type=gus:npc_1] 865 65 543
kill @e[type=cc:speedboat]
kill @e[type=cc:helicopter]
kill @e[type=cc:fire]
kill @e[family=dummy]
# reset the ship
fill 265 86 -67 255 52 -111 air -1 replace fire 0
fill 255 52 -111 245 86 -67 air -1 replace fire 0
fill 245 86 -67 235 52 -111 air -1 replace fire 0
fill 235 52 -111 225 86 -67 air -1 replace fire 0
fill 225 86 -67 215 52 -111 air -1 replace fire 0
fill 215 52 -111 205 86 -67 air -1 replace fire 0
fill 205 86 -67 195 52 -111 air -1 replace fire 0
fill 195 52 -111 185 86 -67 air -1 replace fire 0
fill 185 86 -67 175 52 -111 air -1 replace fire 0
fill 175 52 -111 165 86 -67 air -1 replace fire 0
fill 165 86 -67 155 52 -111 air -1 replace fire 0
fill 155 52 -111 145 86 -67 air -1 replace fire 0
fill 145 86 -67 130 52 -111 air -1 replace fire 0
fill 130 52 -111 115 86 -67 air -1 replace fire 0
fill 115 86 -67 100 52 -111 air -1 replace fire 0
fill 100 52 -111 85 86 -67 air -1 replace fire 0
fill 85 86 -67 70 52 -111 air -1 replace fire 0
fill 70 52 -67 55 86 -111 air -1 replace fire 0