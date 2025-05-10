execute store result score @s sand.entity.attributes.movement_speed run attribute @s movement_speed get 100

data modify entity @s NoGravity set value true
attribute @s movement_speed base set 0
data modify entity @s Motion set value [0d,0d,0d]
