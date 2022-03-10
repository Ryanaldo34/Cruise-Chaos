scoreboard players set "Engine Room" fires 0
scoreboard players set "Jazz Sticks Club" fires 0
scoreboard players set "Shopping Mall" fires 0
scoreboard players set "Posh Restaurant Kitchen" fires 0
scoreboard players set "Random Suite" fires 0
scoreboard players set "Suite #6" fires 0
execute @e[type=gus:fire,family=!doused,x=138,dx=70,y=50,dy=6,z=-101,dz=25] ~~~ scoreboard players add "Engine Room" fires 1
execute @e[type=gus:fire,family=!doused,x=246,y=86,z=-90,r=25] ~~~ scoreboard players add "Jazz Sticks Club" fires 1
execute @e[type=gus:fire,family=!doused,x=72,y=75,z=-88,r=25] ~~~ scoreboard players add "Shopping Mall" fires 1
execute @e[type=gus:fire,family=!doused,x=181,y=65,z=-93,r=25] ~~~ scoreboard players add "Posh Restaurant Kitchen" fires 1
execute @e[type=gus:fire,family=!doused,x=103,y=61,z=-103,r=25] ~~~ scoreboard players add "Random Suite" fires 1
tag @e[name=main] add q5_1
tag @e[name=main] add q5_2
tag @e[name=main] add q5_3
tag @e[name=main] add q5_4
tag @e[name=main] add q5_5
execute @e[type=gus:fire,family=!doused,x=138,dx=70,y=50,dy=6,z=-101,dz=25,c=1] ~~~ tag @e[name=main] remove q5_1
execute @e[type=gus:fire,family=!doused,x=246,y=86,z=-90,r=25,c=1] ~~~ tag @e[name=main] remove q5_2
execute @e[type=gus:fire,family=!doused,x=72,y=75,z=-88,r=25,c=1] ~~~ tag @e[name=main] remove q5_3
execute @e[type=gus:fire,family=!doused,x=181,y=65,z=-93,r=25,c=1] ~~~ tag @e[name=main] remove q5_4
execute @e[type=gus:fire,family=!doused,x=103,y=61,z=-103,r=25,c=1] ~~~ tag @e[name=main] remove q5_5
execute @s[tag=q5_5,tag=q5_4,tag=q5_3,tag=q5_2,tag=q5_1] ~~~ setworldspawn 265 255 -76
execute @s[tag=!q5_5,tag=!q5_4,tag=!q5_3,tag=q5_2,tag=q5_1] ~~~ setworldspawn 138 255 50
execute @s[tag=!q5_4,tag=!q5_3,tag=q5_2,tag=q5_1] ~~~ setworldspawn 246 255 -90
execute @s[tag=!q5_3,tag=q5_2,tag=q5_1] ~~~ setworldspawn 72 255 -88
execute @s[tag=!q5_2,tag=q5_1] ~~~ setworldspawn 181 255 -93
execute @s[tag=!q5_1] ~~~ setworldspawn 103 255 -103