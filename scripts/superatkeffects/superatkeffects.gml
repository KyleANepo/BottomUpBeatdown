// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function superATKEffects(){
	audio_play_sound(SND_Super,10,false);
	instance_create_depth(other.x, other.y-130, other.depth - 10, OBJ_DeadlyAttack);
	flashColor = c_yellow;
	flashAlpha = 1;
	global.shake = true;
}