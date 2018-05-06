/// @description Draw the character onto the screen

// This function allows for more flexibility when drawing a character.
// it also has the benefit of not reversing a color mask when changing direction.
draw_sprite_ext(sprite,frame,x_pos,y_pos,x_scale * facing,y_scale,angle,color,alpha);
