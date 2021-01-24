# Description: Commands when reloading the datapack
# Called from tag: minecraft:reaload
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={admo.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"AdvancedMonsters","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Datapack reloaded!","color":"green"}]


# Adds scoreboards
scoreboard objectives add admo.data dummy
scoreboard objectives add admo.debug_mode dummy

# Set the version in format: xx.xx.xx
scoreboard players set $admo.version admo.data 010300

# Executes the installation when the datapack is started for the first time
execute unless score $admo.first_run admo.data matches 1 run schedule function 2mal3:admo/core/first_run 4s

# Starts the loops
function 2mal3:admo/core/second
