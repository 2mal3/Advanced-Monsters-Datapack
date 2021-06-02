# Description: Uninstalls the Datapack
# AS: player, AT: player
# Called from function: core/uninstall/uninstall_ask
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={admo.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"AdvancedMonsters","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"/","color":"gray"},{"text":"Server","color":"green"},{"text":"]: ","color":"gray"},{"text":"Datapack uninstalled","color":"green"}]

# Stops the loops
schedule clear 2mal3:admo/core/loop

# Deletes the scoreboards
scoreboard objectives remove admo.data
scoreboard objectives remove admo.debug_mode

# Removes the datapack sign
forceload remove 9232029 6397680
setblock 9232029 1 6397680 minecraft:stone

# Uninstall librarys
function 2mal3:random/uninstall

# Sends an uninstallation message to all players
tellraw @a [{"text":"Advanced Monsters Datapack v1.4.1 by 2mal3 was successfully uninstalled."}]

# Disables the datapack
datapack disable "file/Advanced-Monsters-Datapack-v1.4.1"
datapack disable "file/Advanced-Monsters-Datapack-v1.4.1.zip"
