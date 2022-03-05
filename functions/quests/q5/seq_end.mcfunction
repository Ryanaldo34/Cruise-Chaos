execute @s[scores={seq_tl=1}]   ~~~ tickingarea remove q5
execute @s[scores={seq_tl=1}]   ~~~ execute @e[type=gus:npc_2,c=1] ~~~ say I am glad to see you, we have a little bit of a situation here if you can't tell.
execute @s[scores={seq_tl=1}]   ~~~ execute @e[type=gus:npc_2,c=1] ~~~ function quests/on/ding
execute @s[scores={seq_tl=80}]  ~~~ execute @e[type=gus:npc_2,c=1] ~~~ say We have 5 fires raging around the ship that have stopped the ship's stabilizers from working. We need you to find the fires and turn the sprinklers on to extinguish them.
execute @s[scores={seq_tl=80}]  ~~~ execute @e[type=gus:npc_2,c=1] ~~~ function quests/on/ding
execute @s[scores={seq_tl=160}] ~~~ execute @e[type=gus:npc_2,c=1] ~~~ say Once you've done that, you need to head to the engine room and restart the power.
execute @s[scores={seq_tl=160}] ~~~ execute @e[type=gus:npc_2,c=1] ~~~ function quests/on/ding
execute @s[scores={seq_tl=240}] ~~~ execute @e[type=gus:npc_2,c=1] ~~~ say Good luck!
execute @s[scores={seq_tl=240}] ~~~ execute @e[type=gus:npc_2,c=1] ~~~ function quests/on/ding
execute @s[scores={seq_tl=320}] ~~~ title @a subtitle §6Put out the Fires
execute @s[scores={seq_tl=320}] ~~~ function quests/on/start
execute @s[scores={seq_tl=320..}] ~~~ scoreboard players set @s quest 5
execute @s[scores={seq_tl=320..}] ~~~ scoreboard players set @s seq 1
execute @s[scores={seq_tl=320..}] ~~~ scoreboard players set @s seq_tl -1