effect clear @s minecraft:regeneration
effect clear @s minecraft:absorption
effect clear @s minecraft:fire_resistance
effect give @s minecraft:regeneration 45
execute at @s unless block ~ ~ ~ minecraft:water run effect give @s minecraft:weakness 30
execute at @s if block ~ ~1 ~ minecraft:water run effect give @s minecraft:dolphins_grace 25
execute at @s if block ~ ~1 ~ minecraft:water run tag @s add totemic_inking
execute as @s[tag=totemic_inking] at @s run effect give @e[tag=!totemic_inking,tag=!totemic_notamob,distance=..5] minecraft:blindness 30
execute as @s[tag=totemic_inking] at @s run particle minecraft:squid_ink ~ ~0.5 ~ 1 1 1 0.1 50 normal
execute as @s[tag=totemic_inking] at @s run particle minecraft:squid_ink ~ ~0.5 ~ 2 2 2 0.1 175 normal
execute as @s[tag=totemic_inking] at @s run particle minecraft:squid_ink ~ ~0.5 ~ 3 3 3 0.1 300 normal
execute as @s[tag=totemic_inking] at @s run particle minecraft:squid_ink ~ ~0.5 ~ 4 4 4 0.1 375 normal
execute as @s[tag=totemic_inking] at @s run particle minecraft:squid_ink ~ ~0.5 ~ 5 5 5 0.1 500 normal
tag @s[tag=totemic_inking] remove totemic_inking
