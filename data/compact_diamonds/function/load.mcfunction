tellraw @a [{text:"[Compact Diamonds] ",color:"aqua",bold:true},{text:"Compact Diamonds is running an experimental version, this is only meant for testing.",bold:false,color:"white"}]

scoreboard objectives add compact_diamonds.config dummy
execute unless score placing_not_supported_warning compact_diamonds.config matches 0 run scoreboard players set placing_not_supported_warning compact_diamonds.config 1