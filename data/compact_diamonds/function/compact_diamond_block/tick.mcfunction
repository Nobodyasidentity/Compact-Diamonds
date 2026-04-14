# Placing
execute at @e[tag=compact_diamond_block,type=bat] align xyz run setblock ~ ~ ~ minecraft:spawner{RequiredPlayerRange:0,SpawnData:{entity:{id:item_frame,Tags:["compact_diamond_block"]}}} replace
execute at @e[tag=compact_diamond_block,type=bat] align xyz run summon minecraft:item_display ~0.5 ~0.5 ~0.5 {Tags:["compact_diamond_block"],item:{components:{"minecraft:enchantment_glint_override":1b},count:1,id:"minecraft:diamond_block"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.01f,1.01f,1.01f],translation:[0.0f,0.0f,0.0f]}}
tp @e[tag=compact_diamond_block,type=bat] 0 -9999 0         
kill @e[tag=compact_diamond_block,type=bat]
# Breaking
execute at @e[tag=compact_diamond_block,type=item_display] align xyz unless block ~ ~ ~ minecraft:spawner run function compact_diamonds:compact_diamond_block/summon
execute as @e[tag=compact_diamond_block,type=item_display] at @e[tag=compact_diamond_block,type=item_display] align xyz unless block ~ ~ ~ minecraft:spawner run kill @s