stopsound @s * minecraft:item.armor.equip_chain
stopsound @s * minecraft:item.armor.equip_diamond
stopsound @s * minecraft:item.armor.equip_generic
stopsound @s * minecraft:item.armor.equip_gold
stopsound @s * minecraft:item.armor.equip_iron
stopsound @s * minecraft:item.armor.equip_leather
stopsound @s * minecraft:item.armor.equip_netherite
stopsound @s * minecraft:item.armor.equip_turtle

scoreboard players reset @s sand.BOOL.activate
scoreboard players reset @s sand.timer.overlay
execute if score @s sand.BOOL.has_speed matches 1 run effect clear @s speed
execute in sand:sand_forceload run forceload add 0 0
execute in sand:sand_forceload run data remove block 0 0 0 item
function sand:display_overlay/exit_m with entity @s
execute unless score @s sand.dead matches 1.. in sand:sand_forceload run item replace entity @s armor.head from block 0 0 0 container.0
execute if score @s sand.dead matches 1.. in sand:sand_forceload run item replace entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{"sand.sand":true}}}}] contents from block 0 0 0 container.0
execute in sand:sand_forceload run forceload remove all
execute unless score @s sand.dead matches 1.. run scoreboard players set @s sand.BOOL.regenerate 1
scoreboard players operation %search sand.id.player = @s sand.id.player
execute as @e[tag=sand.sandevistan_applied] if score @s sand.id.player = %search sand.id.player run function sand:slow_motion/end
execute as @e[type=marker,tag=sand.marker] if score @s sand.id.player = %search sand.id.player run kill @s
