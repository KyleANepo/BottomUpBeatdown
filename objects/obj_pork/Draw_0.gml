//shadow

if (sprite_index != SPR_BusterSpecial1Attack)
{
	draw_set_alpha(.6);
	draw_set_color(c_black);
	draw_ellipse(x-40,y-8,x+40,y+8,false);
}

//draw shadow	
draw_set_alpha(1);
draw_self();




if (flashAlpha > 0) {
	shader_set(sh_FlashRed);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashAlpha);
	
	shader_reset();
}

if (room == r_pork)
{
	var yoff = (OBJ_Pork.sprite_height - OBJ_Pork.sprite_yoffset)*2;

	//Set blendmode
	gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_src_alpha);

	//Draw reflection

	if (OnGround == true)
	{
		draw_sprite_ext(OBJ_Pork.sprite_index, OBJ_Pork.image_index, OBJ_Pork.x, (OBJ_Pork.y+yoff), OBJ_Pork.image_xscale, -OBJ_Pork.image_yscale, 0, c_dkgray, 0.3);
	} else
	{
		draw_sprite_ext(OBJ_Pork.sprite_index, OBJ_Pork.image_index, OBJ_Pork.x, (reflecty+yoff), OBJ_Pork.image_xscale, -OBJ_Pork.image_yscale, 0, c_dkgray, 0.3);
	}
	//Reset blendmode
	gpu_set_blendmode(bm_normal);
}