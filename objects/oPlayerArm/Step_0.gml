/// @description Insert description here
// You can write your code in this editor

HORIZONTAL_OFFSET=2;
VERTICAL_OFFSET=1;


//Animation
if (oPlayer.h_speed >= 0)
{
	x = oPlayer.x-HORIZONTAL_OFFSET;
	y = oPlayer.y-VERTICAL_OFFSET;
	
	//Rotate arm to point towards mouse
	image_xscale = 1;	
	image_angle = point_direction(x,y,mouse_x,mouse_y);
} 
else
{
	x = oPlayer.x+HORIZONTAL_OFFSET;
	y = oPlayer.y+VERTICAL_OFFSET;
	
	//Rotate arm to point towards mouse
	image_xscale=-1;	
	image_angle = point_direction(x,y,mouse_x,mouse_y)+180;
}