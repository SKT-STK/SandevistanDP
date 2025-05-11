execute as @e[tag=sand.sandevistan_applied,type=!#sand:projectiles] run function sand:slow_motion/main/main

execute as @e[tag=!sand.sandevistan_applied,tag=!sand.marker,type=!#sand:excludees,distance=..70] at @s run function sand:slow_motion/init
