// initializing the state machines

// character state machine
enum player_states {
	idle,
	run,
	shoot,
	jump,
	crouch,
	hit
}

// player arm state machine
enum arm_states {
	normal,
	firing
}