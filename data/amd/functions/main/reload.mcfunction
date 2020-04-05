# Description: Preparation commands
# Called by: #reaload
# Datapack by 2mal3

tellraw @a {"text":" "}
say The Advancet Monsters Datapack v.1.2 by 2mal3 was loaded!
tellraw @a [{"text":"For more info: "},{"text":"/trigger info","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger info"}}]
tellraw @a {"text":" "}


scoreboard objectives add amd.info trigger
scoreboard objectives add info trigger
scoreboard objectives add amd.random dummy
