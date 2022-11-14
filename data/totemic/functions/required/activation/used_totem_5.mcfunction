effect clear @s minecraft:regeneration
effect clear @s minecraft:absorption
effect clear @s minecraft:fire_resistance
tag @s add totemic_ghasting
execute as @s at @s run effect give @e[type=!minecraft:item,tag=!totemic_ghasting,distance=..5] minecraft:blindness 25
execute as @s at @s run effect give @e[type=!minecraft:item,tag=!totemic_ghasting,distance=..5] minecraft:slowness 15 1
execute as @s at @s run effect give @e[tag=!totemic_ghasting,tag=!totemic_is_undead,tag=totemic_is_hostile,distance=..5] minecraft:instant_damage 1
execute as @s at @s run effect give @e[type=!player,tag=!totemic_ghasting,tag=totemic_is_undead,tag=totemic_is_hostile,distance=..5] minecraft:instant_health 1
tag @s remove totemic_ghasting
effect give @s minecraft:regeneration 45 1
effect give @s minecraft:speed 45
execute as @s at @s run particle minecraft:explosion_emitter ~ ~ ~ 0.1 0.1 0.1 1 1
execute as @s at @s run particle dust 0.000 0.000 0.000 1 ~ ~0.5 ~ 2 2 2 1 45 normal
execute as @s at @s run particle dust 0.000 0.000 0.000 1 ~ ~0.5 ~ 2 2 2 1 45 normal
execute as @s at @s run particle dust 0.000 0.000 0.000 1 ~ ~0.5 ~ 2 2 2 1 45 normal
execute as @s at @s run particle dust 0.000 0.000 0.000 1 ~ ~0.5 ~ 2 2 2 1 45 normal
execute as @s at @s run particle dust 0.000 0.000 0.000 1 ~ ~0.5 ~ 2 2 2 1 45 normal
execute as @s at @s run particle dust 0.000 0.000 0.000 1 ~ ~0.5 ~ 2 2 2 1 45 normal
