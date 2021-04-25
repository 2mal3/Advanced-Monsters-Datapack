# Description: Transforms with a certain chance the monster
# AS: @e[type=#2mal3:admo/monsters,tag=!admo.processed,tag=!global.ignore], AT: @s
# Called from function: 2mal3:admo/core/second
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
tellraw @a[scores={admo.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"AdvancedMonsters","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Try to transform ","color":"aqua"},{"selector":"@s","color":"aqua"},{"text":" ...","color":"aqua"}]


# Transforms with a certain chance the monster
scoreboard players set .in_0 2mal3.random 0
scoreboard players operation .in_1 2mal3.random = $transform_chance admo.data
function 2mal3:random/random

execute if score .out_0 2mal3.random matches 0 run function 2mal3:admo/transform


# Saves that this monster was processed
tag @s add admo.processed
