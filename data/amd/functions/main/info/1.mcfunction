# Description: info
# Called by: main/tick
# Datapack by 2mal3

tellraw @s {"text":"Advanced Monsters v.1.2 by 2mal3","color":"gold","clickEvent":{"action":"run_command","value":"/trigger amd.info"}}
scoreboard players enable @s amd.info

schedule function amd:main/info/remove 1t
