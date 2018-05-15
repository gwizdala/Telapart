/// @description The initial creation of the character

// instantiate the variables for animation
animation_init();

// set states for movement
left	= false;
right	= false;
up		= false;
down	= false;

// current states for the character
current_state	= 0;
last_state		= 0;

// movement
h_speed = 0;
v_speed = 0;

//jump
g_speed = 0.6;
on_ground = false;
j_power = -7; // the power of the player's jump
landed = true; // determines when the jump completed


// Acceleration parameters
air_accel		= 0.1; // acceleration when in the air
ground_accel	= 0.45; // acceleration when on the ground
air_decel		= 0.5;   // deceleration when in the air
ground_decel	= 100; // deceleration when on the ground

a_speed = ground_accel;	// acceleration
d_speed = ground_decel;	// deceleration
m_speed = 8;			// max speed possible