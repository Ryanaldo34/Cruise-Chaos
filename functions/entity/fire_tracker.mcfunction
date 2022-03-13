# used to track how many fires are in each room, runs when it is spawned
execute @s ~~~ detect ~~~ air -1 tag @s add can_ignite
execute @s[tag=can_ignite] ~~~ setblock ~~~ fire 0
execute @s[family=engine_room,tag=can_ignite] ~~~ scoreboard players add @e[type=cc:engine_room] fires 1
execute @s[family=engine_room,tag=can_ignite] ~~~ scoreboard players add "Engine Room" fire_display 1

execute @s[family=jazz_club,tag=can_ignite] ~~~ scoreboard players add @e[type=cc:jazz_club] fires 1
execute @s[family=jazz_club,tag=can_ignite] ~~~ scoreboard players add "Jazz Sticks Club" fire_display 1

execute @s[family=shopping_mall,tag=can_ignite] ~~~ scoreboard players add @e[type=cc:shopping_mall] fires 1
execute @s[family=shopping_mall,tag=can_ignite] ~~~ scoreboard players add "Shopping Mall" fire_display 1

execute @s[family=kitchen,tag=can_ignite] ~~~ scoreboard players add @e[type=cc:kitchen] fires 1
execute @s[family=kitchen,tag=can_ignite] ~~~ scoreboard players add "Posh Restaurant Kitchen" fire_display 1

execute @s[family=suite,tag=can_ignite] ~~~ scoreboard players add @e[type=cc:suite] fires 1
execute @s[family=suite,tag=can_ignite] ~~~ scoreboard players add "Random Suite" fire_display 1
execute @s[tag=!can_ignite] ~~~ function entity/remove