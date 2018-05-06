// @description The initialization of the character variables for drawing

// Drawing the character
sprite = sprite_index;	// index of sprite to draw
frame = 0;				// frame of sprite being drawn
x_pos = x;				// x position where sprite is being drawn
y_pos = y;				// y position of where sprite is being drawn
x_scale = 1;			// horizontal scaling of sprite
y_scale = 1;			// vertical scaling of the sprite
angle = 0;				// rotation of the sprite
color = c_white;		// color balance of the sprite (can be used to manipulate color display)
alpha = 1				// alpha of the sprite (can make the sprite transparent - 0 - to opaque - 1 -)

//animation
frame_speed = .33; // 20 frames per second
facing = 1;
last_sprite = sprite;