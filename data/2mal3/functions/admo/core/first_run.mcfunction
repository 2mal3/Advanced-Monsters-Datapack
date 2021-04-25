# Description: One-time commands at the first start of the datapack
# AS: server, AT: server
# Called from function: 2mal3:admo/core/reload
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={admo.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"AdvancedMonsters","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Datapack installed!","color":"green"}]

# Start config
scoreboard players set $admo.transform_chance admo.data 10

# Remembers that the Datapack was installed
scoreboard players set $admo.first_run admo.data 1

# Sends installation message
tellraw @a [{"text":"Advanced Monsters Datapack v1.3.0 by 2mal3 was installed!","color":"blue"}]
