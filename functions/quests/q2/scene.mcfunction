execute @a[tag=commander_intro_triggered] ~~~ title @a subtitle §6Realign the Satellite Dish
execute @a[tag=commander_intro_triggered] ~~~ function quests/on/complete
execute @p[x=890,y=68,z=606,r=12] ~~~ tag @a remove commander_intro_triggered
execute @p[x=890,y=68,z=606,r=6] ~~~ dialogue open @e[type=gus:npc_2,c=1] @a qtwo_return
tag @a add collecting_parts