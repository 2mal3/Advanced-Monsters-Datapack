# Description: Uninstalls the Datapack
# Called from function: core/uninstall/uninstall_ask
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={admo.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"AdvancedMonsters","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Datapack uninstalled!","color":"green"}]


# Stops the loops
schedule clear 2mal3:admo/core/second

# Deletes the scoreboards
scoreboard objectives remove admo.data
scoreboard objectives remove admo.debug_mode

# Uninstall librarys
function 2mal3:random/uninstall

# Sends an uninstallation message to all players
tellraw @a [{"text":"Advanced Monsters Datapack v1.3.0 by 2mal3 was successfully uninstalled."}]

# Disables the datapack
datapack disable "file/Advanced-Monsters-Datapack-v1.3.0"
datapack disable "file/Advanced-Monsters-Datapack-v1.3.0.zip"