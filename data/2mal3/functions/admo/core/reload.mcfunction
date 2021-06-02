# Description: Commands when reloading the datapack
# AS: server, AT: server
# Called from function tag: load:load
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={admo.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"AdvancedMonsters","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"/","color":"gray"},{"text":"Server","color":"green"},{"text":"]: ","color":"gray"},{"text":"Datapack reloaded","color":"green"}]


# Add basic scoreboards
scoreboard objectives add admo.data dummy

# Initializes the datapack at the first startup or new version
execute unless score .first_run admo.data matches 1 run function 2mal3:admo/core/first_run/main
execute if score .first_run admo.data matches 1 unless score $version admo.data matches 010401 run function 2mal3:admo/core/first_run/update

# Starts the loops
schedule function 2mal3:admo/core/loop 1s replace
