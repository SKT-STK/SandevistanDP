execute store result score @s sand.entity.motion.x run data get entity @s Motion[0] 1000
execute store result score @s sand.entity.motion.y run data get entity @s Motion[1] 1000
execute store result score @s sand.entity.motion.z run data get entity @s Motion[2] 1000
execute if entity @s[type=#sand:timers] if data entity @s Fuse store result score @s sand.entity.fuse run data get entity @s Fuse
execute if entity @s[type=#sand:timers] if data entity @s fuse store result score @s sand.entity.fuse run data get entity @s fuse

tag @s add sand.sandevistan_applied
effect give @s minecraft:resistance infinite 255 true

scoreboard players operation @s sand.id.player = @p[scores={sand.BOOL.activate=1}] sand.id.player
execute if entity @s[type=#sand:projectiles] run return run execute:
  data modify entity @s NoGravity set value true
  data modify entity @s Motion set value [0d,0d,0d]
scoreboard players add $global sand.id.entity 1
scoreboard players operation @s sand.id.entity = $global sand.id.entity
summon marker ~ ~ ~ {Tags:["sand.marker", "sand.this2"]}
scoreboard players operation @n[tag=sand.this2] sand.id.entity = $global sand.id.entity
scoreboard players operation @n[tag=sand.this2] sand.id.player = @p[scores={sand.BOOL.activate=1}] sand.id.player
tag @n[tag=sand.this2] remove sand.this2
