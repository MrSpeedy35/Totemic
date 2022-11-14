#Tagging
##Undead tag
tag @e[tag=!totemic_is_undead,type=minecraft:skeleton] add totemic_is_undead
tag @e[tag=!totemic_is_undead,type=minecraft:stray] add totemic_is_undead
tag @e[tag=!totemic_is_undead,type=minecraft:wither_skeleton] add totemic_is_undead
tag @e[tag=!totemic_is_undead,type=minecraft:zombie] add totemic_is_undead
tag @e[tag=!totemic_is_undead,type=minecraft:drowned] add totemic_is_undead
tag @e[tag=!totemic_is_undead,type=minecraft:husk] add totemic_is_undead
tag @e[tag=!totemic_is_undead,type=minecraft:zombified_piglin] add totemic_is_undead
tag @e[tag=!totemic_is_undead,type=minecraft:zombie_villager] add totemic_is_undead
tag @e[tag=!totemic_is_undead,type=minecraft:phantom] add totemic_is_undead
tag @e[tag=!totemic_is_undead,type=minecraft:wither] add totemic_is_undead
tag @e[tag=!totemic_is_undead,type=minecraft:skeleton_horse] add totemic_is_undead
tag @e[tag=!totemic_is_undead,type=minecraft:zombie_horse] add totemic_is_undead
tag @e[tag=!totemic_is_undead,type=minecraft:zoglin] add totemic_is_undead

##Hostile tag
tag @e[tag=totemic_is_undead,tag=!totemic_is_hostile,type=!minecraft:zombified_piglin] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:blaze] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:elder_guardian] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:endermite] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:evoker] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:guardian] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:ghast] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:hoglin] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:magma_cube] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:pillager] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:ravager] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:shulker] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:silverfish] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:skeleton] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:slime] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:vex] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:vindicator] add totemic_is_hostile
tag @e[tag=!totemic_is_hostile,type=minecraft:witch] add totemic_is_hostile


##Not a mob tag
tag @e[tag=!totemic_notamob,type=minecraft:item] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:snowball] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:fireball] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:firework_rocket] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:arrow] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:armor_stand] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:experience_bottle] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:experience_orb] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:falling_block] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:fishing_bobber] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:minecart] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:chest_minecart] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:furnace_minecart] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:spawner_minecart] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:tnt_minecart] add totemic_notamob
tag @e[type=minecraft:tnt_minecart] add totemic_boom
tag @e[tag=!totemic_notamob,type=minecraft:eye_of_ender] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:ender_pearl] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:end_crystal] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:wither_skull] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:potion] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:evoker_fangs] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:item_frame] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:leash_knot] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:lightning_bolt] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:painting] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:shulker_bullet] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:spectral_arrow] add totemic_notamob
tag @e[tag=!totemic_notamob,type=minecraft:tnt] add totemic_notamob

#Other
##Guardian Golem
scoreboard players remove @e[type=minecraft:iron_golem,tag=totemic_isguardian,scores={totemic_spawnticks=1..900}] totemic_spawnticks 1
execute as @e[type=minecraft:iron_golem,tag=totemic_isguardian] at @s run particle dust 1.000 0.561 0.059 2 ~ ~1 ~ 0.3 0.8 0.3 0.5 3 normal
kill @e[type=minecraft:iron_golem,tag=totemic_isguardian,scores={totemic_spawnticks=0}]

##launching particles
scoreboard players remove @e[scores={totemic_launched=1..15}] totemic_launched 1
execute as @e[scores={totemic_launched=1..15}] at @s run particle minecraft:block slime_block ~ ~1 ~ 0.2 0.5 0.2 0.1 10 normal

##Wither of Undying
execute as @e[type=minecraft:wither_skull,tag=totemic_is_skull] at @s run particle dust 0.000 0.000 0.000 1 ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal
execute as @e[type=minecraft:wither_skull,tag=totemic_is_skull] at @s run effect give @e[tag=!totemic_anchoring,tag=!totemic_notamob,distance=..3,nbt={HurtTime:9s}] minecraft:wither 15
execute as @e[tag=!totemic_anchoring,tag=!totemic_notamob,tag=totemic_anchored] at @s run particle dust 0.000 0.000 0.000 1.5 ~ ~ ~ 0.2 0.1 0.2 0.1 2 normal
scoreboard players remove @e[tag=!totemic_anchoring,tag=!totemic_notamob,tag=totemic_anchored,scores={totemic_anch_cdown=1..400}] totemic_anch_cdown 1
tag @e[tag=!totemic_anchoring,tag=!totemic_notamob,tag=totemic_anchored,scores={totemic_anch_cdown=0}] remove totemic_anchored

##Amplified thrown potions
scoreboard players add @e[type=potion,tag=!totemic_pot_kill,tag=totemic_own_pot] totemic_amp_pot 1
scoreboard players set @e[type=potion,tag=!totemic_pot_kill,tag=totemic_own_pot,scores={totemic_amp_pot=2}] totemic_amp_pot 0
execute as @e[type=potion,tag=!totemic_pot_kill,tag=totemic_own_pot,scores={totemic_amp_pot=0}] run data merge entity @s {NoGravity:1b}
execute as @e[type=potion,tag=!totemic_pot_kill,tag=totemic_own_pot,scores={totemic_amp_pot=1..}] run data merge entity @s {NoGravity:0b}

##Handle upgrade ingot stacks
execute as @e[type=item,tag=totemic_ingotupgrade,nbt={Item:{id:"minecraft:iron_ingot"}}] store result score @s totemic_bar_amount run data get entity @s Item.Count
execute as @e[type=item,tag=totemic_ingotupgrade,nbt={Item:{id:"minecraft:iron_ingot"}}] at @s run summon item ~ ~ ~ {Tags:["totemic_ingotsnew"],Item:{id:"minecraft:iron_ingot",Count:1b}}
execute as @e[type=item,tag=totemic_ingotsnew,nbt={Item:{id:"minecraft:iron_ingot"}}] at @s store result score @s totemic_bar_amount run scoreboard players get @e[type=item,tag=totemic_ingotupgrade,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..1,sort=nearest,limit=1] totemic_bar_amount
scoreboard players remove @e[type=item,tag=totemic_ingotsnew,nbt={Item:{id:"minecraft:iron_ingot"}}] totemic_bar_amount 1
execute as @e[type=item,tag=totemic_ingotsnew,nbt={Item:{id:"minecraft:iron_ingot"}}] at @s store result entity @s Item.Count byte 1 run scoreboard players get @s totemic_bar_amount
tag @e[type=item,tag=totemic_ingotsnew,nbt={Item:{id:"minecraft:iron_ingot"}}] remove totemic_ingotsnew
execute as @e[type=item,tag=totemic_ingotupgrade,nbt={Item:{id:"minecraft:iron_ingot"}}] at @s run playsound minecraft:entity.iron_golem.repair player @a[distance=..6] ~ ~ ~ 1.2 2.0
execute as @e[type=item,tag=totemic_ingotupgrade,nbt={Item:{id:"minecraft:iron_ingot"}}] at @s run playsound minecraft:block.anvil.land player @a[distance=..6] ~ ~ ~ 0.6 1.7
kill @e[type=item,tag=totemic_ingotupgrade,nbt={Item:{id:"minecraft:iron_ingot"}}]
