if (shoot)
{
	state_switch("Shoot")	
}
else 
{
	if (on_ground)
	{
		// set acceleration paramater
		a_speed = ground_accel
		d_speed = ground_decel
	
	    // handle input
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
		
		// update state 
	    if (oPlayer.h_speed != 0)
		{
			if (oPlayer.h_speed < 0)
			{
				oPlayer.facing = -1	
				state_switch("Run")
			}
			else
			{
				oPlayer.facing = 1
				state_switch("Run")
			}
		}
		else
		{
			state_switch("Stand")
		}
	}
	else
	{
		a_speed = air_accel
		d_speed = air_decel
	
		v_speed += g_speed	
		state_switch("Air")
	}
}