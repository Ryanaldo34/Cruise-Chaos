setworldspawn 966 255 514
title @a subtitle §6Find the Helicopter Parts
execute @a[tag=!q3_triggered] ~~~ function quests/on/start
tag @a add q3_triggered
execute @p[tag=q3_triggered] ~~~ replaceitem block 930 65 519 slot.container 23 cc:fuel_canister
execute @p[tag=q3_triggered] ~~~ replaceitem block 924 95 651 slot.container 14 cc:searchlight
execute @p[tag=q3_triggered] ~~~ replaceitem block 1197 100 647 slot.container 7 cc:key
dialogue change @e[type=gus:npc_2] q3_hint @a
scoreboard players set @a quest 3
scoreboard players set @a seq 1