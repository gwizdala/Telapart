/// @description Insert description here
// You can write your code in this editor

// Draw current dimension index
draw_text(view_hview[0]*0.05, view_wview[0]*0.05, string(controller.dimension_index));
// Draw time remaining
draw_text(view_hview[0]*0.15, view_wview[0]*0.05, string((controller.dimension_shift_time_limit - controller.time_since_shift)/1000));