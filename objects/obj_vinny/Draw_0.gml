//shadow

draw_set_alpha(.6);
draw_set_color(c_black);
draw_ellipse(x-40,y-8,x+40,y+8,false);

//draw shadow	
draw_set_alpha(1);
draw_self();

//draw_text(x,y,State);

if (flashAlpha > 0) {
	shader_set(sh_FlashRed);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashAlpha);
	
	shader_reset();
}