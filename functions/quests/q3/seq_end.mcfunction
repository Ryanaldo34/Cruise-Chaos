# transition from quest 3 to quest 4
execute @p[tag=!q4_triggered] ~~~ summon cc:speedboat 865 62 656
execute @p ~~~ setworldspawn 865 255 656
execute @p ~~~ title @a subtitle §6Find the Boat to Sail to the Cruise Ship
execute @p[tag=!q4_triggered] ~~~ function quests/on/start
tag @p add q4_triggered
execute @p ~~~ scoreboard players set @a quest 4
execute @p ~~~ scoreboard players set @a seq 1