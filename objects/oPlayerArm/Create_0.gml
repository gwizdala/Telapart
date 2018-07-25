// Set constants
// location of arm on player
HORIZONTAL_OFFSET=2;
VERTICAL_OFFSET=1;

// State Management
// initialize state machine for this object
state_machine_init()

// set states for this object
state_create("Aim",state_arm_aim)
state_create("Fire",state_arm_fire)

// default state
state_init("Aim");