# Description: Game loop for 1.16 every second
# Called by: main/reload/reload, main/tick/second
# Datapack by 2mal3

# choose a random monster
execute as @e[type=#amd:monsters/1.16,tag=!global.ignore,tag=!amd.transformed] at @s store result score @s amd.random run loot spawn ~ ~ ~ loot amd:random

# transform the choosen monsters to advanced
execute as @e[scores={amd.random=1},tag=!amd.transformed,tag=!global.ignore] at @s run function amd:transform/1.16


# tick
schedule function amd:main/tick/second/1.16 1s
