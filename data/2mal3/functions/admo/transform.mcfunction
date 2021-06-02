# Description: Transforms a monster
# AS: @e[type=#2mal3:admo/monsters,tag=!admo.processed,tag=!global.ignore], AT: @s
# Called from function: 2mal3:admo/tray_transforming
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
tellraw @a[scores={admo.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"AdvancedMonsters","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"/","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Transformed","color":"aqua"}]


# Sets the name of the monster
tag @s add admo.this
setblock 9232029 1 6397680 minecraft:crimson_sign{Text1: '[{"text":"Advanced: ","color":"red"},{"selector":"@e[tag=admo.this]","color":"white"}]'}
data modify entity @s CustomName set from block 9232029 1 6397680 Text1

setblock 9232029 1 6397680 minecraft:stone
tag @s remove admo.this


# Make the monster stronger
attribute @s generic.attack_damage modifier add f50dfa13-c51b-414e-b068-36437a86b406 "admo.attack_damage" 0.7 multiply
attribute @s generic.max_health modifier add 5312c08e-69d3-4798-90b5-d008f9d8b4b3 "admo.max_health" 0.5 multiply

attribute @s generic.attack_speed modifier add 6219720a-e6fd-421c-b988-5000816e9109 "admo.attack_speed" 0.2 multiply
attribute @s generic.follow_range modifier add addb878b-b2dc-4307-b04e-f6838ecfb44f "admo.follow_range" 0.3 multiply
attribute @s generic.movement_speed modifier add 9e42d73c-9479-47a6-85a6-e3ac6a42b450 "admo.movement_speed" 0.2 multiply


# Heal the monster
effect give @s[type=#2mal3:admo/undead] minecraft:instant_damage 1 100 true
effect give @s[type=!#2mal3:admo/undead] minecraft:instant_health 1 100 true


# Improves special abilities of the monster
execute if entity @s[type=minecraft:creeper] run data modify entity @s ExplosionRadius set value 6b
execute if entity @s[type=#2mal3:admo/bow] run enchant @s minecraft:power 2
