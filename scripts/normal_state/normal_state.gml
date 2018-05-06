// the default movement for the character
// by separating into this script we can handle various movement types for the characters
// as well as handle animation separately from calculations

// handle movement acceleration and sliding
if (left) {
	h_speed = approach(h_speed, -m_speed, a_speed);
} else if (right) {
	h_speed = approach(h_speed, m_speed, a_speed);
} else {
	h_speed = approach(h_speed, 0, d_speed);
}

if (on_ground) {
	// change the acceleration and deceleration parameters
	a_speed = ground_accel;
	d_speed = ground_decel;
	
	// squash the character on finishing a jump
	if (!landed) {
		squash_or_stretch(1.2, 0.8);
		landed = true;
	}
	
	// handle jump
	if (up) {
		v_speed = j_power;
		// stretch the character on beginning a jump
		squash_or_stretch(0.7, 1.3);
	}
} else {
	// change the acceleration and deceleration parameters
	a_speed = air_accel;
	d_speed = air_decel;
	
	landed = false;
	
	// handle jump control (distance up while in air)
	if(v_speed < 0 && !up) {
		v_speed *= 0.5; // cut the jump when the player lets off of the key	
	}
}

// change to crouching state
if (down) {
	current_state = player_states.crouch;
	squash_or_stretch(1.2, 0.8);
}