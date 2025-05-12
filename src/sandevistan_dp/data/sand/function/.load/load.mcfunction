tellraw @a "Sandevistan Datapack Loaded Successfully!"

scoreboard objectives add sand.count.armor dummy
scoreboard objectives add sand.timer.overlay dummy
scoreboard objectives add sand.timer.sandevistan dummy
scoreboard objectives add sand.timer.charge dummy
scoreboard objectives add sand.timer.charge.full dummy
scoreboard objectives add sand.timer.charge.percent dummy
scoreboard objectives add sand.BOOL.activate dummy
scoreboard objectives add sand.BOOL.regenerate dummy
scoreboard objectives add sand.BOOL.has_speed dummy
scoreboard objectives add sand.BOOL.has_binding_curse.chest dummy
scoreboard objectives add sand.BOOL.has_binding_curse.legs dummy
scoreboard objectives add sand.BOOL.has_binding_curse.feet dummy
scoreboard objectives add sand.entity.motion.x dummy
scoreboard objectives add sand.entity.motion.y dummy
scoreboard objectives add sand.entity.motion.z dummy
scoreboard objectives add sand.entity.fuse dummy
scoreboard objectives add sand.damage.dealt minecraft.custom:minecraft.damage_dealt_resisted
scoreboard objectives add sand.damage.taken dummy
scoreboard objectives add sand.damage.temp dummy
scoreboard objectives add sand.damage.health dummy
scoreboard objectives add sand.CONST dummy
scoreboard objectives add sand.id.entity dummy
scoreboard objectives add sand.id.player dummy
scoreboard objectives add sand.dead deathCount

scoreboard players reset * sand.CONST

scoreboard players set #10 sand.CONST 10
scoreboard players set #0 sand.CONST 0

gamerule maxCommandChainLength 2147483647
