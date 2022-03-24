stopsound @a voice_lines.charlie.charlie_q1_lines
setworldspawn 890 255 606
give @a[tag=!compass] compass 1 0 { "minecraft:item_lock":{ "mode": "lock_in_inventory" } }
title @a subtitle §6Go to the Commander
execute @p[tag=!compass] ~~~ function quests/on/start
tag @a add compass
dialogue change @e[type=gus:npc_1] q1_hint @p