/// @description The control for the arm

// control the various states of the character
switch current_state_arm {
	case arm_states.normal:
		aiming_state();
		break;
	case arm_states.firing:
		firing_state();
		break;
}