# Description: uninstalling
# Called by: main/uninstall/uninstall_ask
# Datapack by 2mal3

# send remove message
tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Server] Advanced Monsters Datapack v."},{"score":{"name":"$V1","objective":"amd.data"}},{"text":"."},{"score":{"name":"$V2","objective":"amd.data"}},{"text":"."},{"score":{"name":"$V3","objective":"amd.data"}},{"text":" by 2mal3 was successfully uninstalled."}]


# remove scoreboards
scoreboard objectives remove amd.random
scoreboard objectives remove amd.data


# uninstall version library
function version:uninstall


# remove advanced monsters
execute as @e[tag=amd.transformed] run replaceitem entity @s armor.head minecraft:air
execute as @e[tag=amd.transformed] run data merge entity @s {CustomName:""}


# diasable datapack tick
schedule clear amd:main/tick/second/1.14
schedule clear amd:main/tick/second/1.16
schedule clear amd:main/tick/second/1.16.2


# disable datapck
datapack disable "file/Advanced-Monsters-Datapack"
datapack disable "file/Advanced-Monsters-Datapack.zip"
