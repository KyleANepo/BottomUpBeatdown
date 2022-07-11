// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function heavyatkeffects(){
	audio_play_sound(SND_HitY1, 10, false);
	with (instance_create_depth(other.x-20, other.y-80, other.depth - 10, OBJ_HitEffect2)) {
	image_angle = irandom(360);
	}
	other.flashColor = c_red;
	other.flashAlpha = 1;
}