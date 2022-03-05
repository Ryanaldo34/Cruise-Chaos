execute @p[x=890,y=68,z=606,r=12] ~~~ scoreboard players set @e[name=main] seq_tl 0
execute @p[x=890,y=68,z=606,r=12] ~~~ title @a subtitle §6Go to the Commander
execute @p[x=890,y=68,z=606,r=12] ~~~ function quests/on/complete
dialogue open @e[type=gus:npc_2,c=1] @a[x=890,y=68,z=606,r=12] qone_commander_intro