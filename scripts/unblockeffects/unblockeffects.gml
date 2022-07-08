// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unblockEffects(){
	flashColor = c_yellow;
	flashAlpha = 1;
	audio_play_sound(SND_UnblockableSnd, 10, false);
	instance_create_depth(x, y-130, depth - 10, OBJ_UnblockableEffect);
}