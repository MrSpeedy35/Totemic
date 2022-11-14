execute if entity @s[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] at @s run summon item ~ ~1 ~ {PickupDelay:2,Tags:["totemic_isshield1"],Item:{id:"minecraft:shield",Count:1b}}
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] at @s run summon item ~ ~1 ~ {PickupDelay:2,Tags:["totemic_isshield2"],Item:{id:"minecraft:shield",Count:1b}}
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] at @s run summon item ~ ~1 ~ {PickupDelay:2,Tags:["totemic_iscap"],Item:{id:"minecraft:leather_helmet",Count:1b}}
execute if entity @s[nbt={Inventory:[{Slot:102b}]}] at @s run summon item ~ ~1 ~ {PickupDelay:2,Tags:["totemic_istunic"],Item:{id:"minecraft:leather_chestplate",Count:1b}}
execute if entity @s[nbt={Inventory:[{Slot:101b}]}] at @s run summon item ~ ~1 ~ {PickupDelay:2,Tags:["totemic_ispants"],Item:{id:"minecraft:leather_leggings",Count:1b}}
execute if entity @s[nbt={Inventory:[{Slot:100b}]}] at @s run summon item ~ ~1 ~ {PickupDelay:2,Tags:["totemic_isboots"],Item:{id:"minecraft:leather_boots",Count:1b}}

data modify entity @e[type=item,distance=..1,limit=1,tag=totemic_isshield1] Item set from entity @s SelectedItem
data modify entity @e[type=item,distance=..1,limit=1,tag=totemic_isshield2] Item set from entity @s Inventory[{Slot:-106b}]
data modify entity @e[type=item,distance=..1,limit=1,tag=totemic_iscap] Item set from entity @s Inventory[{Slot:103b}]
data modify entity @e[type=item,distance=..1,limit=1,tag=totemic_istunic] Item set from entity @s Inventory[{Slot:102b}]
data modify entity @e[type=item,distance=..1,limit=1,tag=totemic_ispants] Item set from entity @s Inventory[{Slot:101b}]
data modify entity @e[type=item,distance=..1,limit=1,tag=totemic_isboots] Item set from entity @s Inventory[{Slot:100b}]

data merge entity @e[type=item,distance=..1,limit=1,tag=totemic_isshield1] {Item:{tag:{Damage:0}}}
data merge entity @e[type=item,distance=..1,limit=1,tag=totemic_isshield2] {Item:{tag:{Damage:0}}}
data merge entity @e[type=item,distance=..1,limit=1,tag=totemic_iscap] {Item:{tag:{Damage:0}}}
data merge entity @e[type=item,distance=..1,limit=1,tag=totemic_istunic] {Item:{tag:{Damage:0}}}
data merge entity @e[type=item,distance=..1,limit=1,tag=totemic_ispants] {Item:{tag:{Damage:0}}}
data merge entity @e[type=item,distance=..1,limit=1,tag=totemic_isboots] {Item:{tag:{Damage:0}}}

execute if entity @s[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run item replace entity @s weapon.mainhand with air
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] run item replace entity @s armor.head with air
execute if entity @s[nbt={Inventory:[{Slot:102b}]}] run item replace entity @s armor.chest with air
execute if entity @s[nbt={Inventory:[{Slot:101b}]}] run item replace entity @s armor.legs with air
execute if entity @s[nbt={Inventory:[{Slot:100b}]}] run item replace entity @s armor.feet with air
