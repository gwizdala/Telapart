// the crouching state for the character
// allows for crawling, slides
h_speed = approach(h_speed, 0, 0.1); // sliding stop

if (!down) {
	current_state = player_states.idle;	
}