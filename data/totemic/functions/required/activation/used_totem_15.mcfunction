effect clear @s minecraft:regeneration
effect clear @s minecraft:absorption
effect clear @s minecraft:fire_resistance
effect give @s minecraft:regeneration 45 1
effect give @s minecraft:resistance 45 1
execute if entity @s[tag=totemic_loc_det,tag=totemic_in_overworld] run effect give @s minecraft:saturation 45 1
execute if entity @s[tag=totemic_loc_det,tag=totemic_in_nether] run effect give @s minecraft:fire_resistance 45 1
execute if entity @s[tag=totemic_loc_det,tag=totemic_in_end] run effect give @s minecraft:invisibility 45
