# Description: Additional abilities for transformed monsters
# Called by: main/tick/tick
# Datapack by 2mal3

execute if entity @s[type=#amd:arrow] run data merge entity @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..2] {damage:4d}
execute if entity @s[type=minecraft:ghast] run data merge entity @e[type=minecraft:fireball,limit=1,sort=nearest,distance=..5] {ExplosionPower:4}
