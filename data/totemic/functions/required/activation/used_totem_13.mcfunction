effect clear @s minecraft:regeneration
effect clear @s minecraft:absorption
effect clear @s minecraft:fire_resistance
tag @s add totemic_anchoring
execute as @s at @s run tag @e[tag=!totemic_anchoring,tag=!totemic_notamob,distance=..5] add totemic_anchored
execute as @s at @s run scoreboard players set @e[tag=!totemic_anchoring,tag=!totemic_notamob,distance=..5] totemic_anch_cdown 400
execute as @s at @s run effect give @e[tag=!totemic_anchoring,tag=!totemic_notamob,tag=totemic_anchored,distance=..5] minecraft:slowness 20 100
execute as @s[tag=totemic_anchoring] run function totemic:required/other/launch_skulls
effect give @s minecraft:health_boost 3 255
effect give @s minecraft:regeneration 10 255
effect give @s minecraft:slow_falling 10 3
tag @s remove totemic_anchoring

