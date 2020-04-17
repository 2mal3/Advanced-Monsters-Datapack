# Description: uninstalling
# Called by: #uninstall
# Datapack by 2mal3

tellraw @s ["",{"text":"Do you really want to deinstall the Advanced Monsters Dtapack v.","color":"red"},{"score":{"name":"V1","objective":"amd.data"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"V2","objective":"amd.data"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"V3","objective":"amd.data"},"color":"red"},{"text":" from 2mal3?","color":"red"},{"text":"\n"},{"text":"[No]","color":"dark_green","hoverEvent":{"action":"show_text","value":"*click*"}},{"text":" \u0020"},{"text":"[Yes]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function amd:main/uninstall/uninstall"},"hoverEvent":{"action":"show_text","value":"*click*"}}]
