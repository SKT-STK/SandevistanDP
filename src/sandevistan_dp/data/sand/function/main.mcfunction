make_food = {
  function: 'minecraft:set_components',
  components: {
    consumable: {
      consume_seconds: 2147483647
    }
  }
}

execute if items entity @s weapon.mainhand #sand:make_consumable[!minecraft:consumable] run item modify entity @s weapon.mainhand make_food

execute if score @s sand.BOOL.activate matches 0..1 run function sand:display_overlay/timer
execute if score @s sand.BOOL.activate matches 0..1 run function sand:slow_motion/main/self
execute if score @s sand.BOOL.activate matches 0 unless score @s sand.timer.overlay matches 181.. if score @s sand.count.armor matches 4 run scoreboard players set @s sand.timer.overlay 181
execute if score @s sand.BOOL.activate matches 0 unless score @s sand.timer.overlay matches 41.. if score @s sand.count.armor matches 1..3 run scoreboard players set @s sand.timer.overlay 41

execute if score @s sand.BOOL.regenerate matches 1 run scoreboard players set @s sand.timer.charge.full 202
execute if score @s sand.BOOL.regenerate matches 1 run scoreboard players add @s sand.timer.charge 1
execute if score @s sand.BOOL.regenerate matches 1 run function sand:display_overlay/actionbar

execute if score @s sand.dead matches 1.. run function sand:dead
