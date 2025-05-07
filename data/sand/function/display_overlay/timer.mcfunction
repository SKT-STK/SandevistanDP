scoreboard players add @s sand.timer.overlay 1
scoreboard players remove @s sand.timer.charge 1

execute if score @s sand.armor_count matches 4 run function sand:display_overlay/long
execute if score @s sand.armor_count matches ..3 run function sand:display_overlay/short

function sand:display_overlay/actionbar
