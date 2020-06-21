# Description: 1 tick every sekond
# Called by: #tick
# Datapack by 2mal3

# choose a random monster
execute as @e[type=#amd:monsters,limit=1,sort=random] at @s unless score @s amd.random matches 1.. store result score @s amd.random run loot spawn ~ ~ ~ loot amd:random

# transform the choosen monsters to advanced
execute as @e[scores={amd.random=1},limit=1,sort=random,tag=!amd.transformed] at @s run function amd:transform


# tick
schedule function amd:main/tick_slow 1s
