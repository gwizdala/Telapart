/// @description state_player_run
//The Running State for Player

// set state-appropriate acceleration and deceleration parameters
a_speed = ground_accel;
d_speed = ground_decel;

// set sprite
sprite = sPlayer2Run;

// handle horizontal movement acceleration + sliding
if (left) {
	// update sprite direction
	oPlayer.facing = -1;
	// reverse direction if already moving
	if (h_speed > 0) {
		h_speed = 0;	
	}
	h_speed = approach(h_speed, -m_speed, a_speed);
} else if (right) {
	// update sprite direction
	oPlayer.facing = 1;
	// reverse direction if already moving
	if (h_speed < 0) {
		h_speed = 0;	
	}
	h_speed = approach(h_speed, m_speed, a_speed);
} else {
	h_speed = approach(h_speed, 0, d_speed);
}

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
// switch state to Stand if not moving
else if (h_speed == 0)
{
	state_switch("Stand")	
}