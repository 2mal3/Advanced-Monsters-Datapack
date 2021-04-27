# Description: Installs the Datapack on first start
# AS: server, AT: server
# Called from function: 2mal3:admo/core/reload
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={admo.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"AdvancedMonsters","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Datapack installed!","color":"green"}]


# Adds scoreboards
scoreboard objectives add admo.data dummy
scoreboard objectives add admo.debug_mode dummy
# Set start config
scoreboard players set $transform_chance admo.data 10
# Set the version in format: xx.xx.xx
scoreboard players set $version admo.data 010400

# Creates a loaded sign for the datapck somewhere in the world
forceload add 9232029 6397680
setblock 9232029 1 6397680 minecraft:crimson_sign

# Install librarys
function 2mal3:random/reload

# Sends Insatlations message after 4 sekonds
schedule function 2mal3:admo/core/first_run/send_message 4s


# Remembers that the Datapack was installed
scoreboard players set .first_run admo.data 1
