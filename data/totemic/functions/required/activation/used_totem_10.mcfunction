effect clear @s minecraft:absorption
effect clear @s minecraft:fire_resistance
tag @s add totemic_webbing
execute as @s at @s run effect give @e[tag=!totemic_webbing,distance=..4] minecraft:poison 30
tag @s remove totemic_webbing
execute as @s at @s run function totemic:required/other/web_mobs
effect give @s minecraft:speed 25
effect give @s minecraft:night_vision 60
