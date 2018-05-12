// controls the rendering of the character

// warps the character when running for greater emphasis
x_scale = approach(x_scale, 1, 0.03);
y_scale = approach(y_scale, 1, 0.03);

switch current_state {
	case player_states.normal:
		if (left) {
			facing = -1;
		} else if (right) {
			facing = 1;
		}
		
		if (on_ground) {
			if(!landed) {
				sprite = sPlayerJump;
				frame = 8;
			} else if (left || right) {
				sprite = sPlayerWalk;
			} else {
				sprite = sPlayerIdle;
			}
		} else {
			sprite = sPlayerJump;
			if (v_speed > 1 && frame > 3) {
				//prevents animation repeat (floating)
				frame = 3;
			}
		}
		break;
		
	case player_states.crouch:
		sprite = sPlayerIdle; // TODO: change when crouch animation is added
		break;
		
}

// reset to the 0 frame on sprite change
if (last_sprite != sprite) {
	last_sprite = sprite;
	frame = 0;
}