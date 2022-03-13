clear @s
execute @p[tag=q4_triggered] ~~~ replaceitem entity @p slot.hotbar 0 minecraft:compass 1 0 { "minecraft:item_lock":{ "mode": "lock_in_inventory" } }
execute @p[tag=q4_triggered] ~~~ replaceitem entity @p slot.hotbar 1 minecraft:splash_potion 1 0 { "minecraft:item_lock":{ "mode": "lock_in_inventory" } }
execute @p[tag=q4_triggered] ~~~ replaceitem entity @p slot.hotbar 2 minecraft:diamond_axe 1 0 { "minecraft:item_lock":{ "mode": "lock_in_inventory" } }
execute @p[tag=q4_triggered] ~~~ replaceitem entity @p slot.hotbar 3 minecraft:potion 1 21 { "minecraft:item_lock":{ "mode": "lock_in_inventory" } }