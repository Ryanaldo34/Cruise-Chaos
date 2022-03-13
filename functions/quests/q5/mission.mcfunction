execute @p[tag=!q5_triggered] ~~~ say working

# Spawn the fire detectors/trackers
execute @p[tag=!q5_triggered] ~~~ summon cc:kitchen ~~~ minecraft:entity_spawned "Posh Restaurant Kitchen"
execute @p[tag=!q5_triggered] ~~~ summon cc:suite ~~~ minecraft:entity_spawned "Random Suite"
execute @p[tag=!q5_triggered] ~~~ summon cc:jazz_club ~~~ minecraft:entity_spawned "Jazz Sticks Club"
execute @p[tag=!q5_triggered] ~~~ summon cc:shopping_mall ~~~ minecraft:entity_spawned "Shopping Mall"
execute @p[tag=!q5_triggered] ~~~ summon cc:engine_room ~~~ minecraft:entity_spawned "Engine Room"

# The Fire display Scoreboard
execute @p[tag=!q5_triggered] ~~~ scoreboard objectives setdisplay sidebar fire_display
execute @p[tag=!q5_triggered] ~~~ scoreboard players set "Engine Room" fire_display 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set "Jazz Sticks Club" fire_display 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set "Shopping Mall" fire_display 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set "Posh Restaurant Kitchen" fire_display 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set "Random Suite" fire_display 0

# Set the fire Trackers to 0 on the scoreboard
execute @p[tag=!q5_triggered] ~~~ scoreboard players set @e[type=cc:engine_room] fires 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set @e[type=cc:jazz_club] fires 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set @e[type=cc:shopping_mall] fires 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set @e[type=cc:kitchen] fires 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set @e[type=cc:suite] fires 0

# run an the appropriate family spawn event when spawning the first fire in each room
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 192 52 -88 cc:engine_room
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 72 75 -88 cc:shopping_mall
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 174 64 -84 cc:kitchen
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 255 84 -93 cc:jazz_club
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 244 86 -71 cc:jazz_club
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 90 68 -87 cc:suite
# detect when fires have been put out
execute @p[tag=q5_triggered,tag=!q5_1] ~~~ execute @e[type=cc:engine_room,scores={fires=0}] ~~~ function quests/on/update
execute @p[tag=q5_triggered,tag=!q5_1] ~~~ execute @e[type=cc:engine_room,scores={fires=0}] ~~~ title @a subtitle §gEngine Room Fires Extinguished!
execute @p[tag=q5_triggered] ~~~ execute @e[type=cc:engine_room,scores={fires=0}] ~~~ tag @a add q5_1

execute @p[tag=q5_triggered,tag=!q5_2] ~~~ execute @e[type=cc:jazz_club,scores={fires=0}] ~~~ function quests/on/update
execute @p[tag=q5_triggered,tag=!q5_2] ~~~ execute @e[type=cc:jazz_club,scores={fires=0}] ~~~ title @a subtitle §gJazz Stick Club Fires Extinguished!
execute @p[tag=q5_triggered] ~~~ execute @e[type=cc:jazz_club,scores={fires=0}] ~~~ tag @a add q5_2

execute @p[tag=q5_triggered,tag=!q5_3] ~~~ execute @e[type=cc:shopping_mall,scores={fires=0}] ~~~ function quests/on/update
execute @p[tag=q5_triggered,tag=!q5_3] ~~~ execute @e[type=cc:shopping_mall,scores={fires=0}] ~~~ title @a subtitle §gShopping Mall Fires Extinguished!
execute @p[tag=q5_triggered] ~~~ execute @e[type=cc:shopping_mall,scores={fires=0}] ~~~ tag @a add q5_3

execute @p[tag=q5_triggered,tag=!q5_4] ~~~ execute @e[type=cc:kitchen,scores={fires=0}] ~~~ function quests/on/update
execute @p[tag=q5_triggered,tag=!q5_4] ~~~ execute @e[type=cc:kitchen,scores={fires=0}] ~~~ title @a subtitle §gPosh Restaurant Kitchen Fires Extinguished!
execute @p[tag=q5_triggered] ~~~ execute @e[type=cc:kitchen,scores={fires=0}] ~~~ tag @a add q5_4

execute @p[tag=q5_triggered,tag=!q5_5] ~~~ execute @e[type=cc:suite,scores={fires=0}] ~~~ function quests/on/update
execute @p[tag=q5_triggered,tag=!q5_5] ~~~ execute @e[type=cc:suite,scores={fires=0}] ~~~ title @a subtitle §gRandom Suite Fires Extinguished!
execute @p[tag=q5_triggered] ~~~ execute @e[type=cc:suite,scores={fires=0}] ~~~ tag @a add q5_5
# update the quest chain
execute @p[tag=q5_1,tag=q5_2,tag=q5_3,tag=q5_4,tag=q5_5] ~~~ scoreboard players set @a seq 2

execute @p[scores={seq=2},tag=!fires_out] ~~~ title @a subtitle §4Restore Power To The Ship!
execute @p[tag=q5_1,tag=q5_2,tag=q5_3,tag=q5_4,tag=q5_5,tag=!fires_out] ~~~ function quests/on/update
execute @p[tag=q5_1,tag=q5_2,tag=q5_3,tag=q5_4,tag=q5_5] ~~~ tag @a add fires_out

# end quest 5
execute @p[scores={seq=2}] ~~~ detect 142 64 -80 lever 4 scoreboard players set @a seq 3

tag @a add q5_triggered
execute @e[type=cc:shopping_mall,scores={fires=1..250}] ~~~ tag @a remove q5_3
execute @e[type=cc:kitchen,scores={fires=1..250}] ~~~ tag @a remove q5_4
execute @e[type=cc:suite,scores={fires=1..250}] ~~~ tag @a remove q5_5
# ship rescuing feature
