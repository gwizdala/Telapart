/// @description Starts movement of the character
// checks to see if the character has collided with the floor
on_ground = check_below();

if (on_ground) {
	v_speed = 0;	
} else {
	v_speed += g_speed;	
}
