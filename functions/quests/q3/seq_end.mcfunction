# transition from quest 3 to quest 4
execute @p ~~~ summon cc:speedboat 865 62 656
execute @p ~~~ setworldspawn 865 255 656
execute @p ~~~ title @a subtitle §6Find the Boat to Sail to the Cruise Ship
execute @p ~~~ function quests/on/start
execute @p ~~~ scoreboard players set @a quest 4
execute @p ~~~ scoreboard players set @a seq 1