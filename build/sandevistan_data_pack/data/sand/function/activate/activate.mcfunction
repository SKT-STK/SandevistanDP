execute if entity @s[scores={sand.count.armor=1..}] if score @s sand.BOOL.activate matches 1 run scoreboard players set @s sand.BOOL.activate 0
execute if entity @s[scores={sand.count.armor=1..}] unless score @s sand.BOOL.activate matches 0..1 unless score @s sand.BOOL.regenerate matches 1 run function sand:activate/activate/nested_execute_0
