# runs when the fires are to be extinguished
execute @s[family=engine_room,tag=can_ignite] ~~~ scoreboard players remove @e[type=cc:engine_room] fires 1
execute @s[family=engine_room,tag=can_ignite] ~~~ scoreboard players remove "Engine Room" fire_display 1

execute @s[family=jazz_club,tag=can_ignite] ~~~ scoreboard players remove @e[type=cc:jazz_club] fires 1
execute @s[family=jazz_club,tag=can_ignite] ~~~ scoreboard players remove "Jazz Sticks Club" fire_display 1

execute @s[family=shopping_mall,tag=can_ignite] ~~~ scoreboard players remove @e[type=cc:shopping_mall] fires 1
execute @s[family=shopping_mall,tag=can_ignite] ~~~ scoreboard players remove "Shopping Mall" fire_display 1

execute @s[family=kitchen,tag=can_ignite] ~~~ scoreboard players remove @e[type=cc:kitchen] fires 1
execute @s[family=kitchen,tag=can_ignite] ~~~ scoreboard players remove "Posh Restaurant Kitchen" fire_display 1

execute @s[family=suite,tag=can_ignite] ~~~ scoreboard players remove @e[type=cc:suite] fires 1
execute @s[family=suite,tag=can_ignite] ~~~ scoreboard players remove "Random Suite" fire_display 1
execute @s ~~~ function entity/remove