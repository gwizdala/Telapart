//remove_block(x_pos, y_pos)
//Removes a blcok from the current dimension at the given coords

x_pos = argument0;
y_pos = argument1; 

//Check if the current dimension has any blocks below
switch(controller.dimension_index)
{
	case 0:
		var block_id = instance_position(x_pos, y_pos, oWall_1);
		with (block_id) instance_destroy()
		break;
	case 1:
		var block_id = instance_position(x_pos, y_pos, oWall_2);
		with (block_id) instance_destroy()
		break;
	case 2:
		var block_id = instance_position(x_pos, y_pos, oWall_3);
		with (block_id) instance_destroy()
		break;
}