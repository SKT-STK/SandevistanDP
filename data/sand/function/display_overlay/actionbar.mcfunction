scoreboard players operation @s sand.timer.charge.percent = @s sand.timer.charge
scoreboard players operation @s sand.timer.charge.percent *= %10 sand.CONST
scoreboard players operation @s sand.timer.charge.percent /= @s sand.timer.charge.full

execute if score @s sand.timer.charge.percent matches 10 run title @s actionbar ["",{"text": "[ ","color": "blue"},{"text": "\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0","color": "yellow"},{"text": " ]","color": "blue"}]
execute if score @s sand.timer.charge.percent matches 10 run scoreboard players reset @s sand.BOOL.regenerate
execute if score @s sand.timer.charge.percent matches 10 run playsound sand:sandevistan.recharge master @a ~ ~ ~ 0.5
execute if score @s sand.timer.charge.percent matches 9 run title @s actionbar ["",{"text": "[ ","color": "blue"},{"text": "\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A1","color": "yellow"},{"text": " ]","color": "blue"}]
execute if score @s sand.timer.charge.percent matches 8 run title @s actionbar ["",{"text": "[ ","color": "blue"},{"text": "\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A1\u25A1","color": "yellow"},{"text": " ]","color": "blue"}]
execute if score @s sand.timer.charge.percent matches 7 run title @s actionbar ["",{"text": "[ ","color": "blue"},{"text": "\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A1\u25A1\u25A1","color": "yellow"},{"text": " ]","color": "blue"}]
execute if score @s sand.timer.charge.percent matches 6 run title @s actionbar ["",{"text": "[ ","color": "blue"},{"text": "\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A1\u25A1\u25A1\u25A1","color": "yellow"},{"text": " ]","color": "blue"}]
execute if score @s sand.timer.charge.percent matches 5 run title @s actionbar ["",{"text": "[ ","color": "blue"},{"text": "\u25A0\u25A0\u25A0\u25A0\u25A0\u25A1\u25A1\u25A1\u25A1\u25A1","color": "yellow"},{"text": " ]","color": "blue"}]
execute if score @s sand.timer.charge.percent matches 4 run title @s actionbar ["",{"text": "[ ","color": "blue"},{"text": "\u25A0\u25A0\u25A0\u25A0\u25A1\u25A1\u25A1\u25A1\u25A1\u25A1","color": "yellow"},{"text": " ]","color": "blue"}]
execute if score @s sand.timer.charge.percent matches 3 run title @s actionbar ["",{"text": "[ ","color": "blue"},{"text": "\u25A0\u25A0\u25A0\u25A1\u25A1\u25A1\u25A1\u25A1\u25A1\u25A1","color": "yellow"},{"text": " ]","color": "blue"}]
execute if score @s sand.timer.charge.percent matches 2 run title @s actionbar ["",{"text": "[ ","color": "blue"},{"text": "\u25A0\u25A0\u25A1\u25A1\u25A1\u25A1\u25A1\u25A1\u25A1\u25A1","color": "yellow"},{"text": " ]","color": "blue"}]
execute if score @s sand.timer.charge.percent matches 1 run title @s actionbar ["",{"text": "[ ","color": "blue"},{"text": "\u25A0\u25A1\u25A1\u25A1\u25A1\u25A1\u25A1\u25A1\u25A1\u25A1","color": "yellow"},{"text": " ]","color": "blue"}]
execute if score @s sand.timer.charge.percent matches 0 run title @s actionbar ["",{"text": "[ ","color": "blue"},{"text": "\u25A1\u25A1\u25A1\u25A1\u25A1\u25A1\u25A1\u25A1\u25A1\u25A1","color": "yellow"},{"text": " ]","color": "blue"}]
