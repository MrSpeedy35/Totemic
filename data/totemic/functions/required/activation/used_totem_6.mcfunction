######################################################
#                                                    #
#                   Credit: Y4nn                     #
# Page: https://www.planetminecraft.com/member/y4nn/ #
#                                                    #
######################################################

effect clear @s minecraft:regeneration
effect clear @s minecraft:absorption
effect clear @s minecraft:fire_resistance
effect give @s minecraft:regeneration 45
effect give @s minecraft:absorption 10
execute at @s if block ~ ~1 ~ minecraft:water run effect give @s minecraft:conduit_power 60
execute at @s if block ~ ~1 ~ minecraft:water run effect give @s minecraft:dolphins_grace 60
