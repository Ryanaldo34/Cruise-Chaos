dialogue open @e[type=gus:npc_2,c=1] @a[tag=!collecting_parts] qtwo_return
execute @a[scores={seq=2}] ~~~ title @a subtitle §6Realign the Satellite Dish
execute @a[scores={seq=2}] ~~~ function quests/on/complete
scoreboard players set @a seq 3
tag @a remove commander_intro_triggered
tag @a add collecting_parts