scoreboard players add @s sand.timer.sandevistan 1
scoreboard players operation $search sand.id.entity = @s sand.id.entity
execute as @e[type=marker, tag=sand.marker] if score @s sand.id.entity = $search sand.id.entity run tag @s add sand.this
execute at @e[tag=sand.this] run tp @s ~ ~ ~
tag @e[tag=sand.this] remove sand.this
execute store result score @s sand.damage.temp on attacker run scoreboard players get @s sand.damage.dealt
scoreboard players operation @s sand.damage.taken += @s sand.damage.temp
execute on attacker run scoreboard players reset @s sand.damage.dealt
data modify entity @s[type=#sand:timers] Fuse set value 100b
data modify entity @s[type=#sand:timers] fuse set value 100b
