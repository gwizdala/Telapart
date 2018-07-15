/// @description The termination of movement for the character

// find the location for the character
x_pos = x;
y_pos = y;

// handle animation changes
player_animation_control();

// end the animation for the character
frame_reset();


//Horizontal Collision
if (place_meeting(x+h_speed, y, oWall) || dimension_place_meeting(x+h_speed, y))
{
	//While not hitting a wall
	while (!place_meeting(x+sign(h_speed),y,oWall) && !dimension_place_meeting(x+sign(h_speed),y))
	{
		x = x + sign(h_speed);
	}
	h_speed = 0;
}
x = x + h_speed;

//Vertical Collision
if (place_meeting(x,y+v_speed,oWall) || dimension_place_meeting(x,y+v_speed))
{
	while (!place_meeting(x,y+sign(v_speed),oWall) && !dimension_place_meeting(x,y+v_speed)) 
	{
		y = y + sign(v_speed);
	}
	v_speed = 0;
}
y = y + v_speed;

