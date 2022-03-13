execute @p[tag=!q5_complete] ~~~ function quests/on/update
execute @p[tag=!q5_complete] ~~~ title @a subtitle §6Report back to the captain and Charlie on deck!.
execute @p[tag=!q5_complete] ~~~ setworldspawn 242 255 -88
execute @p[tag=!q5_complete] ~~~ tp @e[type=gus:npc_1] 242 98 -88
execute @p[tag=!q5_complete] ~~~ dialogue change @e[type=gus:npc_3] q5_end @p
execute @p[tag=!q5_complete] ~~~ tp @e[type=cc:helicopter] 233 113 -88

execute @p[x=242,y=98,z=-88,r=5,tag=!q5_end_scene] ~~~ dialogue open @e[type=gus:npc_1] @a q5_return
execute @p[x=242,y=98,z=-88,r=5,tag=!q5_end_scene] ~~~ function quests/on/complete
execute @p[x=242,y=98,z=-88,r=5,tag=!q5_end_scene] ~~~ title @a subtitle §6Report back to the captain and Charlie on deck!.
execute @p[x=242,y=98,z=-88,r=5] ~~~ tag @a add q5_end_scene

execute @p[x=233,y=113,z=-88,r=5,tag=!q5_leave] ~~~ function quests/on/update
execute @p[x=233,y=113,z=-88,r=5,tag=!q5_leave] ~~~ title @a subtitle §6Take The Heli Back To The Commander.
execute @p[x=233,y=113,z=-88,r=5] ~~~ tag @a add q5_leave
tag @a add q5_complete
scoreboard objectives remove fire_display
execute @p[tag=q5_end_scene] ~~~ function quests/q5/exit