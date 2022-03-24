execute @p[tag=!q3_1,x=905,y=65,z=548,dx=38,dy=35,dz=-37] ~~~ title @a actionbar §g Inside Search Zone
execute @p[tag=!q3_1] ~~~ detect 930 65 519 barrel 11 tag @a add q3_1
execute @p[tag=!q3_2] ~~~ detect 924 95 651 barrel 11 tag @a add q3_2
execute @p[tag=!q3_2,x=917,y=64,z=657,dx=12,dy=40,dz=-12] ~~~ title @a actionbar §g Inside Search Zone
execute @p[tag=!q3_3] ~~~ detect 1078 87 568 barrel 12 tag @a add q3_3
execute @p[x=1078,y=87,z=568,r=30,tag=!q3_3] ~~~ title @a actionbar §g Inside Search Zone
# make the npc able to be traded with to turn the items in
execute @a[tag=gotten_all] ~ ~ ~ event entity @e[type=gus:npc_2] cc:set_trades
execute @p[tag=q3_1,tag=!c3_1,tag=!gotten_all] ~~~ title @a subtitle §6Fuel Canister Found
execute @p[tag=q3_1,tag=!c3_1,tag=!gotten_all] ~~~ function quests/on/update

execute @p[tag=q3_2,tag=!c3_2,tag=!gotten_all] ~~~ title @a subtitle §6Search lights Found
execute @p[tag=q3_2,tag=!c3_2,tag=!gotten_all] ~~~ function quests/on/update

execute @p[tag=q3_3,tag=!c3_3,tag=!gotten_all] ~~~ title @a subtitle §6Search Light Found
execute @p[tag=q3_3,tag=!c3_3,tag=!gotten_all] ~~~ function quests/on/update

execute @p[tag=q3_3,tag=!c3_3] ~~~ title @a subtitle §6Return to the Commander at the MNLI Headquarters
execute @p[tag=q3_3,tag=!c3_3] ~~~ function quests/on/update
tag @s[tag=q3_1] add c3_1
tag @s[tag=q3_2] add c3_2
tag @s[tag=q3_3] add c3_3
execute @a[tag=q3_1,tag=q3_2,tag=q3_3] ~~~ tag @a add gotten_all
execute @a[tag=gotten_all] ~~~ execute @p[x=890,y=68,z=606,r=12] ~~~ scoreboard players set @a seq 2
execute @p[tag=q3_3,tag=q3_2,tag=q3_1] ~~~ setworldspawn 890 255 606
execute @p[tag=!q3_3,tag=q3_2,tag=q3_1] ~~~ setworldspawn 1078 255 568
execute @p[tag=!q3_2,tag=q3_1] ~~~ setworldspawn 924 255 651
execute @p[tag=!q3_1] ~~~ setworldspawn 930 255 519
# tag @a remove q3_3