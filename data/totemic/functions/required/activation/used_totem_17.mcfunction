#Void Totem

#Puts the player in the centre of the current block
execute as @a[predicate=totemic:trigger] at @s align xz run tp @s ~.5 ~ ~.5
#Triggers the totem
execute as @a[predicate=totemic:trigger] run effect give @a[predicate=totemic:trigger] minecraft:instant_damage 1 28
#Teleports the player out of the void
execute as @a[predicate=totemic:trigger] at @s run tp ~ 100 ~
#Creates air so if there are blocks they get deleted!
execute as @a[predicate=totemic:teleported] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air
#Creates a purpur floor
execute as @a[predicate=totemic:teleported] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 purpur_block
#Gives the player a ender pearl
execute as @a[predicate=totemic:teleported] run give @s ender_pearl
#Clears totem effects (other effect have been deleted through the totem triggering so I can clear every effect)
execute as @a[predicate=totemic:teleported] run effect give @s minecraft:regeneration 120 2


#-- CREDITS --#
#-- Made by Timongcraft --#
#-- Made for MrSpeedy --#
#-- Planetminecraft: https://www.planetminecraft.com/member/timongcraft --#
#-- Github: https://github.com/Timong-craft --#
#-- Discord: Timongcraft#7286 or Timongcraft#5454 --#