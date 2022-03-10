# ending sequence for the first quest
tp @e[type=gus:npc_2,scores={npc=!2}] 890.5 212.0 605.5
tp @e[type=gus:npc_2,scores={npc=2}] 890.5 67.5 606.0
setworldspawn 966 255 514
title @a subtitle §6Realign the Satellite Dish
function quests/on/start
scoreboard players set @a quest 2
scoreboard players set @a seq 1