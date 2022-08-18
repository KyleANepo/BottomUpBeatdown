// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bloodLustEffects(){
	flashColor = c_white;
	flashAlpha = 1;
	global.shake = true;
	audio_play_sound(SND_UnblockableSnd, 10, false);
	instance_create_depth(x, y-130, depth - 10, OBJ_UnblockableEffect);
}