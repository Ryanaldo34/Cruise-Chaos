execute @p[tag=!q4_ended] ~~~ scoreboard objectives remove fires
execute @p[tag=!q4_ended] ~~~ scoreboard objectives remove fire_display
execute @p[tag=!q4_ended] ~~~ scoreboard objectives add fires dummy
execute @p[tag=!q4_ended] ~~~ scoreboard objectives add fire_display dummy "§gShip Fires"
execute @p[tag=!q4_ended] ~~~ scoreboard objectives setdisplay sidebar fire_display
execute @p ~~~ title @a subtitle §6Put out the Fires
execute @p[tag=!q4_ended] ~~~ function quests/on/start
execute @p[tag=!q4_ended] ~~~ scoreboard players set @s quest 5
execute @p[tag=!q4_ended] ~~~ scoreboard players set @s seq 1
tag @a add q4_ended