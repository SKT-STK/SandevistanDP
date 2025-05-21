function sand:display_overlay/exit
kill @e[type=item, nbt={Item: {components: {"minecraft:custom_data": {sand.placeholder: true}}}}]
scoreboard players reset @s sand.dead
