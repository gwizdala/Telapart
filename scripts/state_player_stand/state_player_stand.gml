/// @description state_player_stand
//The Standing State for Player

// Because this is default state, set vars to initial values
// if being run for the first time
if(state_new)
{
    x_speed=0;
    y_speed=0;
    image_speed=0;
    sprite_index=sPlayerIdle;
    image_index=0;
	state_new=false;
}

// Handle sprite animation
moving = false;
if (left) {
	facing = -1;
	moving = true;
} else if (right) {
	facing = 1;
	moving = true;
}
		
if (moving) {
	sprite = sPlayerWalk;
} else {
	sprite = sPlayerIdle;
}
		
// THIS WILL BE MOVED TO WALK STATE
// handle horizontal movement acceleration + sliding
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

// Vertical movement
if (up)
{
	// Begin jump
	v_speed = j_power;
}

// Switch state to Air if in air
if (!on_ground)
{	
	v_speed += g_speed;	
	state_switch("Air")
} 