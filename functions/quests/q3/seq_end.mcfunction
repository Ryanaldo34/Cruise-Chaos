execute @s[scores={seq_tl=320}] ~~~ summon boat 865 62 656
execute @s[scores={seq_tl=320}] ~~~ setworldspawn 865 255 656
execute @s[scores={seq_tl=320}] ~~~ title @a subtitle §6Find the Boat to Sail to the Cruise Ship
execute @s[scores={seq_tl=320}] ~~~ function quests/on/start
execute @s[scores={seq_tl=320..}] ~~~ scoreboard players set @s quest 4
execute @s[scores={seq_tl=320..}] ~~~ scoreboard players set @s seq 1
execute @s[scores={seq_tl=320..}] ~~~ scoreboard players set @s seq_tl -1