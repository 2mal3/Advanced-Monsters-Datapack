# Description: Turns the monsters into advanced for 1.16.2
# Called by: main/tick/second/1.16.2
# Datapack by 2mal3

# rename monsters
data merge entity @s {CustomName:'[{"text":"Advanced","color":"red"}]'}
data merge entity @s[type=minecraft:blaze] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Blaze","color":"white"}]'}
data merge entity @s[type=minecraft:cave_spider] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Cave Spider","color":"white"}]'}
data merge entity @s[type=minecraft:creeper] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Creeper","color":"white"}]'}
data merge entity @s[type=minecraft:drowned] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Drowned","color":"white"}]'}
data merge entity @s[type=minecraft:elder_guardian] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Elder guardian","color":"white"}]'}
data merge entity @s[type=minecraft:endermite] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Endermite","color":"white"}]'}
data merge entity @s[type=minecraft:evoker] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Evoker","color":"white"}]'}
data merge entity @s[type=minecraft:ghast] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Ghast","color":"white"}]'}
data merge entity @s[type=minecraft:guardian] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Guardian","color":"white"}]'}
data merge entity @s[type=minecraft:husk] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Husk","color":"white"}]'}
data merge entity @s[type=minecraft:illusioner] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Illusioner","color":"white"}]'}
data merge entity @s[type=minecraft:magma_cube] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Magma cube","color":"white"}]'}
data merge entity @s[type=minecraft:phantom] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Phantom","color":"white"}]'}
data merge entity @s[type=minecraft:ravager] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Ravager","color":"white"}]'}
data merge entity @s[type=minecraft:shulker] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Shulker","color":"white"}]'}
data merge entity @s[type=minecraft:silverfish] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Silverfish","color":"white"}]'}
data merge entity @s[type=minecraft:skeleton] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Skeleton","color":"white"}]'}
data merge entity @s[type=minecraft:slime] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Slime","color":"white"}]'}
data merge entity @s[type=minecraft:spider] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Spider","color":"white"}]'}
data merge entity @s[type=minecraft:stray] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Stray","color":"white"}]'}
data merge entity @s[type=minecraft:vex] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Vex","color":"white"}]'}
data merge entity @s[type=minecraft:vindicator] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Vindicator","color":"white"}]'}
data merge entity @s[type=minecraft:wither_skeleton] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Wither Skeleton","color":"white"}]'}
data merge entity @s[type=minecraft:zombie] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Zombie","color":"white"}]'}
data merge entity @s[type=minecraft:zombie_villager] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Zombie Villager","color":"white"}]'}
data merge entity @s[type=minecraft:pillager] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Pillager","color":"white"}]'}
data merge entity @s[type=minecraft:witch] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Witch","color":"white"}]'}
data merge entity @s[type=minecraft:zoglin] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Zoglin","color":"white"}]'}
data merge entity @s[type=minecraft:hoglin] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Hoglin","color":"white"}]'}
data merge entity @s[type=minecraft:piglin_brute] {CustomName:'[{"text":"Advanced: ","color":"red"},{"text":"Piglin Brute","color":"white"}]'}


# make the monsters stronger
replaceitem entity @s armor.head stone_button{AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.5,Operation:1,UUID:[I;1952402172,-108901445,-1142802844,241040109],Slot:"head"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.5,Operation:1,UUID:[I;-122403957,-1331608788,-1976865319,-1138603839],Slot:"head"},{AttributeName:"generic.follow_range",Name:"generic.follow_range",Amount:0.1,Operation:1,UUID:[I;2052287807,-521057642,-1982890753,1519780821],Slot:"head"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:0,UUID:[I;189066003,-1103805622,-1127492764,-478351356],Slot:"head"}]} 1
data merge entity @s[type=creeper] {ExplosionRadius:7b}

# Heals the monster to his max health 
execute if entity @s[type=!#amd:undead/1.16] run summon minecraft:potion ~ ~ ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_healing"}}}
execute if entity @s[type=!#amd:undead/1.16] run summon minecraft:potion ~ ~ ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_healing"}}}
execute if entity @s[type=#amd:undead/1.16] run summon minecraft:potion ~ ~ ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}
execute if entity @s[type=#amd:undead/1.16] run summon minecraft:potion ~ ~ ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}
effect give @s minecraft:slowness 5 99 true


# add tag to ignore
tag @s add amd.transformed
