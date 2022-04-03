function quests/manager
execute @p[x=870,y=65,z=542,r=30,tag=!in_harbour] ~~~ playsound ambient.harbour_ambience @p 870 65 542 0.5 1.00
execute @p[x=870,y=65,z=542,r=30] ~~~ tag @a add in_harbour
execute @p[x=870,y=65,z=542,rm=31] ~~~ stopsound @p ambient.harbour_ambience
execute @p[x=870,y=65,z=542,rm=31] ~~~ tag @a remove in_harbour

execute @p[x=1021,y=76,z=581,r=100,tag=!in_town] ~~~ playsound ambient.town_ambience @p 1021 76 681 0.5 1.00
execute @p[x=1021,y=76,z=581,r=100,tag=!in_town] ~~~ tag @a add in_town
execute @p[x=1021,y=76,z=581,rm=101] ~~~ stopsound @p ambient.town_ambience
execute @p[x=1021,y=76,z=581,rm=101] ~~~ tag @a remove in_town
execute @p[tag=can_play] ~~~ tp @a[tag=!can_play] 0 -256 0
execute @p[tag=can_play] ~~~ spawnpoint @a[tag=!can_play] 0 -256 0
execute @p[tag=can_play] ~~~ scoreboard players set @a[tag=!can_play] quest -1
execute @p[tag=can_play] ~~~ scoreboard players set @a[tag=!can_play] seq -1