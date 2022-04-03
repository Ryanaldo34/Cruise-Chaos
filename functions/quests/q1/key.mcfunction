dialogue open @e[type=gus:npc_1] @p[tag=!intro_triggered] intro
execute @p[tag=!intro_triggered] ~~~ execute @e[type=gus:npc_1] ~~~ playsound voice_lines.charlie.charlie_q1_lines @p ~~~ 0.7 1.0
tag @a add intro_triggered
scoreboard players set @a quest 1
scoreboard players set @a seq 1