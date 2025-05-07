execute as @e[tag=sand.sandevistan_applied] run function sand:slow_motion/main/main

execute as @e[tag=!sand.sandevistan_applied,tag=!sand.marker,tag=!sand.projectile,type=!player,distance=..70] at @s run function sand:slow_motion/init
