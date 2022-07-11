// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function blockatkeffects(){
	audio_play_sound(SND_HitBlocked, 10, false);
	instance_create_depth(other.x-20, other.y-80, other.depth - 10, OBJ_GuardEffect);
	other.flashColor = c_white;
	other.flashAlpha = 1;
}