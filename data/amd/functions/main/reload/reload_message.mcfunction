# Description: send the reload message 4 sekonds after reload
# Called by: main/reload/reload
# Datapack by 2mal3

tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] ["",{"text":"[Server] Advanced Monsters Datapack v."},{"score":{"name":"$V1","objective":"amd.data"}},{"text":"."},{"score":{"name":"$V2","objective":"amd.data"}},{"text":"."},{"score":{"name":"$V3","objective":"amd.data"}},{"text":" by 2mal3 was loaded!"}]
