execute @a[scores={seq=1}] ~~~ particle minecraft:sparkler_emitter 965 93 513
execute @a ~ ~ ~ detect 965 92 513 lever 5 title @a[scores={seq=1}] subtitle §6Return to the Commander at the MNLI Headquarters
execute @a ~ ~ ~ detect 965 92 513 lever 5 scoreboard players set @a seq 2
execute @a[scores={seq=2}] ~~~ function quests/on/update
execute @a[scores={seq=2}] ~~~ setworldspawn 890 255 606