function quests/manager
execute @p[x=870,y=65,z=542,r=30,tag=!in_harbour] ~~~ playsound ambient.harbour_ambience @p
execute @p[x=870,y=65,z=542,r=30] ~~~ tag @a add in_harbour
execute @p[x=870,y=65,z=542,rm=31] ~~~ stopsound @p ambient.harbour_ambience
execute @p[x=870,y=65,z=542,rm=31] ~~~ tag @a remove in_harbour
# town ambience
execute @p[x=1021,y=76,z=581,r=100,tag=!in_town] ~~~ playsound ambient.town_ambience @p
execute @p[x=1021,y=76,z=581,r=100,tag=!in_town] ~~~ tag @a add in_town
execute @p[x=1021,y=76,z=581,rm=101] ~~~ stopsound @p ambient.town_ambience
execute @p[x=1021,y=76,z=581,rm=101] ~~~ tag @a remove in_town
# cruise ship ambience
execute @p[x=-9,y=128,z=-60,dx=277,dy=-31,dz=-56,tag=!on_deck] ~~~ playsound ambient.sea_ambience @p
execute @p[x=-9,y=128,z=-60,dx=277,dy=-31,dz=-56,tag=!on_deck] ~~~ tag @p add on_deck
execute @p[x=-9,y=96,z=-60,dx=277,dy=1,dz=-56] ~~~ stopsound @p ambient.sea_ambience
execute @p[x=-9,y=96,z=-60,dx=277,dy=1,dz=-56] ~~~ tag @a remove on_deck
# deny multiplayer
execute @p[tag=can_play] ~~~ tp @a[tag=!can_play] 0 -256 0
execute @p[tag=can_play] ~~~ spawnpoint @a[tag=!can_play] 0 -256 0
execute @p[tag=can_play] ~~~ scoreboard players set @a[tag=!can_play] quest -1
execute @p[tag=can_play] ~~~ scoreboard players set @a[tag=!can_play] seq -1