scoreboard objectives add quest dummy
scoreboard objectives add seq dummy
scoreboard objectives add fires dummy
scoreboard players set @a quest 0
scoreboard players set @a seq 0
scoreboard objectives setdisplay sidebar
say resetting
gamemode a @a
kill @e[type=gus:npc_2]
summon gus:npc_2 890 67 606 minecraft:entity_spawned §4Commander
event entity @e[type=gus:npc_2] minecraft:entity_spawned
tag @e remove compass
tag @e remove q1_ended
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
tag @e remove q2_returned
tag @e remove in_harbour
tag @e remove in_town
tag @e remove can_play
spawnpoint @a 864 64 554
clear @a
tp @a 864 64 554
tp @e[type=gus:npc_1] 865 65 543
kill @e[type=cc:helicopter]
kill @e[type=cc:fire]
kill @e[family=dummy]
# reset satellite
setblock 950 59 526 air
fill 958 105 522 949 94 513 air
clone 1003 43 527 992 58 540 951 91 517 masked normal
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
# rest the engine room door
setblock 202 52 -87 iron_block
setblock 202 53 -87 iron_block
setblock 202 54 -87 iron_block
setblock 202 55 -87 iron_block
setblock 202 52 -88 iron_block
setblock 202 53 -88 stained_glass 8
setblock 202 54 -88 stained_glass 8
setblock 202 55 -88 iron_block
setblock 202 52 -89 iron_block
setblock 202 53 -89 iron_block
setblock 202 54 -89 iron_block
setblock 202 55 -89 iron_block
setblock 203 53 -89 iron_bars
setblock 203 54 -89 iron_bars