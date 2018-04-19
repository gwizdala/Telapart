/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(vk_left)
key_right = keyboard_check(vk_right)
key_jump = keyboard_check_pressed(vk_space)

// Calculate movement dir
var move = key_right - key_left;

h_speed = move * walk_speed;
v_speed = v_speed + grv;

//Allow jump if on floor
if (place_meeting(x,y+1,oWall) && (key_jump))
{	
	v_speed = -7;
}

//Horizontal Collision
if (place_meeting(x+h_speed, y, oWall))
{
	while (!place_meeting(x+sign(h_speed),y,oWall))
	{
		x = x + sign(h_speed);
	}
	h_speed = 0;
}
x = x + h_speed;

//Vertical Collision
if (place_meeting(x,y+v_speed,oWall))
{
	while (!place_meeting(x,y+sign(v_speed),oWall)) 
	{
		y = y + sign(v_speed);
	}
	v_speed = 0;
}
y = y + v_speed;

//Animation
if (!place_meeting(x,y+1,oWall))
{
	sprite_index=sPlayerStill;
	image_speed=0;
	// If falling. used for jump animation 
	// if (sign(v_speed) > 0) image_index = 1;
}
else
{
	image_speed = 1;
	if (h_speed == 0)
	{
		sprite_index = sPlayerStill;
		image_xscale = 1;
	}
	else if (h_speed > 0)
	{
		sprite_index = sPlayerWalk;
		image_xscale = 1;
	}
	else
	{
		sprite_index = sPlayerWalk;
		image_xscale = -1;
	}
}
