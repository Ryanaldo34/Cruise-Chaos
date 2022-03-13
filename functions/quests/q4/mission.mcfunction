dialogue change @e[type=gus:npc_2,tag=gotten_to_heli] q4_hint @p
execute @p[tag=!gotten_to_heli] ~~~ execute @p[x=915,y=65,z=641,r=4] ~~~ setworldspawn 233 113 -88
execute @p[tag=!gotten_to_heli] ~~~ execute @p[x=915,y=65,z=641,r=4] ~~~ title @a subtitle §6Fly to the Cruise Ship
execute @p[tag=!gotten_to_heli] ~~~ execute @p[x=915,y=65,z=641,r=4] ~~~ function quests/on/update
execute @p[x=915,y=65,z=641,r=4] ~~~ tag @a add gotten_to_heli
# test if at the ship landing pad
execute @p[x=233,y=113,z=-88,r=5] ~~~ title @a subtitle §6Fly to the Cruise Ship
execute @p[x=233,y=113,z=-88,r=5] ~~~ function quests/on/complete
execute @p[x=233,y=113,z=-88,r=5] ~~~ tp @a 265 98 -76 65
# once the player is on deck
execute @p[x=265,y=98,z=-76,r=1] ~~~ scoreboard players set @a seq 2