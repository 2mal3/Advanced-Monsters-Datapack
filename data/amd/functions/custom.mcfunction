# Description: Additional abilities for transformed monsters
# Called by: main/tick
# Datapack by 2mal3

execute as @e[type=#amd:arrow] at @s run data merge entity @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..2] {damage:4d}
execute as @e[type=minecraft:ghast] at @s run data merge entity @e[type=minecraft:fireball,limit=1,sort=nearest,distance=..5] {ExplosionPower:4}
