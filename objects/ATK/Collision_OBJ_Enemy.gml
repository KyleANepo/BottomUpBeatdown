if(image_index == DMGFrame && abs(depth - other.depth) <= LayerSize && abs(y - other.y) <= LayerSize && Owner == "Player"){
     
    other.CurrentHP -= Damage;
    other.IsHit = true;
    other.alarm[0] = StunLength;
	
	if (isHeavy == false) {
		audio_play_sound(SND_HitX1, 10, false);
		with (instance_create_depth(other.x-20, other.y-80, other.depth - 10, OBJ_HitEffect1)) {
		image_angle = irandom(360);
		}
		//hitstop(100); 
	} else {
		audio_play_sound(SND_HitY1, 10, false);
		with (instance_create_depth(other.x, other.y-80, other.depth - 10, OBJ_HitEffect2)) {
		image_angle = irandom(360);
		}
		alarm[0] = 1;
	}
	
}
