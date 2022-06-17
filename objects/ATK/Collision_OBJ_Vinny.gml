if(image_index == DMGFrame && abs(depth - other.depth) <= LayerSize && Owner == "Player"){
     
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
		hitstop(100);
		
		if (OBJ_Player.image_xscale < 0) {
			other.Knockback = 20;
		} else {
			other.Knockback = -20;
		}
	}
	
}
