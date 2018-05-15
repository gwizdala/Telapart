// the default movement for the character
// by separating into this script we can handle various movement types for the characters
// as well as handle animation separately from calculations

// handle movement acceleration and sliding
if (left) {
	if (h_speed > 0) {
		h_speed = 0;	
	}
	h_speed = approach(h_speed, -m_speed, a_speed);
} else if (right) {
	if (h_speed < 0) {
		h_speed = 0;	
	}
	h_speed = approach(h_speed, m_speed, a_speed);
} else {
	h_speed = approach(h_speed, 0, d_speed);
}

// change the acceleration and deceleration parameters
a_speed = ground_accel;
d_speed = ground_decel;
	
if (up) {
	// Begin jump
	v_speed = j_power;
	// The below function morphs the sprite to show
	// that a jump is happening. Looks weird when 
	// jumping multiple times, needs tweaking.
	// squash_or_stretch(0.90, 1.05);
	
	// Update state
	current_state = player_states.jump;
}

// change to crouching state
if (down) {
	current_state = player_states.crouch;
	squash_or_stretch(1.2, 0.8);
}