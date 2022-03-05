setworldspawn 890 255 606
give @a compass 1 0 { "minecraft:item_lock":{ "mode": "lock_in_inventory" } }
title @a subtitle §6Go to the Commander
function quests/on/start
scoreboard players set @e[name=main] seq_tl -1