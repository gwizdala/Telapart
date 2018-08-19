//remove_block(x_pos, y_pos)
//Removes a blcok from the current dimension at the given coords

x_pos = argument0;
y_pos = argument1; 

//Check if the current dimension has any blocks below
switch (controller.dimension_index)
{
	case 0:
		var inst_id = instance_nearest(x_pos, y_pos, oWall_1);
		instance_destroy(inst_id);
		break;
	case 1:
		var inst_id = instance_nearest(x_pos, y_pos, oWall_2);
		instance_destroy(inst_id);
		break;
	case 2:
		var inst_id = instance_nearest(x_pos, y_pos, oWall_3);
		instance_destroy(inst_id);
		break;
}