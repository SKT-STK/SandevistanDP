def pad_4_left(x: int) -> str:
  x_str = str(x)
  zeros_to_add = 4 - len(x_str)
  return f'{"0" * zeros_to_add}{x}'

OUT_PATH_FUNCTION = r'.\data\sand\function\display_overlay\long.mcfunction'
    
lines = [
  'execute if score @s sand.timer.overlay matches 1 run playsound sand:sandevistan.entry master @a ~ ~ ~ 0.5'
]


for i in range(1, 202):
  j = i
  if i > 21 and i < 181:
    continue
  if i >= 181:
    j = i - 160
  if i == 191:
    lines.append(
      'execute if score @s sand.timer.overlay matches 192 run playsound sand:sandevistan.exit master @a ~ ~ ~ 0.5'
    )
    
  lines.append(
    f'execute if score @s sand.timer.overlay matches {i} run item modify entity @s armor.head sand:overlays/{pad_4_left(j)}'
  )
lines.append(
  f'execute if score @s sand.timer.overlay matches 202 run function sand:display_overlay/exit'
)

with open(OUT_PATH_FUNCTION, 'w') as file:
  file.writelines([line + '\n' for line in lines])
