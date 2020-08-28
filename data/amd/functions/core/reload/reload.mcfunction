# Description: All commands to init the datapack
# Called by: #reaload
# Datapack by 2mal3

# scoreboards
scoreboard objectives add amd.random dummy
scoreboard objectives add amd.data dummy

scoreboard players set $V1 amd.data 1
scoreboard players set $V2 amd.data 6
scoreboard players set $V3 amd.data 10


# test minecraft version
function version:test


# send the reload message 4 sekonds after reload
execute unless score $amd.first_run amd.data matches 1 run schedule function amd:core/reload/first_run 4s


# start game loop
execute if score $version version matches 1140..1152 run function amd:f/tick/second/1.14
execute if score $version version matches 1160..1161 run function amd:core/tick/second/1.16
execute if score $version version matches 1162.. run function amd:core/tick/second/1.16.2

# small optmizations 1.6.9
# better compatiblity with other datapacks 1.6.10