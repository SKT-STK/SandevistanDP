scoreboard players set @s sand.BOOL.activate 1
scoreboard players add %global sand.id.player 1
scoreboard players operation @s sand.id.player = %global sand.id.player
execute store success score @s sand.BOOL.has_speed run effect give @s speed infinite 0
execute if score @s sand.BOOL.has_speed matches 1 run effect give @s speed infinite 0 true
function sand:activate/activate_on_m with entity @s
execute if items entity @s armor.head * run item replace entity @s armor.head with barrier[custom_data={"sand.sand":true,"sand.helmet":true},enchantments={binding_curse:1}]
execute unless items entity @s armor.head * run item replace entity @s armor.head with barrier[custom_data={"sand.sand":true},enchantments={binding_curse:1}]
scoreboard players reset @s sand.BOOL.regenerate
execute if score @s sand.armor_count matches 4 run scoreboard players set @s sand.timer.charge.full 202
execute if score @s sand.armor_count matches ..3 run scoreboard players set @s sand.timer.charge.full 42
scoreboard players operation @s sand.timer.charge = @s sand.timer.charge.full
advancement grant @s only sand:sand
