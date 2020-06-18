# Description: Turns the monsters
# Called by: main/tick
# Datapack by 2mal3

data merge entity @s {CustomNameVisible:1b}
data merge entity @s[type=creeper] {ExplosionRadius:7b}

data merge entity @s {CustomName:'[{"text":"Advanced","color":"red"}]'}
data merge entity @s[type=minecraft:blaze] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Blaze","color":"white"}]'}
data merge entity @s[type=minecraft:cave_spider] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Cave Spider","color":"white"}]'}
data merge entity @s[type=minecraft:creeper] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Creeper","color":"white"}]'}
data merge entity @s[type=minecraft:drowned] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Drowned","color":"white"}]'}
data merge entity @s[type=minecraft:elder_guardian] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Elder guardian","color":"white"}]'}
data merge entity @s[type=minecraft:endermite] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Endermite","color":"white"}]'}
data merge entity @s[type=minecraft:evoker] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Evoker","color":"white"}]'}
data merge entity @s[type=minecraft:ghast] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Ghast","color":"white"}]'}
data merge entity @s[type=minecraft:guardian] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Guardian","color":"white"}]'}
data merge entity @s[type=minecraft:husk] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Husk","color":"white"}]'}
data merge entity @s[type=minecraft:illusioner] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Illusioner","color":"white"}]'}
data merge entity @s[type=minecraft:magma_cube] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Magma cube","color":"white"}]'}
data merge entity @s[type=minecraft:phantom] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Phantom","color":"white"}]'}
data merge entity @s[type=minecraft:ravager] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Ravager","color":"white"}]'}
data merge entity @s[type=minecraft:shulker] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Shulker","color":"white"}]'}
data merge entity @s[type=minecraft:silverfish] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Silverfish","color":"white"}]'}
data merge entity @s[type=minecraft:skeleton] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Skeleton","color":"white"}]'}
data merge entity @s[type=minecraft:slime] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Slime","color":"white"}]'}
data merge entity @s[type=minecraft:spider] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Spider","color":"white"}]'}
data merge entity @s[type=minecraft:stray] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Stray","color":"white"}]'}
data merge entity @s[type=minecraft:vex] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Vex","color":"white"}]'}
data merge entity @s[type=minecraft:vindicator] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Vindicator","color":"white"}]'}
data merge entity @s[type=minecraft:wither_skeleton] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Wither Skeleton","color":"white"}]'}
data merge entity @s[type=minecraft:zombie] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Zombie","color":"white"}]'}
data merge entity @s[type=minecraft:zombie_villager] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Zombie Villager","color":"white"}]'}
data merge entity @s[type=minecraft:pillager] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Pillager","color":"white"}]'}
data merge entity @s[type=minecraft:witch] {CustomName:'[{"text":"Advanced: ","color":"red"},{"translate":"Witch","color":"white"}]'}


replaceitem entity @s armor.head minecraft:stone_button{AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0.5,Operation:1,UUIDLeast:11091,UUIDMost:277775,Slot:"head"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0.5,Operation:1,UUIDLeast:931896,UUIDMost:196357,Slot:"head"},{AttributeName:"generic.followRange",Name:"generic.followRange",Amount:0.1,Operation:1,UUIDLeast:728338,UUIDMost:733947,Slot:"head"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.1,Operation:1,UUIDLeast:198717,UUIDMost:41222,Slot:"head"}]} 1

execute if entity @s[type=!#amd:undead] run summon minecraft:potion ~ ~ ~ {Motion:[0.0,0.5,0.0],Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_healing"}}}
execute if entity @s[type=!#amd:undead] run summon minecraft:potion ~ ~ ~ {Motion:[0.0,0.5,0.0],Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_healing"}}}
execute if entity @s[type=#amd:undead] run summon minecraft:potion ~ ~ ~ {Motion:[0.0,0.5,0.0],Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}
execute if entity @s[type=#amd:undead] run summon minecraft:potion ~ ~ ~ {Motion:[0.0,0.5,0.0],Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}
effect give @s minecraft:slowness 5 99 true


tag @s add amd.transformed
