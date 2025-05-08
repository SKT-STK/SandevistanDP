def pad_4_left(x: int) -> str:
  x_str = str(x)
  zeros_to_add = 4 - len(x_str)
  return f'{"0" * zeros_to_add}{x}'

OUT_PATH_ITEM_MODIFIERS = r'.\data\sand\item_modifier\overlays'

START_NUMBER = 1
END_NUMBER = 41

MODIFIER_TEMPLATE = """{{
  "function": "set_components",
  "components": {{
    "equippable": {{
      "slot": "head",
      "equip_sound": {{
        "sound_id": "sand:silence"
      }},
      "camera_overlay": "sand:overlays/overlay{}"
    }}
  }}
}}"""

for i in range(START_NUMBER, END_NUMBER + 1):
  with open(fr'{OUT_PATH_ITEM_MODIFIERS}\{pad_4_left(i)}.json', 'w') as file:
    file.write(MODIFIER_TEMPLATE.format(pad_4_left(i)))
    
    
# 21 is the main frame
