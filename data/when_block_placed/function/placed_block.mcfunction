advancement revoke @s only when_block_placed:placed_block

execute store result storage when_block_placed:temp all.x int 1 run scoreboard players get @s when_block_placed_x
execute store result storage when_block_placed:temp all.y int 1 run scoreboard players get @s when_block_placed_y
execute store result storage when_block_placed:temp all.z int 1 run scoreboard players get @s when_block_placed_z

function when_block_placed:commit with storage when_block_placed:temp all

data remove storage when_block_placed:temp all