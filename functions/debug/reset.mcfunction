scoreboard objectives add npc dummy
scoreboard objectives add quest dummy
scoreboard objectives add seq dummy
scoreboard objectives add seq_tl dummy
scoreboard objectives add fires dummy
scoreboard players set @a quest 0
scoreboard players set @a seq 0
scoreboard objectives setdisplay sidebar
tickingarea remove q5
say resetting
gamemode a @a
kill @e[type=gus:npc_2]
summon gus:npc_2 890 67 606 minecraft:entity_spawned
replaceitem block 930 65 519 slot.container 23 emerald  1 0
replaceitem block 924 95 651 slot.container 14 gold_ingot 1 0
replaceitem block 1078 87 568 slot.container 7 diamond 1 0
event entity @e[type=gus:npc_2] minecraft:entity_spawned
tag @e remove compass
tag @e remove already_triggered_q2
tag @e remove stop_scene
tag @e remove scene4_opened
tag @e remove gotten_to_boat
tag @e remove already_triggered_all
tag @e remove gotten_all
tag @e remove intro_triggered
tag @e remove commander_intro_triggered
tag @e remove collecting_parts
tag @e remove q3_1
tag @e remove q3_2
tag @e remove q3_3
tag @e remove c3_1
tag @e remove c3_2
tag @e remove c3_3
tag @e remove q5_1
tag @e remove q5_2
clear @a
tp @a 1257 113 638
tp @e[type=gus:npc_2,scores={npc=!1}] 890.5 212.0 605.5
tp @e[type=gus:npc_2,scores={npc=1}] 890.5 67.5 606.0
kill @e[type=cc:speedboat]
kill @e[type=cc:helicopter]