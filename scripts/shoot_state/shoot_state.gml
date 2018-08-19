show_debug_message("Mouse is at "+string(mouse_x)+", "+string(mouse_y))

// Check if there is a block at mouse location
block_exists = dimension_place_meeting(mouse_x, mouse_y)

// If there is a block
if (block_exists)
{
	// See if there is a free space in the next dimension
	if (custom_dim_collision_check(mouse_x, mouse_y, increment_in_range(controller.dimension_index, 1, (controller.NUM_DIMENSIONS - 1))))
	{
		show_debug_message("collision")
	} else {
		show_debug_message("no collision")
		show_debug_message("removing block")
		remove_block(mouse_x, mouse_y);
	}
}

// Transition to next state
if (!on_ground)
{	
	current_state = player_states.jump
} 
else
{
	if (h_speed != 0)
	{
		current_state = player_states.idle;
	}
	else
	{
		current_state = player_states.idle;	
	}
}