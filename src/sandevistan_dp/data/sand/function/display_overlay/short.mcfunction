item_modifier_dict = {
  function: 'set_components',
  components: {
    equippable: {
      slot: 'head',
      equip_sound: {
        sound_id: 'sand:silence'
      }
    }
  }
}

def pad_4_left(x: int) -> str:
  x_str = str(x)
  zeros_to_add = 4 - len(x_str)
  return f'sand:overlays/overlay{"0" * zeros_to_add}{x}'

execute if score @s sand.timer.overlay matches 1 run playsound sand:sandevistan.entry master @a ~ ~ ~ 0.5

for i in range(1, 62):
  j = i
  if i > 21 and i < 41:
    continue
  if i >= 41:
    j = i - 20
  if i == 51:
    execute if score @s sand.timer.overlay matches 52 run playsound sand:sandevistan.exit master @a ~ ~ ~ 0.5
    
  item_modifier = item_modifier_dict
  item_modifier['components']['equippable']['camera_overlay'] = pad_4_left(j)
  execute if score @s sand.timer.overlay matches i run item modify entity @s armor.head item_modifier

execute if score @s sand.timer.overlay matches 62 run function sand:display_overlay/exit
