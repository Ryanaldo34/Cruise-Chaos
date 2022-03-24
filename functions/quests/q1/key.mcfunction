dialogue open @e[type=gus:npc_1] @a[tag=!intro_triggered] intro
execute @p[tag=!intro_triggered] ~~~ playsound voice_lines.charlie.charlie_q1_lines @a
tag @a add intro_triggered
scoreboard players set @a quest 1
scoreboard players set @a seq 1