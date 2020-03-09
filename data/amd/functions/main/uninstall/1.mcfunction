# Description: uninstalling
# Called by: #uninstall
# Datapack by 2mal3

tellraw @s ["",{"text":"Do you really want to deinstall the Advanced Monsters Dtapack v.1.0 from 2mal3? ","color":"red"},{"text":"[No] ","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"*klick*"}]}}},{"text":"[Yes]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function amd:main/uninstall/2"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"*klick*"}]}},"bold":false}]
