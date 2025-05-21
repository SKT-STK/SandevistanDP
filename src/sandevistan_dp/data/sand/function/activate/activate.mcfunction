execute if entity @s[scores={sand.count.armor=1..}] if score @s sand.BOOL.activate matches 1 run scoreboard players set @s sand.BOOL.activate 0
execute if entity @s[scores={sand.count.armor=1..}] unless score @s sand.BOOL.activate matches 0..1 unless score @s sand.BOOL.regenerate matches 1:
  scoreboard players set @s sand.BOOL.activate 1
  scoreboard players add $global sand.id.player 1
  scoreboard players operation @s sand.id.player = $global sand.id.player
  execute store result score @s sand.entity.movement_speed run attribute @s minecraft:movement_speed base get 100
  execute store result storage sand:movement_speed base double 0.01 run scoreboard players operation @s sand.entity.movement_speed += $2 sand.CONST
  function(with storage sand:movement_speed):
    $attribute @s minecraft:movement_speed base set $(base)
  function(with entity @s):
    $data remove storage sand:head_item "$(UUID)"
    $data modify storage sand:head_item "$(UUID)" set from entity @s equipment.head
  execute if items entity @s armor.head * run item replace entity @s armor.head with barrier[custom_data={"sand.sand":true,"sand.helmet":true},enchantments={binding_curse:1},equippable={slot:"head",equip_sound:{sound_id:"sand:silence"}}]
  execute unless items entity @s armor.head * run item replace entity @s armor.head with barrier[custom_data={"sand.sand":true},enchantments={binding_curse:1},equippable={slot:"head",equip_sound:{sound_id:"sand:silence"}}]
  execute unless items entity @s armor.chest * run item replace entity @s armor.chest with barrier[custom_data={"sand.placeholder":true},equippable={slot:"chest",equip_sound:{sound_id:"sand:silence"}}]
  execute unless items entity @s armor.legs * run item replace entity @s armor.legs with barrier[custom_data={"sand.placeholder":true},equippable={slot:"legs",equip_sound:{sound_id:"sand:silence"}}]
  execute unless items entity @s armor.feet * run item replace entity @s armor.feet with barrier[custom_data={"sand.placeholder":true},equippable={slot:"feet",equip_sound:{sound_id:"sand:silence"}}]
  execute store success score @s sand.BOOL.has_binding_curse.chest if data entity @s equipment.chest.components."minecraft:enchantments"."minecraft:binding_curse"
  execute store success score @s sand.BOOL.has_binding_curse.legs if data entity @s equipment.legs.components."minecraft:enchantments"."minecraft:binding_curse"
  execute store success score @s sand.BOOL.has_binding_curse.feet if data entity @s equipment.feet.components."minecraft:enchantments"."minecraft:binding_curse"
  item modify entity @s armor.chest sand:apply_binding_curse
  item modify entity @s armor.legs sand:apply_binding_curse
  item modify entity @s armor.feet sand:apply_binding_curse
  scoreboard players reset @s sand.BOOL.regenerate
  execute if score @s sand.count.armor matches 4 run scoreboard players set @s sand.timer.charge.full 202
  execute if score @s sand.count.armor matches ..3 run scoreboard players set @s sand.timer.charge.full 42
  scoreboard players operation @s sand.timer.charge = @s sand.timer.charge.full
  advancement grant @s only sand:sand
