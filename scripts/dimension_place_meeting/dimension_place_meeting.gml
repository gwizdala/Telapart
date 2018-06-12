//dimension_place_meeting(x_pos, y_pos)

x_pos = argument0;
y_pos = argument1; 

dimensioned_block = false;

//Check if the current dimension has any blocks below
switch (controller.dimension_index)
{
	case 0:
		if (place_meeting(x_pos, y_pos, oWall_1)){
			dimensioned_block = true;
		}
		break;
	case 1:
		if (place_meeting(x_pos, y_pos, oWall_2)){
			dimensioned_block = true;
		}
		break;
	case 2:
		if (place_meeting(x_pos, y_pos, oWall_3)){
			dimensioned_block = true;
		}
		break;
}

return dimensioned_block;