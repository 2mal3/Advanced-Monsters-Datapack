# Description: uninstalling
# Called by: main/uninstall/1
# Datapack by 2mal3

scoreboard objectives remove amd.info
scoreboard objectives remove info
scoreboard objectives remove amd.random

execute as @e[tag=amd.transformed] run replaceitem entity @s armor.head minecraft:air
execute as @e[tag=amd.transformed] run data merge entity @s {CustomName:''}
execute as @e[tag=amd.transformed] run data merge entity @s {CustomNameVisible:0b}

tellraw @a {"text":""}
say The Advanced Monsters Datapack v.1.2 by 2mal3 was successfully uninstalled!
tellraw @a {"text":""}
