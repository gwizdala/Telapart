/// @description Control external key presses

//--------------------------DIMENSION MANAGEMENT-------------------------
//Update time variables
time_since_shift = time_since_shift + (current_time - curr_time);
curr_time = current_time;

//If the game has just started, update dimension properties
if (current_time < 10000){
	dimension_changed = true;
} else {
	dimension_changed = false;
}

//Once you hit the time limit
if (time_since_shift >= dimension_shift_time_limit){
	
	time_since_shift = 0;
	
	//Increment dimension index, roll over if at max
	if (dimension_index = (NUM_DIMENSIONS - 1)){
		dimension_index = 0;
		dimension_changed = true;
	} else {
		dimension_index = dimension_index + 1;
		dimension_changed = true;
	}
}

//Move character back to start
if (dimension_changed) {
	if (DEBUG){
		//Don't do anything	
	} else {
		//Otherwise move player back to start
		oPlayer.x = oPlayer.xstart
		oPlayer.y = oPlayer.ystart
	}
}

//Change layer properties based on dimension
if (dimension_changed) {
	next_dimension_index = increment_in_range(dimension_index,1,NUM_DIMENSIONS-1);
	previous_dimension_index = increment_in_range(dimension_index,(NUM_DIMENSIONS-1),NUM_DIMENSIONS-1); 
	
	//Update shaders
	layer_shader(layer_ref[dimension_index], curr_dim_shader)
	layer_shader(layer_ref[next_dimension_index], next_dim_shader)
	layer_shader(layer_ref[previous_dimension_index], prev_dim_shader)
	
	//Update layer depths. Move current dimension closest, set next mid, set previous far
	layer_depth(layer_ref[dimension_index], -100);
	layer_depth(layer_ref[next_dimension_index], 0);
	layer_depth(layer_ref[previous_dimension_index], 100);
	
	//Reset dimension changed var
	dimension_changed = false;
}

// --------------------------META GAME BEHAVIOR--------------------------
// Escape (use this in debug)
if((DEBUG == true) && keyboard_check_pressed(vk_escape)){
    game_end();
}
