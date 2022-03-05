execute @s ~~~ detect 965 92 513 lever 5 tag @s add q2_1
execute @s ~~~ detect 966 92 513 lever 5 tag @s add q2_2
execute @s[tag=!already_triggered_q2,tag=q2_1,tag=q2_2] ~~~ setworldspawn 890 255 606
execute @s[tag=!already_triggered_q2,tag=q2_1,tag=q2_2] ~~~ title @a subtitle §6Return to the Commander at the MNLI Headquarters
execute @s[tag=!already_triggered_q2,tag=q2_1,tag=q2_2] ~~~ function quests/on/update
execute @s[tag=already_triggered_q2] ~~~ execute @p[x=890,y=68,z=606,r=12] ~~~  scoreboard players set @e[name=main] seq 2
execute @s[tag=already_triggered_q2] ~~~ execute @p[x=890,y=68,z=606,r=12] ~~~  scoreboard players set @e[name=main] seq_tl 0
execute @s[tag=q2_1,tag=q2_2] ~~~ tag @s add already_triggered_q2
tag @s remove q2_1
tag @s remove q2_2