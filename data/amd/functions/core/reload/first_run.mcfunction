# Description: send the installation message 3 sekonds after reload
# Called by: core/reload/reload
# Datapack by 2mal3

tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] ["",{"text":"Advanced Monsters Datapack v","color":"blue"},{"score":{"name":"$V1","objective":"amd.data"},"color":"blue"},{"text":".","color":"blue"},{"score":{"name":"$V2","objective":"amd.data"},"color":"blue"},{"text":".","color":"blue"},{"score":{"name":"$V3","objective":"amd.data"},"color":"blue"},{"text":" by 2mal3 was installed!","color":"blue"}]

scoreboard players set $amd.first_run amd.data 1