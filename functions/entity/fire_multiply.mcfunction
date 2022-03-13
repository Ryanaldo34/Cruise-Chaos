# allows fire to spawn more direction
scoreboard objectives add direction dummy direction
scoreboard players random @s direction 1 8
execute @s[family=engine_room,scores={direction=1}] ~~~ summon cc:fire ~1~~ cc:engine_room
execute @s[family=engine_room,scores={direction=2}] ~~~ summon cc:fire ~1~~1 cc:engine_room
execute @s[family=engine_room,scores={direction=3}] ~~~ summon cc:fire ~~~1 cc:engine_room
execute @s[family=engine_room,scores={direction=4}] ~~~ summon cc:fire ~~~-1 cc:engine_room
execute @s[family=engine_room,scores={direction=5}] ~~~ summon cc:fire ~-1~~ cc:engine_room
execute @s[family=engine_room,scores={direction=6}] ~~~ summon cc:fire ~-1~~-1 cc:engine_room
execute @s[family=engine_room,scores={direction=7}] ~~~ summon cc:fire ~-1~~1 cc:engine_room
execute @s[family=engine_room,scores={direction=8}] ~~~ summon cc:fire ~1~~-1 cc:engine_room

execute @s[family=jazz_club,scores={direction=1}] ~~~ summon cc:fire ~1~~ cc:jazz_club
execute @s[family=jazz_club,scores={direction=2}] ~~~ summon cc:fire ~1~~1 cc:jazz_club
execute @s[family=jazz_club,scores={direction=3}] ~~~ summon cc:fire ~~~1 cc:jazz_club
execute @s[family=jazz_club,scores={direction=4}] ~~~ summon cc:fire ~~~-1 cc:jazz_club
execute @s[family=jazz_club,scores={direction=5}] ~~~ summon cc:fire ~-1~~ cc:jazz_club
execute @s[family=jazz_club,scores={direction=6}] ~~~ summon cc:fire ~-1~~-1 cc:jazz_club
execute @s[family=jazz_club,scores={direction=7}] ~~~ summon cc:fire ~-1~~1 cc:jazz_club
execute @s[family=jazz_club,scores={direction=8}] ~~~ summon cc:fire ~1~~-1 cc:jazz_club

execute @s[family=suite,scores={direction=1}] ~~~ summon cc:fire ~1~~ cc:suite
execute @s[family=suite,scores={direction=2}] ~~~ summon cc:fire ~1~~1 cc:suite
execute @s[family=suite,scores={direction=3}] ~~~ summon cc:fire ~~~1 cc:suite
execute @s[family=suite,scores={direction=4}] ~~~ summon cc:fire ~~~-1 cc:suite
execute @s[family=suite,scores={direction=5}] ~~~ summon cc:fire ~-1~~ cc:suite
execute @s[family=suite,scores={direction=6}] ~~~ summon cc:fire ~-1~~-1 cc:suite
execute @s[family=suite,scores={direction=7}] ~~~ summon cc:fire ~-1~~1 cc:suite
execute @s[family=suite,scores={direction=8}] ~~~ summon cc:fire ~1~~-1 cc:suite

execute @s[family=kitchen,scores={direction=1}] ~~~ summon cc:fire ~1~~ cc:kitchen
execute @s[family=kitchen,scores={direction=2}] ~~~ summon cc:fire ~1~~1 cc:kitchen
execute @s[family=kitchen,scores={direction=3}] ~~~ summon cc:fire ~~~1 cc:kitchen
execute @s[family=kitchen,scores={direction=4}] ~~~ summon cc:fire ~~~-1 cc:kitchen
execute @s[family=kitchen,scores={direction=5}] ~~~ summon cc:fire ~-1~~ cc:kitchen
execute @s[family=kitchen,scores={direction=6}] ~~~ summon cc:fire ~-1~~-1 cc:kitchen
execute @s[family=kitchen,scores={direction=7}] ~~~ summon cc:fire ~-1~~1 cc:kitchen
execute @s[family=kitchen,scores={direction=8}] ~~~ summon cc:fire ~1~~-1 cc:kitchen

execute @s[family=shopping_mall,scores={direction=1}] ~~~ summon cc:fire ~1~~ cc:shopping_mall
execute @s[family=shopping_mall,scores={direction=2}] ~~~ summon cc:fire ~1~~1 cc:shopping_mall
execute @s[family=shopping_mall,scores={direction=3}] ~~~ summon cc:fire ~~~1 cc:shopping_mall
execute @s[family=shopping_mall,scores={direction=4}] ~~~ summon cc:fire ~~~-1 cc:shopping_mall
execute @s[family=shopping_mall,scores={direction=5}] ~~~ summon cc:fire ~-1~~ cc:shopping_mall
execute @s[family=shopping_mall,scores={direction=6}] ~~~ summon cc:fire ~-1~~-1 cc:shopping_mall
execute @s[family=shopping_mall,scores={direction=7}] ~~~ summon cc:fire ~-1~~1 cc:shopping_mall
execute @s[family=shopping_mall,scores={direction=8}] ~~~ summon cc:fire ~1~~-1 cc:shopping_mall