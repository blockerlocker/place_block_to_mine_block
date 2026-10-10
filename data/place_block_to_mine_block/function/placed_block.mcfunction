data remove storage place_block_mine_block:temp all

execute if block ~ ~ ~ #place_block_to_mine_block:diamond_tool run data modify storage place_block_mine_block:temp all.tool append value diamond
execute if block ~ ~ ~ #place_block_to_mine_block:iron_tool run data modify storage place_block_mine_block:temp all.tool append value iron
execute if block ~ ~ ~ #place_block_to_mine_block:stone_tool run data modify storage place_block_mine_block:temp all.tool append value stone
execute if block ~ ~ ~ #place_block_to_mine_block:wooden_tool run data modify storage place_block_mine_block:temp all.tool append value wooden

execute if entity @s[tag=when_block_placed_face_up] positioned ~ ~-1 ~ run function place_block_to_mine_block:tool_test
execute if entity @s[tag=when_block_placed_face_down] positioned ~ ~1 ~ run function place_block_to_mine_block:tool_test
execute if entity @s[tag=when_block_placed_face_east] positioned ~-1 ~ ~ run function place_block_to_mine_block:tool_test
execute if entity @s[tag=when_block_placed_face_west] positioned ~1 ~ ~ run function place_block_to_mine_block:tool_test
execute if entity @s[tag=when_block_placed_face_north] positioned ~ ~ ~1 run function place_block_to_mine_block:tool_test
execute if entity @s[tag=when_block_placed_face_south] positioned ~ ~ ~-1 run function place_block_to_mine_block:tool_test

data remove storage place_block_mine_block:temp all