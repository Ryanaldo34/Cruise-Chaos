# ending sequence for the first quest
setworldspawn 966 255 514
title @a subtitle §6Realign the Satellite Dish
execute @a[tag=!q2_triggered] ~~~ function quests/on/start
tag @a add q2_triggered
scoreboard players set @a quest 2
scoreboard players set @a seq 1