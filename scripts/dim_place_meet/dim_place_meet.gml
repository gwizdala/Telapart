//dimension_place_meeting(curr|next|prev, x_pos, y_pos)
//Checks whether there is a dimensioned block at the x and y coords given in either
// the previous, current, or next dimension

dimension = argument0;
x_pos = argument1;
y_pos = argument2; 

dimensioned_block = false;

// Create local copies of reference arrays, make sure they are
// pass-by-value rather than pass-by-reference
blocks = array_create(controller.NUM_DIMENSIONS)
array_copy(blocks, 0, controller.block_ref, 0, controller.NUM_DIMENSIONS)

//Check if the current dimension has any blocks below
switch (controller.dimension_index)
{
	case 0:
		switch (dimension)
		{
			case "prev": 
				if (place_meeting(x_pos, y_pos, blocks[2]))
				{
					dimensioned_block = true;
				}
				break;
			case "curr": 
				if (place_meeting(x_pos, y_pos, blocks[0]))
				{
					dimensioned_block = true;
				}
				break;
			case "next": 
				if (place_meeting(x_pos, y_pos, blocks[1]))
				{
					dimensioned_block = true;
				}
				break;
		}
		break;
	case 1:
		switch (dimension)
		{
			case "prev": 
				if (place_meeting(x_pos, y_pos, blocks[0]))
				{
					dimensioned_block = true;
				}
				break;
			case "curr": 
				if (place_meeting(x_pos, y_pos, blocks[1]))
				{
					dimensioned_block = true;
				}
				break;
			case "next": 
				if (place_meeting(x_pos, y_pos, blocks[2]))
				{
					dimensioned_block = true;
				}
				break;
		}
		break;
	case 2:
		switch (dimension)
		{
			case "prev": 
				if (place_meeting(x_pos, y_pos, blocks[1]))
				{
					dimensioned_block = true;
				}
				break;
			case "curr": 
				if (place_meeting(x_pos, y_pos, blocks[2]))
				{
					dimensioned_block = true;
				}
				break;
			case "next": 
				if (place_meeting(x_pos, y_pos, blocks[0]))
				{
					dimensioned_block = true;
				}
				break;
		}
		break;
}

return dimensioned_block;