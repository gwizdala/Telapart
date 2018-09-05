//dim_create_block (prev|curr|next, x, y)
//creates a block of the appropriate object type 
//in the dimension specified

dimension = argument0;
x_pos = argument1;
y_pos = argument2; 

// Create local copies of reference arrays, make sure they are
// pass-by-value rather than pass-by-reference
layers = array_create(controller.NUM_DIMENSIONS)
array_copy(layers, 0, controller.layer_ref, 0, controller.NUM_DIMENSIONS)

blocks = array_create(controller.NUM_DIMENSIONS)
array_copy(blocks, 0, controller.block_ref, 0, controller.NUM_DIMENSIONS)

// Assume all blocks have same width
block_width = blocks[0].sprite_width
block_height = blocks[0].sprite_height

// Round new block origin down to nearest grid line
new_x = floor(x_pos / block_width) * block_width
new_y = floor(y_pos / block_height) * block_height

//Check if the current dimension has any blocks below
switch (controller.dimension_index)
{
	case 0:
		switch (dimension)
		{
			case "prev": 
				instance_create_layer(new_x, new_y, layers[2], blocks[2])
				break;
			case "curr": 
				instance_create_layer(new_x, new_y, layers[0], blocks[0])
				break;
			case "next": 
				instance_create_layer(new_x, new_y, layers[1], blocks[1])
				break;
		}
		break;
	case 1:
		switch (dimension)
		{
			case "prev": 
				instance_create_layer(new_x, new_y, layers[0], blocks[0])
				break;
			case "curr": 
				instance_create_layer(new_x, new_y, layers[1], blocks[1])
				break;
			case "next": 
				instance_create_layer(new_x, new_y, layers[2], blocks[2])
				break;
		}
		break;
	case 2:
		switch (dimension)
		{
			case "prev": 
				instance_create_layer(new_x, new_y, layers[1], blocks[1])
				break;
			case "curr": 
				instance_create_layer(new_x, new_y, layers[2], blocks[2])
				break;
			case "next": 
				instance_create_layer(new_x, new_y, layers[0], blocks[0])
				break;
		}
		break;
}
