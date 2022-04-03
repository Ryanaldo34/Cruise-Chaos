
stopsound @a voice_lines.captain.captain_q4_lines
execute @p[tag=!q4_ended] ~~~ scoreboard objectives remove fires
execute @p[tag=!q4_ended] ~~~ scoreboard objectives remove fire_display
execute @p[tag=!q4_ended] ~~~ scoreboard objectives add fires dummy
execute @p[tag=!q4_ended] ~~~ scoreboard objectives add fire_display dummy "§gShip Fires"
execute @p[tag=!q4_ended] ~~~ scoreboard objectives setdisplay sidebar fire_display
execute @p ~~~ title @a subtitle §6Put out the Fires
execute @p[tag=!q4_ended] ~~~ function quests/on/start
# Spawn the fire detectors/trackers
execute @p[tag=!q5_triggered] ~~~ summon cc:kitchen ~~~ minecraft:entity_spawned "Posh Restaurant Kitchen"
execute @p[tag=!q5_triggered] ~~~ summon cc:suite ~~~ minecraft:entity_spawned "Random Suite"
execute @p[tag=!q5_triggered] ~~~ summon cc:jazz_club ~~~ minecraft:entity_spawned "Jazz Sticks Club"
execute @p[tag=!q5_triggered] ~~~ summon cc:shopping_mall ~~~ minecraft:entity_spawned "Shopping Mall"
execute @p[tag=!q5_triggered] ~~~ summon cc:engine_room ~~~ minecraft:entity_spawned "Engine Room"
# Set the fire Trackers to 0 on the scoreboard
execute @p[tag=!q5_triggered] ~~~ scoreboard players set @e[type=cc:engine_room] fires 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set @e[type=cc:jazz_club] fires 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set @e[type=cc:shopping_mall] fires 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set @e[type=cc:kitchen] fires 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set @e[type=cc:suite] fires 0

# run an the appropriate family spawn event when spawning the first fire in each room
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 192 52 -88 cc:engine_room
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 147 52 -87 cc:engine_room
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 72 75 -88 cc:shopping_mall
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 93 75 -78 cc:shopping_mall
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 100 75 -98 cc:shopping_mall
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 174 64 -84 cc:kitchen
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 174 64 -103 cc:kitchen
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 182 65 -94 cc:kitchen
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 255 84 -93 cc:jazz_club
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 244 86 -71 cc:jazz_club
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 241 86 -85 cc:jazz_club
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 260 84 -81 cc:jazz_club
execute @p[tag=!q5_triggered] ~~~ summon cc:fire 90 68 -87 cc:suite
# The Fire display Scoreboard
execute @p[tag=!q5_triggered] ~~~ scoreboard objectives setdisplay sidebar fire_display
execute @p[tag=!q5_triggered] ~~~ scoreboard players set "Engine Room" fire_display 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set "Jazz Sticks Club" fire_display 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set "Shopping Mall" fire_display 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set "Posh Restaurant Kitchen" fire_display 0
execute @p[tag=!q5_triggered] ~~~ scoreboard players set "Random Suite" fire_display 0
# call quest 5
execute @p[tag=!q4_ended] ~~~ scoreboard players set @s quest 5
execute @p[tag=!q4_ended] ~~~ scoreboard players set @s seq 1
tag @a add q4_ended