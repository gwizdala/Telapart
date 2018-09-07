// set state-appropriate acceleration and deceleration parameters
a_speed = air_accel;
d_speed = air_decel;

// Handle sprite animation
if (frame > 7 || falling) {
	sprite = sPlayer2Fall;
	falling = true;

} else {
	sprite = sPlayer2Jump;
}

// Handle vertical movement + state change
update_player_state()