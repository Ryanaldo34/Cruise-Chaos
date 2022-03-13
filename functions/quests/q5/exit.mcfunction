execute @p[tag=!game_complete] ~~~ setworldspawn 890 255 606
execute @p[x=890,y=68,z=606,r=8,tag=!game_complete] ~~~ function quests/on/complete
execute @p[x=890,y=68,z=606,r=8,tag=!game_complete] ~~~ title @a subtitle §6 Return To The Commander
# game complete added at the end of this scene
execute @p[x=890,y=68,z=606,r=8,tag=!game_complete] ~~~ dialogue open @e[type=gus:npc_2] @a final
execute @p[x=890,y=68,z=606,r=8,tag=!game_complete] ~~~ tag @a add game_complete