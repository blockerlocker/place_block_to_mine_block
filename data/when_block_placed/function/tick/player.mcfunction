kill @e[type=marker,tag=iris]

function iris:get_target

execute as @n[type=marker,tag=iris.targeted_block] at @s unless block ~ ~ ~ #replaceable run function when_block_placed:position_snap

tag @s remove when_block_placed_face_up
tag @s remove when_block_placed_face_west
tag @s remove when_block_placed_face_east
tag @s remove when_block_placed_face_north
tag @s remove when_block_placed_face_south
tag @s remove when_block_placed_face_down

execute if data storage iris:output TargetedFace{Direction:UP} run tag @s add when_block_placed_face_up
execute if data storage iris:output TargetedFace{Direction:WEST} run tag @s add when_block_placed_face_west
execute if data storage iris:output TargetedFace{Direction:EAST} run tag @s add when_block_placed_face_east
execute if data storage iris:output TargetedFace{Direction:NORTH} run tag @s add when_block_placed_face_north
execute if data storage iris:output TargetedFace{Direction:SOUTH} run tag @s add when_block_placed_face_south
execute if data storage iris:output TargetedFace{Direction:DOWN} run tag @s add when_block_placed_face_down

execute store result score @s when_block_placed_x run data get entity @n[type=marker,tag=iris.targeted_block] Pos[0]
execute store result score @s when_block_placed_y run data get entity @n[type=marker,tag=iris.targeted_block] Pos[1]
execute store result score @s when_block_placed_z run data get entity @n[type=marker,tag=iris.targeted_block] Pos[2]