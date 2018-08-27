/// @description state_player_stand
//The Standing State for Player

if (debug)
{
	show_debug_message("debug triggered")
	switch_debug()	
}
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
// set sprite		
sprite = sPlayerIdle;

// set state-appropriate acceleration and deceleration parameters
a_speed = ground_accel;
d_speed = ground_decel;

// set state appropriate speed
h_speed = 0;
v_speed = 0;

if (shoot)
{
	state_switch("Shoot")	
}
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