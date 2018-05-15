// change the acceleration and deceleration parameters
a_speed = air_accel;
d_speed = air_decel;

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

// Handle jump movement
if (!on_ground)
{	
	landed = false;	
	// handle jump control (distance up while in air)
	if(v_speed < 0 && !up) {
		v_speed *= 0.5; // cut the jump when the player lets off of the key	
	}	
} 
else
{
	// If haven't performed landing update yet
	if (!landed) 
	{
		// Perform landing squish
		squash_or_stretch(1.05, 0.90);
		landed = true;	
	}
	// Update to new state
	current_state = player_states.idle;	
}