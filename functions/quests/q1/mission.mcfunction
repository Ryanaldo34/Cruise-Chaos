execute @p[x=890,y=68,z=606,r=6,tag=!q1_ended] ~~~ dialogue open @e[type=gus:npc_2,c=1] @a qone_commander_intro
execute @p[x=890,y=68,z=606,r=6] ~~~ tag @a add q1_ended
title @a subtitle §6Go to the Commander
execute @p[tag=!commander_intro_triggered] ~~~ function quests/on/complete
tag @a add commander_intro_triggered
tag @a remove intro_triggered