/// @description Update the sprite
//Draw shadow
draw_sprite(sShadow, 0, floor(x), floor(y));

//Draw sprite
draw_sprite_ext(sprite_index, image_index, floor(x), floor(y - z), image_xscale, image_yscale, image_angle, image_blend, image_alpha);