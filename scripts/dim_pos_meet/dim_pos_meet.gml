//dimension_position_meeting(curr|next|prev, x_pos, y_pos)
//Checks whether there is a dimensioned block at the x and y coords given in either
// the previous, current, or next dimension

dimension = argument0;
x_pos = argument1;
y_pos = argument2; 

dimensioned_block = false;

//Check if the current dimension has any blocks below
switch (controller.dimension_index)
{
	case 0:
		switch (dimension)
		{
			case "prev": 
				if (position_meeting(x_pos, y_pos, oWall_3))
				{
					dimensioned_block = true;
				}
				break;
			case "curr": 
				if (position_meeting(x_pos, y_pos, oWall_1))
				{
					dimensioned_block = true;
				}
				break;
			case "next": 
				if (position_meeting(x_pos, y_pos, oWall_2))
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
				if (position_meeting(x_pos, y_pos, oWall_1))
				{
					dimensioned_block = true;
				}
				break;
			case "curr": 
				if (position_meeting(x_pos, y_pos, oWall_2))
				{
					dimensioned_block = true;
				}
				break;
			case "next": 
				if (position_meeting(x_pos, y_pos, oWall_3))
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
				if (position_meeting(x_pos, y_pos, oWall_2))
				{
					dimensioned_block = true;
				}
				break;
			case "curr": 
				if (position_meeting(x_pos, y_pos, oWall_3))
				{
					dimensioned_block = true;
				}
				break;
			case "next": 
				if (position_meeting(x_pos, y_pos, oWall_1))
				{
					dimensioned_block = true;
				}
				break;
		}
		break;
}

return dimensioned_block;