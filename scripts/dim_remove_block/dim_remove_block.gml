//remove_block(x_pos, y_pos)
//Removes a blcok from the current dimension at the given coords

x_pos = argument0;
y_pos = argument1; 

// Create local copies of reference arrays, make sure they are
// pass-by-value rather than pass-by-reference
blocks = array_create(controller.NUM_DIMENSIONS)
array_copy(blocks, 0, controller.block_ref, 0, controller.NUM_DIMENSIONS)

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