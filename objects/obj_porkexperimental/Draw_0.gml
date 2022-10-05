//shadow

if (sprite_index != SPR_PorkBDash && sprite_index != SPR_PorkSpecial3)
{
	draw_set_alpha(.6);
	draw_set_color(c_black);
	draw_ellipse(x-40,y-8,x+40,y+8,false);
}

//draw shadow	
draw_set_alpha(1);
draw_self();

//bloodlust
if (bloodLust)
{
	// Draw Event
	shader_set(sh_bloodLust);
	draw_self();
	shader_reset();	
}


if (flashAlpha > 0) {
	shader_set(sh_FlashRed);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashAlpha);
	
	shader_reset();
}

if (room == r_pork)
{
	var yoff = (id.sprite_height - id.sprite_yoffset)*2;

	//Set blendmode
	gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_src_alpha);

	//Draw reflection

	if (OnGround == true)
	{
		draw_sprite_ext(id.sprite_index, id.image_index, id.x, (id.y+yoff), id.image_xscale, -id.image_yscale, 0, c_dkgray, 0.3);
	} else
	{
		draw_sprite_ext(id.sprite_index, id.image_index, id.x, (reflecty+yoff), id.image_xscale, -id.image_yscale, 0, c_dkgray, 0.3);
	}
	//Reset blendmode
	gpu_set_blendmode(bm_normal);
} 