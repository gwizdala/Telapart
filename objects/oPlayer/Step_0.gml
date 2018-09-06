/// @description The core movement for the character

// initialize the buttons
player_buttons();

// initialize the player animation
frame_counter();

// State Management
state_execute();
state_update();

/*
// control the various states of the character
switch current_state {
	case player_states.idle:
		idle_state();
		break;
	case player_states.jump:
	case player_states.fall:
		jump_state();
		break;
	case player_states.crouch:
		crouch_state();
		break;
	case player_states.shoot:
		shoot_state();
		break;
}
*/