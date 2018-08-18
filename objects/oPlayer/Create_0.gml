/// @description The initial creation of the character

// instantiate the variables for animation
animation_init();

// initialize button states
left	= false;
right	= false;
up		= false;
down	= false;
shoot   = false;

// movement vars
h_speed = 0;
v_speed = 0;
facing = 1;

// jump related vars
g_speed = 0.6;
on_ground = false;
j_power = -9; // the power of the player's jump
landed = true; // determines when the jump completed

// acceleration parameters
air_accel		= 0.15; // acceleration when in the air
ground_accel	= 0.45; // acceleration when on the ground
air_decel		= 0.25;   // deceleration when in the air
ground_decel	= 100; // deceleration when on the ground

a_speed = ground_accel;	// acceleration
d_speed = ground_decel;	// deceleration
m_speed = 8;			// max speed possible

// State Management
// initialize state machine for this object
state_machine_init()

// set states for this object
state_create("Stand",state_player_stand)
state_create("Air",state_player_air)
state_create("Run", state_player_run)
state_create("Shoot", state_player_shoot)

// default state
state_init("Stand");