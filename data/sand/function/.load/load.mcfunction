tellraw @a "Sandevistan Datapack Loaded Successfully!"

scoreboard objectives add sand.armor_count dummy
scoreboard objectives add sand.timer.overlay dummy
scoreboard objectives add sand.timer.sandevistan dummy
scoreboard objectives add sand.timer.charge dummy
scoreboard objectives add sand.timer.charge.full dummy
scoreboard objectives add sand.timer.charge.percent dummy
scoreboard objectives add sand.BOOL.activate dummy
scoreboard objectives add sand.BOOL.regenerate dummy
scoreboard objectives add sand.BOOL.has_speed dummy
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

scoreboard players set %10 sand.CONST 10
scoreboard players set %0 sand.CONST 0

team add sand.no_collision
team modify sand.no_collision collisionRule never

execute in sand:sand_forceload run forceload add 0 0
execute in sand:sand_forceload run setblock 0 0 0 decorated_pot
execute in sand:sand_forceload run forceload remove all
