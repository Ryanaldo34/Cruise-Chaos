scoreboard players add @e[name=main,scores={seq_tl=0..}] seq_tl 1
execute @e[name=main,scores={quest=0,seq=0,seq_tl=-1}] ~~~ execute @p[x=1250,y=110,z=666,r=5] ~~~ function quests/q1/key
execute @e[name=main,scores={quest=1,seq=1,seq_tl=-1}]  ~~~ function quests/q1/mission
execute @e[name=main,scores={quest=2,seq=1,seq_tl=-1}]  ~~~ function quests/q2/mission
execute @e[name=main,scores={quest=2,seq=2,seq_tl=0..}] ~~~ function quests/q2/scene
execute @e[name=main,scores={quest=3,seq=1,seq_tl=-1}]  ~~~ function quests/q3/mission
execute @e[name=main,scores={quest=3,seq=2,seq_tl=0..}] ~~~ function quests/q3/scene
execute @e[name=main,scores={quest=4,seq=1,seq_tl=-1}]  ~~~ function quests/q4/mission
execute @e[name=main,scores={quest=4,seq=2,seq_tl=0..}] ~~~ function quests/q4/seq_end
execute @e[name=main,scores={quest=4,seq=1,seq_tl=-1}]  ~~~ function quests/q5/mission
execute @e[name=main,scores={quest=4,seq=2,seq_tl=0..}] ~~~ function quests/q5/seq_end
execute @e[name=main,scores={quest=1}] ~~~ spawnpoint @a 1257 113 638
execute @e[name=main,scores={quest=2}] ~~~ spawnpoint @a 1257 113 638
execute @e[name=main,scores={quest=3}] ~~~ spawnpoint @a 1257 113 638
execute @e[name=main,scores={quest=4}] ~~~ spawnpoint @a 1257 113 638