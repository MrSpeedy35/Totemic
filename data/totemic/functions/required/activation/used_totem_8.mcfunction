effect clear @s minecraft:regeneration
effect clear @s minecraft:absorption
effect clear @s minecraft:fire_resistance
effect give @s minecraft:resistance 45 2
effect give @s minecraft:absorption 25 2

spreadplayers ~ ~ 1 20 true @s
execute as @s at @s run particle minecraft:portal ~ ~ ~ 0.1 0.7 0.1 0.6 300
