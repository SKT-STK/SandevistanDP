advancement revoke @s only sand:armor_check
scoreboard players set @s sand.armor_count 0

execute if entity @s[nbt={equipment:{feet:{components:{"minecraft:enchantments":{"sand:sandevistan":1}}}}}] run scoreboard players add @s sand.armor_count 1
execute if entity @s[nbt={equipment:{legs:{components:{"minecraft:enchantments":{"sand:sandevistan":1}}}}}] run scoreboard players add @s sand.armor_count 1
execute if entity @s[nbt={equipment:{chest:{components:{"minecraft:enchantments":{"sand:sandevistan":1}}}}}] run scoreboard players add @s sand.armor_count 1
execute if entity @s[nbt={equipment:{head:{components:{"minecraft:enchantments":{"sand:sandevistan":1}}}}}] run scoreboard players add @s sand.armor_count 1
execute if entity @s[nbt={equipment:{head:{components:{"minecraft:custom_data":{"sand.helmet":true}}}}}] run scoreboard players add @s sand.armor_count 1
