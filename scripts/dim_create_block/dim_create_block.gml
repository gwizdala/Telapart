//dim_create_block (prev|curr|next, x, y)
//creates a block of the appropriate object type 
//in the dimension specified

dimension = argument0;
x_pos = argument1;
y_pos = argument2; 


//Check if the current dimension has any blocks below
switch (controller.dimension_index)
{
	case 0:
		/*switch (dimension)
		{
			case "prev": 
				instance_create_layer(x_pos, y_pos, 
				break;
			case "curr": 
				
				break;
			case "next": 
				
				break;
		}*/
		break;
	case 1:
		switch (dimension)
		{
			case "prev": 
				if (place_meeting(x_pos, y_pos, oWall_1))
				{
					dimensioned_block = true;
				}
				break;
			case "curr": 
				if (place_meeting(x_pos, y_pos, oWall_2))
				{
					dimensioned_block = true;
				}
				break;
			case "next": 
				if (place_meeting(x_pos, y_pos, oWall_3))
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
				if (place_meeting(x_pos, y_pos, oWall_2))
				{
					dimensioned_block = true;
				}
				break;
			case "curr": 
				if (place_meeting(x_pos, y_pos, oWall_3))
				{
					dimensioned_block = true;
				}
				break;
			case "next": 
				if (place_meeting(x_pos, y_pos, oWall_1))
				{
					dimensioned_block = true;
				}
				break;
		}
		break;
}

return dimensioned_block;