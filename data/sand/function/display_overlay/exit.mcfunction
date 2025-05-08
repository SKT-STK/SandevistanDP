scoreboard players reset @s sand.BOOL.activate
scoreboard players reset @s sand.timer.overlay
execute if score @s sand.BOOL.has_speed matches 1 run effect clear @s speed
summon item ~ ~ ~ {Item:{id:dirt},Tags:["sand.item"],PickupDelay:-1}
function sand:display_overlay/exit_m with entity @s
execute unless score @s sand.dead matches 1.. run item replace entity @s armor.head from entity @n[tag=sand.item] contents
execute if score @s sand.dead matches 1.. run item replace entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{"sand.sand":true}}}}] contents from entity @n[tag=sand.item] contents
kill @e[tag=sand.item]
execute if items entity @s armor.chest barrier[custom_data={"sand.placeholder":true}] run item replace entity @s armor.chest with air
execute if items entity @s armor.legs barrier[custom_data={"sand.placeholder":true}] run item replace entity @s armor.legs with air
execute if items entity @s armor.feet barrier[custom_data={"sand.placeholder":true}] run item replace entity @s armor.feet with air
execute if score @s sand.BOOL.has_binding_curse.chest matches 0 run item modify entity @s armor.chest sand:remove_binding_curse
execute if score @s sand.BOOL.has_binding_curse.legs matches 0 run item modify entity @s armor.legs sand:remove_binding_curse
execute if score @s sand.BOOL.has_binding_curse.feet matches 0 run item modify entity @s armor.feet sand:remove_binding_curse
execute unless score @s sand.dead matches 1.. run scoreboard players set @s sand.BOOL.regenerate 1
scoreboard players operation %search sand.id.player = @s sand.id.player
execute as @e[tag=sand.sandevistan_applied] if score @s sand.id.player = %search sand.id.player run function sand:slow_motion/end
execute as @e[type=marker,tag=sand.marker] if score @s sand.id.player = %search sand.id.player run kill @s

stopsound @a * minecraft:item.armor.equip_chain
stopsound @a * minecraft:item.armor.equip_diamond
stopsound @a * minecraft:item.armor.equip_generic
stopsound @a * minecraft:item.armor.equip_gold
stopsound @a * minecraft:item.armor.equip_iron
stopsound @a * minecraft:item.armor.equip_leather
stopsound @a * minecraft:item.armor.equip_netherite
stopsound @a * minecraft:item.armor.equip_turtle
