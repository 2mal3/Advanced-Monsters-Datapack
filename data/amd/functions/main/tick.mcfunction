# Description: tick
# Called by: #tick
# Datapack by 2mal3


execute as @e[type=#amd:monsters,limit=1,sort=random] at @s unless score @s amd.random matches 1.. store result score @s amd.random run loot spawn ~ ~ ~ loot amd:random

execute as @e[scores={amd.random=1},limit=1,sort=random,tag=!amd.transformed] at @s run function amd:transform

execute as @e[scores={amd.random=1}] at @s run function amd:custom
