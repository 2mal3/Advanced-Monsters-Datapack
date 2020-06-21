# Description: all commands to init the datapack
# Called by: #reaload
# Datapack by 2mal3

# scoreboards
scoreboard objectives add amd.random dummy
scoreboard objectives add amd.data dummy

scoreboard players set V1 amd.data 1
scoreboard players set V2 amd.data 4
scoreboard players set V3 amd.data 6

# send the reload message 4 sekonds after reload
schedule function amd:main/reload_message 4s


# tick
function amd:main/tick_slow

# better performance 1.3.6
# better reload message 1.4.6
