execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s sand.entity.motion.x
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s sand.entity.motion.y
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s sand.entity.motion.z
tag @s remove sand.sandevistan_applied
effect clear @s resistance
execute if entity @s[type=#sand:projectiles] run return run data modify entity @s NoGravity set value false
execute store result score @s sand.damage.health run data get entity @s Health
scoreboard players operation @s sand.damage.health *= $10 sand.CONST
scoreboard players operation @s sand.damage.health -= @s sand.damage.taken
execute if data entity @s Health if score @s sand.damage.health matches ..0 run kill @s
execute if data entity @s Health store result entity @s Health float 0.1 run scoreboard players get @s sand.damage.health
execute if entity @s[type=creeper] if score @s sand.entity.fuse matches ..29 run scoreboard players operation @s sand.entity.fuse -= @s sand.timer.sandevistan
execute if entity @s[type=tnt] run scoreboard players operation @s sand.entity.fuse -= @s sand.timer.sandevistan
scoreboard players operation @s[type=#sand:timers] sand.entity.fuse > $0 sand.CONST
execute store result entity @s[type=#sand:timers] Fuse byte 1 run scoreboard players get @s sand.entity.fuse
execute store result entity @s[type=#sand:timers] fuse byte 1 run scoreboard players get @s sand.entity.fuse
scoreboard players reset @s sand.timer.sandevistan
