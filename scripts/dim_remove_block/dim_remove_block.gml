//remove_block(x_pos, y_pos)
//Removes a blcok from the current dimension at the given coords

x_pos = argument0;
y_pos = argument1; 

blocks[0] = oWall_0
blocks[1] = oWall_1
blocks[2] = oWall_2

//Check if the current dimension has any blocks below
switch(controller.dimension_index)
{
	case 0:
		var block_id = instance_position(x_pos, y_pos, blocks[0]);
		with (block_id) instance_destroy()
		break;
	case 1:
		var block_id = instance_position(x_pos, y_pos, blocks[1]);
		with (block_id) instance_destroy()
		break;
	case 2:
		var block_id = instance_position(x_pos, y_pos, blocks[2]);
		with (block_id) instance_destroy()
		break;
}