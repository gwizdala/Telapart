// set state-appropriate acceleration and deceleration parameters
a_speed = air_accel;
d_speed = air_decel;

// Handle sprite animation
if (frame == 7) {
	sprite = sPlayer2Fall;	
} else {
	sprite = sPlayer2Jump;
}


// Handle horizontal movement + acceleration
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

// Handle vertical movement + state change
if (!on_ground)
{	
	v_speed += g_speed;	
	landed = false;	
	// handle jump control (distance up while in air)
	if(v_speed < 0 && !up) {
		v_speed *= 0.5; // cut the jump when the player lets off of the key	
	}	
} 
else
{
	v_speed = 0;
	landed = true;
	// Update to new state
	state_switch("Stand")
}