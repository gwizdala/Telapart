/// @description state_player_shoot
//The State for when the player is shooting

// set sprite		
sprite = sPlayerShoot;

// set state-appropriate acceleration and deceleration parameters
a_speed = ground_accel;
d_speed = ground_decel;

// set state appropriate speed
h_speed = 0;
v_speed = 0;


// Check if there is a block at mouse location
block_exists = dim_place_meet("curr",mouse_x, mouse_y)

// If there is a block
if (block_exists)
{
	// See if there is a free space in the next dimension
	if (dim_place_meet("next", mouse_x, mouse_y))
	{
		show_debug_message("collision, not transporting block")
	} else {
		show_debug_message("no collision, transporting block")
		show_debug_message("removing block")
		remove_block(mouse_x, mouse_y)
	}
}

//==============STATE UPDATE===================

// handle vertical movement
if (up)
{
	// Begin jump
	v_speed = j_power;
}

// switch state to air if in air
if (!on_ground)
{	
	v_speed += g_speed;	
	state_switch("Air")
} else
// switch state to running if movement key pressed
{
	if (left) {
		oPlayer.facing = -1;
		state_switch("Run")
	} else if (right) {
		oPlayer.facing = 1;
		state_switch("Run")
	}	
}
state_switch("Stand")