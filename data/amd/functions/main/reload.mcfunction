# Description: Preparation commands
# Called by: #reaload
# Datapack by 2mal3

tellraw @a {"text":" "}
say The Advancet Monsters Datapack v.1.2 by 2mal3 was loaded!
tellraw @a {"text":" "}

advancement grant 2mal3 from main:root

scoreboard objectives add amd.random dummy
