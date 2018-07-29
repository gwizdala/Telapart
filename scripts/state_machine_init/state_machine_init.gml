///state_machine_init();
///Initilize the variables required for the state engine.
/*
TO USE:
1. Call state_machine_init() in the create step of an object which you
   want to have multiple states.
2. In the create step, add calls to state_create("Name", Script) to set up the states
   for that object, along with their run scripts.
3. Use state_init("Name") to set default state of object

Ex. WITHIN CREATE STEP OF OBJECT
// State Management
// initialize state machine for this object
state_machine_init()

// set states for this object
state_create("Stand",state_player_stand)
state_create("Air",state_player_air)

// default state
state_init("Stand");
*/
state=noone;
state_next=state;
state_name="Unknown";
state_timer=0;
state_map=ds_map_create();
state_keys=ds_map_create(); //The inverse map of the state map.
state_stack=ds_stack_create();
state_new=true;
state_var[0]=0; //Useful for storing variables specific to a specific state.
//Add any new variables you might need for your game here.
state_can_interrupt=true;