# Description: uninstalling
# Called by: main/uninstall/1
# Datapack by 2mal3

# message
tellraw @a ["",{"text":"[Server] The Advanced Monsters Datapack v."},{"score":{"name":"V1","objective":"amd.data"}},{"text":"."},{"score":{"name":"V2","objective":"amd.data"}},{"text":"."},{"score":{"name":"V3","objective":"amd.data"}},{"text":" by 2mal3 was successfully uninstalled."}]

# remove scoreboards
scoreboard objectives remove amd.random
scoreboard objectives remove amd.data

# remove advanced Monsters
execute as @e[tag=amd.transformed] run replaceitem entity @s armor.head minecraft:air
execute as @e[tag=amd.transformed] run data merge entity @s {CustomName:''}
execute as @e[tag=amd.transformed] run data merge entity @s {CustomNameVisible:0b}
