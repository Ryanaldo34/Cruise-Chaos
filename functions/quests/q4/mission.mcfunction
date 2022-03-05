execute @s[tag=!gotten_to_boat] ~~~ execute @p[x=865,y=62,z=656,r=5] ~~~ setworldspawn 236 105 -72
execute @s[tag=!gotten_to_boat] ~~~ execute @p[x=865,y=62,z=656,r=5] ~~~ title @a subtitle §6Sail to the Cruise Ship
execute @s[tag=!gotten_to_boat] ~~~ execute @p[x=865,y=62,z=656,r=5] ~~~ function quests/on/update
execute @s[tag=!gotten_to_boat] ~~~ execute @p[x=865,y=62,z=656,r=5] ~~~ tag @e[name=main] add gotten_to_boat
execute @p[x=-50,dx=890,y=60,dy=9,z=-115,dz=55] ~~~ tp @a 265 98 -76 65
execute @p[x=-50,dx=890,y=60,dy=9,z=-115,dz=55] ~~~ title @a subtitle §6Sail to the Cruise Ship
execute @p[x=-50,dx=890,y=60,dy=9,z=-115,dz=55] ~~~ function quests/on/complete
execute @p[x=-50,dx=890,y=60,dy=9,z=-115,dz=55] ~~~ scoreboard players set @e[name=main] seq 2
execute @p[x=-50,dx=890,y=60,dy=9,z=-115,dz=55] ~~~ scoreboard players set @e[name=main] seq_tl 0