effect clear @s minecraft:regeneration
effect clear @s minecraft:absorption
effect clear @s minecraft:fire_resistance
effect give @s minecraft:regeneration 45 1
effect give @s minecraft:resistance 45 2
execute as @s at @s run summon iron_golem ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:40f,PlayerCreated:1b,Tags:["mt_isguardian"],CustomName:'{"text":"Guardian Golem","color":"gold","bold":true,"italic":false}',Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.knockback_resistance",Base:0.7}]}
execute as @s at @s run scoreboard players set @e[type=minecraft:iron_golem,tag=mt_isguardian,distance=..1,sort=nearest] mt_spawnticks 900
