# Placing
execute at @e[tag=compact_diamond_block,type=minecraft:marker] align xyz run function compact_diamonds:compact_diamond_block/place
# Breaking
execute at @e[tag=compact_diamond_block,type=item_display] unless block ~ ~ ~ minecraft:crying_obsidian run kill @e[type=item,nbt={Item:{"id":"minecraft:crying_obsidian"}},distance=..0.7]
execute as @e[tag=compact_diamond_block,type=item_display] at @s align xyz unless block ~ ~ ~ minecraft:crying_obsidian run function compact_diamonds:compact_diamond_block/break