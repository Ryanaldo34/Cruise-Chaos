# manages quest 5 on the ship
# put a limit on the engine room fires to prevent lag
execute @e[type=cc:engine_room,scores={fires=200..}] ~~~ execute @r[type=cc:fire,family=engine_room] ~~~ function entity/fire_extinguish
execute @e[type=cc:shopping_mall,scores={fires=1..250}] ~~~ tag @a remove q5_3
execute @e[type=cc:kitchen,scores={fires=1..250}] ~~~ tag @a remove q5_4
execute @e[type=cc:suite,scores={fires=1..250}] ~~~ tag @a remove q5_5

# detect when fires have been put out
execute @p[tag=q5_triggered,tag=!q5_5] ~~~ execute @e[type=cc:suite,scores={fires=0}] ~~~ function quests/on/update
execute @p[tag=q5_triggered,tag=!q5_5] ~~~ execute @e[type=cc:suite,scores={fires=0}] ~~~ title @a subtitle §gRandom Suite Fires Extinguished!
execute @p[tag=q5_triggered,tag=q5_2,tag=q5_3,tag=q5_4,tag=!q5_5] ~~~ setworldspawn 90 255 -87
execute @p[tag=q5_triggered] ~~~ execute @e[type=cc:suite,scores={fires=0}] ~~~ tag @a add q5_5
execute @p[tag=q5_triggered,tag=!q5_1] ~~~ execute @e[type=cc:engine_room,scores={fires=0}] ~~~ function quests/on/update
execute @p[tag=q5_triggered,tag=!q5_1] ~~~ execute @e[type=cc:engine_room,scores={fires=0}] ~~~ title @a subtitle §gEngine Room Fires Extinguished!
execute @p[tag=q5_triggered,tag=!q5_1,tag=q5_2,tag=q5_3,tag=q5_4,tag=q5_5] ~~~ setworldspawn 192 255 -88
execute @p[tag=q5_triggered] ~~~ execute @e[type=cc:engine_room,scores={fires=0}] ~~~ tag @a add q5_1

execute @p[tag=q5_triggered,tag=!q5_2] ~~~ execute @e[type=cc:jazz_club,scores={fires=0}] ~~~ function quests/on/update
execute @p[tag=q5_triggered,tag=!q5_2] ~~~ execute @e[type=cc:jazz_club,scores={fires=0}] ~~~ title @a subtitle §gJazz Stick Club Fires Extinguished!
execute @p[tag=q5_triggered,tag=!q5_2] ~~~ setworldspawn 244 255 -71
execute @p[tag=q5_triggered] ~~~ execute @e[type=cc:jazz_club,scores={fires=0}] ~~~ tag @a add q5_2

execute @p[tag=q5_triggered,tag=!q5_3] ~~~ execute @e[type=cc:shopping_mall,scores={fires=0}] ~~~ function quests/on/update
execute @p[tag=q5_triggered,tag=!q5_3] ~~~ execute @e[type=cc:shopping_mall,scores={fires=0}] ~~~ title @a subtitle §gShopping Mall Fires Extinguished!
execute @p[tag=q5_triggered,tag=q5_2,tag=!q5_3] ~~~ setworldspawn 72 255 -88
execute @p[tag=q5_triggered] ~~~ execute @e[type=cc:shopping_mall,scores={fires=0}] ~~~ tag @a add q5_3

execute @p[tag=q5_triggered,tag=!q5_4] ~~~ execute @e[type=cc:kitchen,scores={fires=0}] ~~~ function quests/on/update
execute @p[tag=q5_triggered,tag=!q5_4] ~~~ execute @e[type=cc:kitchen,scores={fires=0}] ~~~ title @a subtitle §gPosh Restaurant Kitchen Fires Extinguished!
execute @p[tag=q5_triggered,tag=q5_2,tag=q5_3,tag=!q5_4] ~~~ setworldspawn 174 255 -84
execute @p[tag=q5_triggered] ~~~ execute @e[type=cc:kitchen,scores={fires=0}] ~~~ tag @a add q5_4

# update the quest chain
execute @p[tag=q5_1,tag=q5_2,tag=q5_3,tag=q5_4,tag=q5_5] ~~~ scoreboard players set @a seq 2
execute @p[scores={seq=2},tag=!fires_out] ~~~ title @a subtitle §4Restore Power To The Ship!
execute @p[tag=q5_1,tag=q5_2,tag=q5_3,tag=q5_4,tag=q5_5,tag=!fires_out] ~~~ function quests/on/update
execute @p[tag=q5_1,tag=q5_2,tag=q5_3,tag=q5_4,tag=q5_5] ~~~ tag @a add fires_out
# end quest 5
execute @p[scores={seq=2}] ~~~ setworldspawn 142 255 -80
execute @p[scores={seq=2}] ~~~ detect 142 64 -80 lever 4 scoreboard players set @a seq 3

tag @a add q5_triggered
# ship rescuing feature
