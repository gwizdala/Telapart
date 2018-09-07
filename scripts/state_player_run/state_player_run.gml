/// @description state_player_run
//The Running State for Player

// set sprite
sprite = sPlayer2Run;

// handle vertical movement
if (up)
{
	// Begin jump
	v_speed = j_power;
}

update_player_state()