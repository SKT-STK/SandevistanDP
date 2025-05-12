advancement revoke @s only sand:armor_check
scoreboard players set @s sand.count.armor 0

execute if entity @s[nbt={equipment:{feet:{components:{"minecraft:enchantments":{"sand:sandevistan":1}}}}}] run scoreboard players add @s sand.count.armor 1
execute if entity @s[nbt={equipment:{legs:{components:{"minecraft:enchantments":{"sand:sandevistan":1}}}}}] run scoreboard players add @s sand.count.armor 1
execute if entity @s[nbt={equipment:{chest:{components:{"minecraft:enchantments":{"sand:sandevistan":1}}}}}] run scoreboard players add @s sand.count.armor 1
execute if entity @s[nbt={equipment:{head:{components:{"minecraft:enchantments":{"sand:sandevistan":1}}}}}] run scoreboard players add @s sand.count.armor 1
execute if entity @s[nbt={equipment:{head:{components:{"minecraft:custom_data":{"sand.helmet":true}}}}}] run scoreboard players add @s sand.count.armor 1
