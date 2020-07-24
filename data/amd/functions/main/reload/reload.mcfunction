# Description: All commands to init the datapack
# Called by: #reaload
# Datapack by 2mal3

# scoreboards
scoreboard objectives add amd.random dummy
scoreboard objectives add amd.data dummy

scoreboard players set $V1 amd.data 1
scoreboard players set $V2 amd.data 6
scoreboard players set $V3 amd.data 8


# test minecraft version
function version:test


# send the reload message 4 sekonds after reload
schedule function amd:main/reload/reload_message 3s


# start game loop
execute if score $version version matches 1140..1152 run function amd:main/tick/second/1.14
execute if score $version version matches 1160..1161 run function amd:main/tick/second/1.16
execute if score $version version matches 1162.. run function amd:main/tick/second/1.16.2

# better compitiblity with other datapacks 1.5.6
# support for 1.14.X, 1.15.X, 1.16.1, 1.16.2 1.6.6
# removed nametag visiblity 1.6.7
# removed transaltion because it not used 1.6.8