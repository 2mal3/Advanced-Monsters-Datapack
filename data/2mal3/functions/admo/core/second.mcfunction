# Description: Main loop every second
# Called from functions: 2mal3:admo/core/reload, 2mal3:admo/core/second
# Datapack by 2mal3

# Try to transform all new monsters
execute as @e[type=#2mal3:admo/monsters,tag=!admo.processed,tag=!global.ignore] at @s run function 2mal3:admo/tray_transforming

# Calls the function in the next second
schedule function 2mal3:admo/core/second 1s
