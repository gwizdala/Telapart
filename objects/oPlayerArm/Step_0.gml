/// @description Insert description here
// You can write your code in this editor

HORIZONTAL_OFFSET=2;
VERTICAL_OFFSET=1;


//Animation
if (oPlayer.h_speed > 0)
{
	//Do not flip arm dir
	image_xscale = 1;	
} 
else if (oPlayer.h_speed < 0)
{
	//Flip arm dir
	image_xscale=-1;	
}

//Change arm placement and rotation based on direction arm is facing
if (image_xscale = 1) {
	x = oPlayer.x-HORIZONTAL_OFFSET;
	y = oPlayer.y-VERTICAL_OFFSET;
	
	image_angle = point_direction(x,y,mouse_x,mouse_y);
} else {
	x = oPlayer.x+HORIZONTAL_OFFSET;
	y = oPlayer.y+VERTICAL_OFFSET;
	
	image_angle = point_direction(x,y,mouse_x,mouse_y)+180;
}