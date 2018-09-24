/// @description Collision handling

// collision tracking vars
h_collide = false;
v_collide = false;

// find the location for the character
x_pos = x;
y_pos = y;

// end the animation for the character
frame_reset();


//Horizontal Collision
if (place_meeting(x+h_speed, y, oWall) || dim_place_meet("curr", x+h_speed, y))
{
	//While not hitting a wall
	while (!place_meeting(x+sign(h_speed),y,oWall) && !dim_place_meet("curr", x+sign(h_speed),y))
	{
		x = x + sign(h_speed);
	}
	h_speed = 0;
	h_collide = true;
}
show_debug_message("start x pos: "+string(x))
x = x + h_speed;
show_debug_message("end x pos: "+string(x))

//Vertical Collision
if (place_meeting(x,y+v_speed,oWall) || dim_place_meet("curr", x,y+v_speed))
{
	while (!place_meeting(x,y+sign(v_speed),oWall) && !dim_place_meet("curr", x,y+v_speed)) 
	{
		y = y + sign(v_speed);
	}
	v_speed = 0;
	v_collide = true;
}
y = y + v_speed;

// state cleanup, serves as a "hard check" in case normal
// state transition didn't work properly
// TODO: Ideally this shouldn't be necessary if our state logic is tight
if (v_collide && h_collide)
{
	state_switch("Stand")	
}