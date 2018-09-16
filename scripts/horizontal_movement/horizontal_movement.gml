// horizontal_movement(acceleration, deceleration)
// handles horizontal movment input

a_speed = argument0;
d_speed = argument1;

if (left) {
	// reverse direction if already moving
	if (h_speed > 0) {
		h_speed = 0;	
	}
	h_speed = approach(h_speed, -m_speed, a_speed);
} else if (right) {
	// reverse direction if already moving
	if (h_speed < 0) {
		h_speed = 0;	
	}
	h_speed = approach(h_speed, m_speed, a_speed);
} else {
	h_speed = approach(h_speed, 0, d_speed);
}