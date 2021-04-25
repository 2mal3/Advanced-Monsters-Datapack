# Description: Sends a debug message with information about the datapack and the world to the executing player
# AS: player, AT: player
# Called from function tag: 2mal3:admo/debug
# Datapack by 2mal3

# Get variables
execute store result score .temp_0 admo.data run data get entity @s DataVersion
execute store result score .temp_1 admo.data run datapack list
execute store result score .temp_2 admo.data run execute if entity @a

# admo version; minecraft version; datapack count; player count
tellraw @s [{"text":"Debug data: ","color":"gold"},{"score":{"name":"$version","objective":"admo.data"},"color":"red"},{"text":"; ","color":"gold"},{"score":{"name":".temp_0","objective":"admo.data"},"color":"red"},{"text":"; ","color":"gold"},{"score":{"name":".temp_1","objective":"admo.data"},"color":"red"},{"text":"; ","color":"gold"},{"score":{"name":".temp_2","objective":"admo.data"},"color":"red"}]
