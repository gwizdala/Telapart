/// @description The persistent controller for the game
// Manages the global vars/enums for all objects in the game

//Global Constants
NUM_DIMENSIONS = 3;

//Establish Global Variables
DEBUG = true;

curr_time = current_time;
time_since_shift = 0;

//Time before switching dimensions. Measured in milliseconds.
dimension_shift_time_limit = 20000;
dimension_index = 0;

//Layer references
layer_ref[0] = layer_get_id("Dimension_0")
layer_ref[1] = layer_get_id("Dimension_1")
layer_ref[2] = layer_get_id("Dimension_2")

//Block references
block_ref[0] = oWall_0
block_ref[1] = oWall_1
block_ref[2] = oWall_2