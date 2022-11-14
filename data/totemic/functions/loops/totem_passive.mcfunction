#Generic
tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b}]}] remove totemic_passive
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b}]}] add totemic_passive

#1 #Passive effects for Bat of Undying
tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Bat of Undying","color":"yellow","italic":false}'},CustomModelData:1}}]}] remove totemic_save_falling
execute as @a[tag=totemic_passive,tag=totemic_holds_1] store result score @s totemic_falldis run data get entity @s FallDistance
tag @a[tag=totemic_passive,tag=totemic_holds_1,scores={totemic_falldis=6..}] add totemic_save_falling
execute as @a[tag=totemic_save_falling] run effect give @s minecraft:slow_falling 1 0 true
execute as @a[tag=totemic_save_falling,scores={totemic_falldis=6..}] at @s run playsound minecraft:entity.bat.takeoff player @s ~ ~ ~ 1 0.5
execute as @a[tag=totemic_save_falling] at @s run execute unless block ~ ~-2 ~ minecraft:air run tag @s remove totemic_save_falling

#2 #Passive effects for Blaze of Undying
tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Blaze of Undying","color":"yellow","italic":false}'},CustomModelData:2}}]}] remove totemic_save_fire
execute as @a[tag=totemic_passive,tag=totemic_holds_2] store result score @s totemic_firedata run data get entity @s Fire
execute as @a[tag=totemic_passive,tag=totemic_holds_2,scores={totemic_firedata=-19..}] run tag @s add totemic_save_fire
scoreboard players add @a[tag=totemic_passive,tag=totemic_holds_2,tag=totemic_save_fire] totemic_firetick 1
execute as @a[tag=totemic_passive,tag=totemic_holds_2,tag=totemic_save_fire,scores={totemic_firetick=1..,totemic_firedata=-20}] run scoreboard players set @s totemic_firetick 0
scoreboard players set @a[scores={totemic_firetick=20}] totemic_firetick 19
execute as @a[tag=totemic_passive,tag=totemic_holds_2,tag=totemic_save_fire,scores={totemic_firedata=-20}] run tag @s remove totemic_save_fire
effect give @a[tag=totemic_passive,tag=totemic_holds_2,tag=totemic_save_fire,scores={totemic_firetick=1}] minecraft:fire_resistance 25 0 true

#3 #Passive effects for Creeper of Undying
tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Creeper of Undying","color":"yellow","italic":false}'},CustomModelData:3}}]}] remove totemic_save_expl
execute as @a[tag=totemic_passive,tag=totemic_holds_3,tag=totemic_save_expl] at @s if entity @e[type=minecraft:creeper,distance=4..] run tag @s remove totemic_save_expl
execute as @a[tag=totemic_passive,tag=totemic_holds_3] at @s if entity @e[type=minecraft:creeper,distance=..4] run tag @s add totemic_save_expl
execute as @a[tag=totemic_passive,tag=totemic_holds_3,tag=totemic_save_expl] at @s run tag @e[tag=!totemic_diffused,type=minecraft:creeper,distance=..4] add totemic_diffused
execute as @e[tag=totemic_diffused,type=minecraft:creeper] at @s run particle dust 1.000 0.122 0.122 1 ~ ~ ~ 0.3 0.9 0.3 1 2 normal
execute as @e[tag=totemic_diffused,type=minecraft:creeper] run data merge entity @s {ExplosionRadius:0b}

#4 #Passive effects for Enderman of Undying
tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Enderman of Undying","color":"yellow","italic":false}'},CustomModelData:4}}]}] remove totemic_save_anger
tag @a[tag=totemic_passive,tag=totemic_holds_4] add totemic_save_anger
execute as @a[tag=totemic_passive,tag=totemic_holds_4,tag=totemic_save_anger] at @s run tag @e[tag=!totemic_neutral,type=minecraft:enderman,distance=..4] add totemic_neutral
execute as @e[tag=totemic_neutral,type=minecraft:enderman] at @s run particle minecraft:happy_villager ~ ~1.5 ~ 0.25 0.7 0.25 1 1 normal
execute as @e[tag=totemic_neutral,type=minecraft:enderman] store result entity @s AngryAt int 1 run data get entity @s UUID
execute as @e[tag=totemic_neutral,type=minecraft:enderman] run data merge entity @s {AngerTime:0}


#5 #Passive effects for Ghast of Undying
tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Ghast of Undying","color":"yellow","italic":false}'},CustomModelData:5}}]}] remove totemic_save_projectiles
tag @a[tag=totemic_passive,tag=totemic_holds_5] add totemic_save_projectiles
execute as @a[tag=totemic_passive,tag=totemic_holds_5,tag=totemic_save_projectiles] at @s run execute as @e[type=minecraft:fireball,distance=..3] at @s run particle minecraft:poof ~ ~0.5 ~ 0.2 0.2 0.2 0.02 10 normal
execute as @a[tag=totemic_passive,tag=totemic_holds_5,tag=totemic_save_projectiles] at @s run execute as @e[type=minecraft:fireball,distance=..3] at @s run playsound minecraft:block.anvil.land player @a[distance=..6] ~ ~ ~ 0.8 1.5
execute as @a[tag=totemic_passive,tag=totemic_holds_5,tag=totemic_save_projectiles] at @s run kill @e[type=minecraft:fireball,distance=..3]

#6 #Passive effects for Guardian of Undying
tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Guardian of Undying","color":"yellow","italic":false}'},CustomModelData:6}}]}] remove totemic_hitdmg
tag @a[tag=totemic_passive,tag=totemic_holds_6] add totemic_hitdmg
execute as @a[tag=totemic_hitdmg,nbt={HurtTime:9s}] at @s run particle minecraft:crit ~ ~1 ~ 0.2 0.6 0.2 1 15 normal
execute as @a[tag=totemic_hitdmg,nbt={HurtTime:9s}] at @s run playsound minecraft:enchant.thorns.hit player @a[distance=..6] ~ ~ ~ 1 1
execute as @a[tag=totemic_hitdmg,nbt={HurtTime:9s}] at @s run effect give @e[tag=!totemic_hitdmg,tag=!totemic_is_undead,distance=..3] minecraft:instant_damage 1
execute as @a[tag=totemic_hitdmg,nbt={HurtTime:9s}] at @s run effect give @e[type=!player,tag=!totemic_hitdmg,tag=totemic_is_undead,distance=..3] minecraft:instant_health 1

#7 #Passive effects for Illager of Undying
tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Illager of Undying","color":"yellow","italic":false}'},CustomModelData:7}}]}] remove totemic_killheal
tag @a[tag=totemic_passive,tag=totemic_holds_7] add totemic_killheal
execute as @a[tag=totemic_killheal,scores={totemic_kill_mob=1..}] run function totemic:required/other/heal_from_kill
scoreboard players set @a[scores={totemic_kill_mob=1..}] totemic_kill_mob 0

#8 #Passive effects for Shulker of Undying
effect clear @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Shulker of Undying","color":"yellow","italic":false}'},CustomModelData:8}}]}] minecraft:levitation

#9 #Passive effects for Slime of Undying
tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Slime of Undying","color":"yellow","italic":false}'},CustomModelData:9}}]}] remove totemic_makebaby
execute as @a[tag=totemic_passive,tag=totemic_holds_9] run tag @s add totemic_makebaby
execute as @a[tag=totemic_passive,tag=totemic_holds_9,tag=totemic_makebaby] at @s run tag @e[tag=!totemic_babyfi,nbt=!{Size:0},type=minecraft:slime,distance=..4] add totemic_baby
execute as @e[type=minecraft:slime,nbt=!{Size:0},tag=totemic_baby] at @s run particle minecraft:happy_villager ~ ~ ~ 0.3 0.3 0.3 0.1 25 normal
execute as @e[type=minecraft:slime,nbt=!{Size:0},tag=totemic_baby] at @s run particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 0.1 25 normal
execute as @e[type=minecraft:slime,nbt=!{Size:0},tag=totemic_baby] at @s run playsound minecraft:entity.chicken.egg hostile @a[distance=..6] ~ ~ ~ 2 0.3
execute as @e[type=minecraft:slime,nbt=!{Size:0},tag=totemic_baby] run data merge entity @s {Size:0,Health:2.0f,DeathLootTable:"minecraft:entities/slime"}

#10 #Passive effects for Spider of Undying
effect clear @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Spider of Undying","color":"yellow","italic":false}'},CustomModelData:10}}]}] minecraft:poison

#11 #Passive effects for Squid of Undying
tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Squid of Undying","color":"yellow","italic":false}'},CustomModelData:11}}]}] remove totemic_save_drowning
execute as @a[tag=totemic_passive,tag=totemic_holds_11] at @s if block ~ ~1 ~ minecraft:water run tag @s add totemic_save_drowning
scoreboard players add @a[tag=totemic_passive,tag=totemic_holds_11,tag=totemic_save_drowning] totemic_breathtick 1
execute as @a[tag=totemic_passive,tag=totemic_holds_11,tag=totemic_save_drowning,scores={totemic_breathtick=1..}] at @s unless block ~ ~1 ~ minecraft:water run scoreboard players set @s totemic_breathtick 0
scoreboard players set @a[scores={totemic_breathtick=20}] totemic_breathtick 19
execute as @a[tag=totemic_passive,tag=totemic_holds_11,tag=totemic_save_drowning] at @s unless block ~ ~1 ~ minecraft:water run tag @s remove totemic_save_drowning
effect give @a[tag=totemic_passive,tag=totemic_holds_11,tag=totemic_save_drowning,scores={totemic_breathtick=1}] minecraft:water_breathing 35 0 true

#12 #Passive effects for Steve of Undying
tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Steve of Undying","color":"yellow","italic":false}'},CustomModelData:12}}]}] remove totemic_hold_effects
execute as @a[tag=totemic_passive,tag=totemic_holds_12] run tag @s add totemic_hold_effects
effect give @a[tag=totemic_hold_effects,tag=totemic_holds_sword] minecraft:strength 1 0 true
effect give @a[tag=totemic_hold_effects,tag=totemic_holds_trident] minecraft:strength 1 0 true
effect give @a[tag=totemic_hold_effects,tag=totemic_holds_bow] minecraft:strength 1 0 true
effect give @a[tag=totemic_hold_effects,tag=totemic_holds_crossbow] minecraft:strength 1 0 true
effect give @a[tag=totemic_hold_effects,tag=totemic_holds_axe] minecraft:haste 1 0 true
effect give @a[tag=totemic_hold_effects,tag=totemic_holds_pickaxe] minecraft:haste 1 0 true
effect give @a[tag=totemic_hold_effects,tag=totemic_holds_shovel] minecraft:haste 1 0 true
effect give @a[tag=totemic_hold_effects,tag=totemic_holds_shield] minecraft:resistance 1 0 true

#13 #Passive effects for Wither of Undying
effect clear @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Wither of Undying","color":"yellow","italic":false}'},CustomModelData:13}}]}] minecraft:wither

#14 #Passive effects for Golem of Undying
tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Golem of Undying","color":"yellow","italic":false}'},CustomModelData:14}}]}] remove totemic_ironsneak
execute as @a[tag=totemic_passive,tag=totemic_holds_14] run tag @s add totemic_ironsneak
execute as @a[tag=totemic_passive,tag=totemic_holds_14,tag=totemic_ironsneak,scores={totemic_crouch=1..},tag=!totemic_nobar] at @s run particle minecraft:poof ~ ~0.5 ~ 0.1 0.1 0.1 0.01 1 normal
execute as @a[tag=totemic_passive,tag=totemic_holds_14,tag=totemic_ironsneak,scores={totemic_crouch=1..},tag=!totemic_nobar] at @s run tag @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot"}}] add totemic_ingotupgrade
execute as @e[type=item,tag=totemic_ingotupgrade,nbt={Item:{id:"minecraft:iron_ingot"}}] at @s run effect give @a[tag=totemic_passive,tag=totemic_holds_14,tag=totemic_ironsneak,distance=..2,sort=nearest,tag=!totemic_nobar] minecraft:resistance 40 0
execute as @e[type=item,tag=totemic_ingotupgrade,nbt={Item:{id:"minecraft:iron_ingot"}}] at @s run scoreboard players set @a[tag=totemic_passive,tag=totemic_holds_14,tag=totemic_ironsneak,distance=..2,sort=nearest,tag=!totemic_nobar] totemic_bar_cdown 800
scoreboard players set @a totemic_crouch 0

#15 #Passive effects for Witch of Undying
tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Witch of Undying","color":"yellow","italic":false}'},CustomModelData:15}}]}] remove totemic_loc_det
tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Witch of Undying","color":"yellow","italic":false}'},CustomModelData:15}}]}] remove totemic_save_pot
execute as @a[tag=totemic_passive,tag=totemic_holds_15] run tag @s add totemic_loc_det
execute as @a[tag=totemic_passive,tag=totemic_holds_15] run tag @s add totemic_save_pot
execute as @a[tag=totemic_passive,tag=totemic_holds_15,tag=totemic_save_pot] at @s run tag @e[type=potion,distance=..2,tag=!totemic_pot_kill] add totemic_own_pot
execute as @a[tag=totemic_passive,tag=totemic_holds_15,tag=totemic_save_pot] at @s run tag @e[type=potion,distance=2..3,tag=!totemic_own_pot] add totemic_pot_kill
execute as @e[type=potion,tag=!totemic_pot_kill,tag=totemic_own_pot] at @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0.01 2 normal
execute as @e[type=potion,tag=!totemic_own_pot,tag=totemic_pot_kill] at @s run particle dust 0.725 0.078 1.000 1 ~ ~ ~ 0.1 0.1 0.1 1 10 normal
execute as @e[type=potion,tag=!totemic_own_pot,tag=totemic_pot_kill] at @s run particle dust 0.878 0.278 1.000 1 ~ ~ ~ 0.1 0.1 0.1 1 10 normal
execute as @e[type=potion,tag=!totemic_own_pot,tag=totemic_pot_kill] at @s run playsound minecraft:entity.chicken.egg hostile @a[distance=..6] ~ ~ ~ 2 0.3
kill @e[type=potion,tag=!totemic_own_pot,tag=totemic_pot_kill]
effect give @a[tag=totemic_passive,tag=totemic_holds_15,tag=totemic_loc_det,tag=totemic_in_swamp] minecraft:regeneration 1 0 false
effect give @a[tag=totemic_passive,tag=totemic_holds_15,tag=totemic_loc_det,tag=totemic_in_swamp] minecraft:resistance 1 0 false

#16 #Passive effects for Totem of Inventory
