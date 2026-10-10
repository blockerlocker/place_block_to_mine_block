execute unless block ~ ~ ~ #mineable/pickaxe run return run setblock ~ ~ ~ air destroy

execute unless data storage place_block_mine_block:temp all.tool run return fail

execute if block ~ ~ ~ #needs_diamond_tool if data storage place_block_mine_block:temp all{tool:[diamond]} run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ #needs_iron_tool if data storage place_block_mine_block:temp all{tool:[iron]} run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ #needs_stone_tool if data storage place_block_mine_block:temp all{tool:[stone]} run setblock ~ ~ ~ air destroy

execute unless block ~ ~ ~ #place_block_to_mine_block:needs_better_tool if data storage place_block_mine_block:temp all{tool:[wooden]} run setblock ~ ~ ~ air destroy