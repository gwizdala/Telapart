//increment_in_range(start_value, amount_to_increment, max_value);

start = argument0;
inc = argument1;
max_val = argument2;

//If array overflow
if ((start + inc) > max_val){
	//Roll over and subtract one because of zero indexing
	ret_val = (start + inc - max_val - 1);
	return ret_val;
} else {
	return (start + inc);	
}