/// @description Update the sprite
//Draw shadow
draw_sprite(sShadow, 0, floor(x), floor(y));
if(invulnerable != 0) and ((invulnerable mod 8 < 2) == 0) and (flash == 0)
{
	//skip draw		
}
else
{
	if(flash != 0)
	{
		shader_set(flashShader);
		uFlash = shader_get_uniform(flashShader, "flash");
		shader_set_uniform_f(uFlash, flash);
	}
	
	//Draw sprite
	draw_sprite_ext(sprite_index, image_index, floor(x), floor(y - z), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	
	if(shader_current() != -1) shader_reset();
}