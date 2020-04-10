# Description: Preparation commands
# Called by: #reaload
# Datapack by 2mal3

tellraw @a {"text":" "}
say The Advancet Monsters Datapack v.1.3 by 2mal3 was loaded!
tellraw @a {"text":" "}

advancement grant @a from main:root

scoreboard objectives add amd.random dummy
