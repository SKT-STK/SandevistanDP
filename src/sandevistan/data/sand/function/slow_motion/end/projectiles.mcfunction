data modify entity @s NoGravity set value false
execute store result entity @s attributes[{id:"minecraft:movement_speed"}].base double .01 run scoreboard players get @s sand.entity.attributes.movement_speed
