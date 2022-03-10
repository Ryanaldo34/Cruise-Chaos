execute @p ~~~ tickingarea add -50 60 115 840 69 170 q5
execute @p ~~~ title @a subtitle §6Put out the Fires
execute @p ~~~ function quests/on/start
execute @p ~~~ scoreboard objectives setdisplay sidebar fires
execute @p ~~~ scoreboard players set @s quest 5
execute @p ~~~ scoreboard players set @s seq 1