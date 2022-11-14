execute as @s at @s at @e[type=!minecraft:player,tag=!mt_notamob,distance=..4] unless block ~ ~ ~ minecraft:air run setblock ~ ~2 ~ minecraft:cobweb destroy
execute as @s at @s at @e[type=!minecraft:player,tag=!mt_notamob,distance=..4] unless block ~ ~ ~ minecraft:air run particle minecraft:block cobweb ~ ~2 ~ 0.3 0.3 0.3 1 15 normal

execute as @s at @s at @e[type=!minecraft:player,tag=!mt_notamob,distance=..4] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:cobweb destroy
execute as @s at @s at @e[type=!minecraft:player,tag=!mt_notamob,distance=..4] if block ~ ~1 ~ minecraft:air run setblock ~ ~1 ~ minecraft:cobweb destroy
execute as @s at @s at @e[type=!minecraft:player,tag=!mt_notamob,distance=..4] if block ~ ~ ~ minecraft:air run particle minecraft:block cobweb ~ ~ ~ 0.3 0.3 0.3 1 15 normal
execute as @s at @s at @e[type=!minecraft:player,tag=!mt_notamob,distance=..4] if block ~ ~1 ~ minecraft:air run particle minecraft:block cobweb ~ ~1 ~ 0.3 0.3 0.3 1 15 normal
