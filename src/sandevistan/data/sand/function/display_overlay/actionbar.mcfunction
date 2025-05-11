scoreboard players operation @s sand.timer.charge.percent = @s sand.timer.charge
scoreboard players operation @s sand.timer.charge.percent *= %10 sand.CONST
scoreboard players operation @s sand.timer.charge.percent /= @s sand.timer.charge.full

execute if score @s sand.timer.charge.percent matches 10 run scoreboard players reset @s sand.BOOL.regenerate
execute if score @s sand.timer.charge.percent matches 10 run playsound sand:sandevistan.recharge master @a ~ ~ ~ 0.5

for i in range(0, 10 + 1):
  execute if score @s sand.timer.charge.percent matches i run title @s actionbar ["", {text: "[ ", color: "blue", bold: true}, {text: f'{"\u25A0" * i}{"\u25A1" * (10 - i)}', color: "yellow"}, {text: " ]", color: "blue", bold: true}]
