# Description: Preparation commands
# Called by: #reaload
# Datapack by 2mal3

# scoreboards
scoreboard objectives add amd.random dummy
scoreboard objectives add amd.data dummy

scoreboard players set V1 amd.data 1
scoreboard players set V2 amd.data 3
scoreboard players set V3 amd.data 5

# Info
tellraw @a ["",{"text":"[Server] Advanced Monsters Datapack v."},{"score":{"name":"V1","objective":"amd.data"}},{"text":"."},{"score":{"name":"V2","objective":"amd.data"}},{"text":"."},{"score":{"name":"V3","objective":"amd.data"}},{"translate":" by 2mal3 was loaded!"}]


# install and uninstall translate 1.3.4
# better uninstall 1.3.5
