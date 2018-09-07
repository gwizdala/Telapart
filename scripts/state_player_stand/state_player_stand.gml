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
    sprite_index=sPlayer2Idle;
    image_index=0;
	state_new=false;
}
// set sprite		
sprite = sPlayer2Idle;

// set state appropriate speed
h_speed = 0;
v_speed = 0;

// handle vertical movement
if (up)
{
	// Begin jump
	v_speed = j_power;
}

update_player_state()