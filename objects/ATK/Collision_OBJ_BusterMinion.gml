if(image_index == DMGFrame && abs(depth - other.depth) <= LayerSize && Owner == "Player" && other.State != "BDash"){
    
	hit = 1
	
	if (other.State != "Guard") {
		if (other.isArmored == false) { 
		    other.CurrentHP -= Damage;
		    other.State = "Hit";
		    other.alarm[0] = StunLength;
	
			//Hit effects
			if (isHeavy == false) { 
				audio_play_sound(SND_HitX1, 10, false);
				with (instance_create_depth(other.x-20, other.y-80, other.depth - 10, OBJ_HitEffect1)) {
					image_angle = irandom(360);
				}
				other.flashColor = c_red;
				other.flashAlpha = 1;
			} else {
				audio_play_sound(SND_HitY1, 10, false);
				with (instance_create_depth(other.x, other.y-80, other.depth - 10, OBJ_HitEffect2)) {
					image_angle = irandom(360);
				}
				other.flashColor = c_red;
				other.flashAlpha = 1;
				hitstop(100);
		
			}
			
			if (OBJ_Player.image_xscale < 0) {
				other.Knockback = Knockback;
			} else {
				other.Knockback = -Knockback;
			}
			
			
		} else 
		{ //is armorerd
			other.CurrentHP -= (Damage / 10);
	
			//Hit effects
			audio_play_sound(SND_HitBlocked, 10, false);
			with (instance_create_depth(other.x-20, other.y-80, other.depth - 10, OBJ_HitEffect1)) {
				image_angle = irandom(360);
			}
			other.flashColor = c_white;
			other.flashAlpha = 1;
			
		}
	} else
	{
		other.State = "Guard";
		
		//Hit effects
		audio_play_sound(SND_HitBlocked, 10, false);
		with (instance_create_depth(other.x-20, other.y-80, other.depth - 10, OBJ_GuardEffect)) {
			image_angle = irandom(360);
		}
		other.flashColor = c_white;
		other.flashAlpha = 1;
	}
}
