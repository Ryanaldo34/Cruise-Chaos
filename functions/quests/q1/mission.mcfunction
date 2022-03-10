dialogue open @e[type=gus:npc_2,c=1] @a[tag=intro_triggered] qone_commander_intro
title @a subtitle §6Go to the Commander
execute @a[tag=!commander_intro_triggered] ~~~ function quests/on/complete
tag @a add commander_intro_triggered
tag @a remove intro_triggered