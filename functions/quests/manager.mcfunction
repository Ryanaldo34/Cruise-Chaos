# continuously runs and manages the quest functions
execute @a[scores={quest=0,seq=0}] ~~~ execute @p[x=865,y=65,z=543,r=5] ~~~ function quests/q1/key
execute @a[scores={quest=1,seq=1}] ~~~ execute @p[x=890,y=68,z=606,r=12] ~~~ function quests/q1/mission
execute @p[scores={quest=2,seq=1}]  ~~~ function quests/q2/mission
execute @a[scores={quest=2,seq=2}] ~~~ execute @p[x=890,y=68,z=606,r=12] ~~~ function quests/q2/scene
execute @a[scores={quest=3,seq=1}]  ~~~ function quests/q3/mission
# ran after trades are completed
execute @a[scores={quest=3,seq=3}] ~~~ execute @p[x=890,y=68,z=606,r=8] ~~~ function quests/q3/scene
execute @a[scores={quest=4,seq=1}]  ~~~ function quests/q4/mission
execute @a[scores={quest=4,seq=2}] ~~~ execute @p[x=251,y=98,z=-88,r=6] ~~~ function quests/q4/scene
execute @a[scores={quest=5,seq=1..2}]  ~~~ function quests/q5/mission
execute @a[scores={quest=5,seq=3},tag=!game_complete] ~~~ function quests/q5/seq_end
execute @a[scores={quest=1}] ~~~ spawnpoint @a 1257 113 638
execute @a[scores={quest=2}] ~~~ spawnpoint @a 1257 113 638
execute @a[scores={quest=3}] ~~~ spawnpoint @a 1257 113 638
execute @a[scores={quest=4}] ~~~ spawnpoint @a 1257 113 638
execute @a[scores={quest=5}] ~~~ spawnpoint @a 265 255 -76