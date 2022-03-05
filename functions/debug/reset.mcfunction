scoreboard objectives add npc dummy
scoreboard objectives add quest dummy
scoreboard objectives add seq dummy
scoreboard objectives add seq_tl dummy
scoreboard objectives add fires dummy
scoreboard players set @e[name=main] quest 0
scoreboard players set @e[name=main] seq 0
scoreboard players set @e[name=main] seq_tl -1
scoreboard objectives setdisplay sidebar
tickingarea remove q5
tag @e remove give_hint
tag @e remove already_triggered_q2
tag @e remove already_triggered_all
tag @e remove gotten_all
tag @e remove q2_1
tag @e remove q2_2
tag @e remove q3_1
tag @e remove q3_2
tag @e remove q3_3
tag @e remove c3_1
tag @e remove c3_2
tag @e remove c3_3
tag @e remove q5_1
tag @e remove q5_2
tag @e remove c5_3
tag @e remove c5_4
tag @e remove c5_5
clear @a
tp @a 1257 113 638
tp @e[type=gus:npc_2,scores={npc=!1}] 890.5 212.0 605.5
tp @e[type=gus:npc_2,scores={npc=1}] 890.5 67.5 606.0