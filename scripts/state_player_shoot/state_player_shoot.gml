/// @description state_player_shoot
//The State for when the player is shooting

// set sprite		
sprite = sPlayer2Idle

// set state appropriate speed
h_speed = 0;
v_speed = 0;

if (dim_pos_meet("curr", mouse_x, mouse_y))
{
	if (dim_pos_meet("next", mouse_x, mouse_y))
	{
		show_debug_message("collision in next dimension, not moving")	
	} else
	{
		show_debug_message("removing block")
		dim_remove_block(mouse_x, mouse_y)
		show_debug_message("adding block")
		dim_create_block("next", mouse_x, mouse_y)
	}
} else
{
	show_debug_message("no block to remove")	
}

//==============STATE UPDATE===================

// handle vertical movement
if (up)
{
	// Begin jump
	v_speed = j_power;
	state_switch("Air")
}

// switch state to Air if in air
if (!on_ground)
{	
	v_speed += g_speed;	
	falling = true;
	state_switch("Air")
} 
// switch state to running if movement key pressed
else
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