# the main mission code for the second mission, executes until the player returns to the commander after flicking the lever
dialogue change @e[type=gus:npc_1] ship_status @p
dialogue change @e[type=gus:npc_2] q2_hint @p[scores={seq=1}]
execute @a[scores={seq=1}] ~~~ particle minecraft:electric_spark_particle 965 93 513
execute @a ~ ~ ~ detect 965 92 513 lever 5 title @a[scores={seq=1}] subtitle §6Return to the Commander at the MNLI Headquarters
execute @a ~ ~ ~ detect 965 92 513 lever 5 scoreboard players set @a seq 2
execute @a[scores={seq=2}] ~~~ function quests/on/update
execute @a[scores={seq=2}] ~~~ setworldspawn 890 255 606