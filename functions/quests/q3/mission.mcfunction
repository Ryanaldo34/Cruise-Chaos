execute @s ~~~ detect 930 65 519 barrel 11 tag @a add q3_1
execute @s ~~~ detect 924 95 651 barrel 11 tag @a add q3_2
execute @s ~~~ detect 1078 87 568 barrel 12 tag @a add q3_3
execute @a[tag=q3_1,tag=q3_2,tag=q3_3] ~~~ tag @a add gotten_all
# make the npc able to be traded with to turn the items in
execute @a[tag=gotten_all] ~ ~ ~ event entity @e[type=gus:npc_2] cc:set_trades
execute @s[tag=gotten_all] ~~~ title @a subtitle §6Return to the Commander at the MNLI Headquarters
execute @s[tag=gotten_all] ~~~ function quests/on/update
execute @s[tag=q3_1,tag=!c3_1,tag=!gotten_all] ~~~ title @a subtitle §6Drift Anchor Found
execute @s[tag=q3_1,tag=!c3_1,tag=!gotten_all] ~~~ function quests/on/update
execute @s[tag=q3_2,tag=!c3_2,tag=!gotten_all] ~~~ title @a subtitle §6Floodlights Found
execute @s[tag=q3_2,tag=!c3_2,tag=!gotten_all] ~~~ function quests/on/update
execute @s[tag=q3_3,tag=!c3_3,tag=!gotten_all] ~~~ title @a subtitle §6Motor Found
execute @s[tag=q3_3,tag=!c3_3,tag=!gotten_all] ~~~ function quests/on/update
tag @s[tag=q3_1] add c3_1
tag @s[tag=q3_2] add c3_2
tag @s[tag=q3_3] add c3_3
execute @s[tag=gotten_all] ~~~ execute @p[x=890,y=68,z=606,r=12] ~~~ scoreboard players set @a seq 2
execute @p[tag=q3_3,tag=q3_2,tag=q3_1] ~~~ setworldspawn 890 255 606
execute @p[tag=!q3_3,tag=q3_2,tag=q3_1] ~~~ setworldspawn 1078 255 568
execute @p[tag=!q3_2,tag=q3_1] ~~~ setworldspawn 924 255 651
execute @p[tag=!q3_1] ~~~ setworldspawn 930 255 519