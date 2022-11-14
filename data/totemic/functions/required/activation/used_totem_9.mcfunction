effect clear @s minecraft:regeneration
effect clear @s minecraft:absorption
effect clear @s minecraft:fire_resistance
effect give @s minecraft:regeneration 45
effect give @s minecraft:jump_boost 45 2
tag @s add totemic_sliming
execute as @s at @s run effect give @e[tag=!totemic_sliming,distance=..4] minecraft:slowness 20 1
execute as @s[tag=totemic_sliming] at @s run particle minecraft:sneeze ~ ~1 ~ 0.1 1 0.1 0.3 30 normal
execute as @s[tag=totemic_sliming] at @s run particle minecraft:block slime_block ~ ~1 ~ 2 1 2 0.3 30 normal
tag @s remove totemic_sliming
function totemic:required/other/launch_hostile
