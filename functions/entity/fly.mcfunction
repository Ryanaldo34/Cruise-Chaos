# used to control flying entities by using the head rotation of a player
execute @a[rxm=-90,rx=-25] ~~~ effect @e[type=cc:helicopter] levitation 1 6 true
execute @a[rxm=-25,rx=-15] ~~~ effect @e[type=cc:helicopter] levitation 1 3 true
execute @a[rxm=-15,rx=-5] ~~~ effect @e[type=cc:helicopter] levitation 1 2 true
execute @a[rxm=-5,rx=15] ~~~ effect @e[type=cc:helicopter] levitation 1 1 true
execute @a[rxm=15,rx=45] ~~~ effect @e[type=cc:helicopter] slow_falling 1 1 true
execute @a[rxm=45,rx=90] ~~~ effect @e[type=cc:helicopter] clear