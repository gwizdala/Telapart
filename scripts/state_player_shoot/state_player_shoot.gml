/// @description state_player_shoot
//The State for when the player is shooting

// set sprite		
sprite = sPlayerIdle;

// set state-appropriate acceleration and deceleration parameters
a_speed = ground_accel;
d_speed = ground_decel;

// set state appropriate speed
h_speed = 0;
v_speed = 0;

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