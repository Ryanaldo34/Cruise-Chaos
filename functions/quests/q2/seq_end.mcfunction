tp @e[type=gus:npc_2,scores={npc=!3}]890.5 212.0 605.5
tp @e[type=gus:npc_2,scores={npc=3}] 890.5 67.5 606.0
setworldspawn 966 255 514
title @a subtitle §6Find the Ship Parts
execute @a[tag=!q3_triggered] ~~~ function quests/on/start
scoreboard players set @a quest 3
scoreboard players set @a seq 1
tag @s add q3_triggered
dialogue change @e[type=gus:npc_2] q3_hint @p