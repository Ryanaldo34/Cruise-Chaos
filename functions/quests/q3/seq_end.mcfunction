# transition from quest 3 to quest 4
execute @p[tag=!q4_triggered] ~~~ summon cc:helicopter 915 65 641
execute @p ~~~ setworldspawn 915 65 641
execute @p ~~~ title @a subtitle §6Find the Helicopter to Fly to the Cruise Ship
execute @p[tag=!q4_triggered] ~~~ function quests/on/start
tag @p add q4_triggered
execute @p ~~~ scoreboard players set @a quest 4
execute @p ~~~ scoreboard players set @a seq 1
execute @a[tag=q4_triggered] ~~~ function entity/replenish_player