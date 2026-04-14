# Placing
execute at @e[tag=compact_diamond_block,type=bat] align xyz run setblock ~ ~ ~ crying_obsidian replace
execute at @e[tag=compact_diamond_block,type=bat] align xyz run summon minecraft:item_display ~0.5 ~0.5 ~0.5 {Tags:["compact_diamond_block"],item:{components:{"minecraft:enchantment_glint_override":1b},count:1,id:"minecraft:diamond_block"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.01f,1.01f,1.01f],translation:[0.0f,0.0f,0.0f]}}
tp @e[tag=compact_diamond_block,type=bat] 0 -9999 0         
kill @e[tag=compact_diamond_block,type=bat]
# Breaking
execute at @e[tag=compact_diamond_block,type=item_display] align xyz unless block ~ ~ ~ minecraft:crying_obsidian run kill @e[type=item,nbt={Item:{"id":"minecraft:crying_obsidian"}},distance=..0.7]
execute at @e[tag=compact_diamond_block,type=item_display] align xyz unless block ~ ~ ~ minecraft:crying_obsidian run function compact_diamonds:compact_diamond_block/summon
execute as @e[tag=compact_diamond_block,type=item_display] at @s align xyz unless block ~ ~ ~ minecraft:crying_obsidian run kill @s