/// @description The core movement for the character

// initialize the buttons
player_buttons();

// initialize the player animation
frame_counter();

// control the various states of the character
switch current_state {
	case player_states.normal:
		normal_state();
		break;
	case player_states.crouch:
		crouch_state();
		break;
}
