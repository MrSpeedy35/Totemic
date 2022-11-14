scoreboard players set @a[tag=totemic_hold] totemic_hold_cd 5
scoreboard players remove @a[scores={totemic_hold_cd=1..5}] totemic_hold_cd 1
tag @a[scores={totemic_hold_cd=1..5}] add totemic_qualified
execute as @a[tag=totemic_holds_1,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_1
execute as @a[tag=totemic_holds_2,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_2
execute as @a[tag=totemic_holds_3,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_3
execute as @a[tag=totemic_holds_4,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_4
execute as @a[tag=totemic_holds_5,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_5
execute as @a[tag=totemic_holds_6,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_6
execute as @a[tag=totemic_holds_7,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_7
execute as @a[tag=totemic_holds_8,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_8
execute as @a[tag=totemic_holds_9,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_9
execute as @a[tag=totemic_holds_10,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_10
execute as @a[tag=totemic_holds_11,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_11
execute as @a[tag=totemic_holds_12,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_12
execute as @a[tag=totemic_holds_13,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_13
execute as @a[tag=totemic_holds_14,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_14
execute as @a[tag=totemic_holds_15,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_15
execute as @a[tag=totemic_holds_16,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_16
execute as @a[tag=totemic_holds_18,tag=totemic_qualified,scores={totemic_use=1}] run function totemic:required/activation/used_totem_18
tag @a[scores={totemic_hold_cd=0}] remove totemic_qualified
scoreboard players set @a[scores={totemic_use=1}] totemic_use 0


