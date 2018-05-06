//approach(start, end, shift);

// Used for acceleration and deceleration of the character sprite
if (argument0 < argument1) {
    return min(argument0 + argument2, argument1); 
} else {
    return max(argument0 - argument2, argument1);
}