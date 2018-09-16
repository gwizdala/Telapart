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
	
	    // handle horizontal movement input
		horizontal_movement(a_speed, d_speed)
		
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
		
		// handle horizontal movement input
		horizontal_movement(a_speed, d_speed)
	
		v_speed += g_speed	
		state_switch("Air")
	}
}