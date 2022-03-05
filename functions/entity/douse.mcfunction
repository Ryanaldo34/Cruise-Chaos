execute @e[type=gus:fire,r=2.5,family=!doused] ~~~ tag @e[type=minecraft:splash_potion,c=1,r=2] add doused
event entity @e[type=gus:fire,r=2.5,family=!doused] gus:douse
execute @s[tag=doused] ~~~ playsound random.fizz @a ~~~
playsound random.glass @a ~~~
event entity @s gus:despawn