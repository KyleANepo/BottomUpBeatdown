if(image_index >= DMGFrame && hit < 1 && abs(OwnerID.GroundY - other.GroundY) <= LayerSize && Owner == "Player" && other.State != "BDash" && other.sprite_index != SPR_PorkSpecial1ATK1 && other.sprite_index != SPR_PorkSpecial2 && other.sprite_index != SPR_PorkSpecial3){
    
	hit = 1;
	
	if (other.State != "Guard") {
		if (other.isArmored == false) { 
		    other.CurrentHP -= Damage;
		    other.State = "Hit";
		    other.alarm[0] = StunLength;
	
			if (OwnerID.bloodLust != false) {
				OwnerID.SuperMeter += 1;
			}
	
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
			
			if (other.alarm[1] == -1) //if first hit in a combo, allow for followups until alloted time. then guard.
			{
				other.alarm[1] = 60;
			}
			
			if (OwnerID.image_xscale < 0) {
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
		
		other.guardPoint -= 1;
		if (other.guardPoint < 1) 
			{
				other.guardPoint = 3;
				other.isCounter = true;
			}
	}
} else if (sprite_is_on_frame(DMGFrame) && abs(depth - other.depth) <= LayerSize && Owner == "Player" && other.State != "BDash" && other.sprite_index == SPR_PorkSpecial1ATK1) {
	
	other.flashColor = c_blue;
	other.flashAlpha = 1;
	audio_play_sound(SND_Slip, 10, false);
	with (instance_create_depth(other.x-20, other.y-80, other.depth - 10, OBJ_ParryEffect)) {
		image_angle = irandom(360); 
	}
	hitstop(200);
	
	other.isCounter = true;
	
}
