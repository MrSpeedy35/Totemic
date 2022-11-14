execute as @s at @s as @e[type=!minecraft:player,tag=mt_is_hostile,tag=!mt_notamob,distance=..4] at @s unless block ~ ~-1 ~ minecraft:air run scoreboard players set @s mt_launched 15
execute as @e[scores={mt_launched=15}] at @s unless block ~ ~-1 ~ minecraft:air run data merge entity @s {Motion:[0.0d,1.3d,0.0d]}
