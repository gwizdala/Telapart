/// @description state_arm_aiming
// The aiming state for the player's arm

// Because this is default state, set vars to initial values
// if being run for the first time
if(state_new)
{
    // Set vars here if applicable
}

// changes the position of the arm based on where the player is aiming + the direction of the character
//Animation
if (oPlayer.h_speed > 0)
{
	//Do not flip arm dir
	image_xscale = 1;	
} 
else if (oPlayer.h_speed < 0)
{
	//Flip arm dir
	image_xscale=-1;	
}

//Change arm placement and rotation based on direction arm is facing
if (image_xscale = 1) {
	x = oPlayer.x-HORIZONTAL_OFFSET;
	y = oPlayer.y-VERTICAL_OFFSET;
	
	image_angle = point_direction(x,y,mouse_x,mouse_y);
} else {
	x = oPlayer.x+HORIZONTAL_OFFSET;
	y = oPlayer.y+VERTICAL_OFFSET;
	
	image_angle = point_direction(x,y,mouse_x,mouse_y)+180;
}

// if the mouse is clicked, change to firing mode
// if we are planning on using button modifiers/additional mouse clicks,
// we should probably have an arm_buttons file or add to player_buttons
if (mouse_check_button(mb_left)) {
	current_state_arm = state_switch("Fire");	
}