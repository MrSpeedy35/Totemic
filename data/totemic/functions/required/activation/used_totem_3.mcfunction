effect clear @s minecraft:regeneration
effect clear @s minecraft:absorption
effect clear @s minecraft:fire_resistance
tag @s add totemic_exploding
execute as @s at @s run effect give @e[tag=!totemic_exploding,tag=!totemic_is_undead,distance=..3] minecraft:instant_damage 1 1
execute as @s at @s run effect give @e[type=!player,tag=!totemic_exploding,tag=totemic_is_undead,distance=..3] minecraft:instant_health 1 1
tag @s remove totemic_exploding
effect give @s minecraft:instant_health 1
effect give @s minecraft:regeneration 45 1
execute as @s at @s run particle minecraft:explosion_emitter ~ ~ ~ 0.1 0.1 0.1 1 1
