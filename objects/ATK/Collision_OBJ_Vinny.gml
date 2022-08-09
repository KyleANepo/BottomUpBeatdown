if(sprite_is_on_frame(DMGFrame) && abs(depth - other.depth) <= LayerSize && Owner == "Player" && other.State != "BDash"){
    
	hit = 1
	
	if (other.State != "Guard") {
		if (other.isArmored == false) { 
		    other.CurrentHP -= Damage;
		    other.State = "Hit";
		    other.alarm[0] = StunLength;
	
			OBJ_Player.SuperMeter += 1;
	
			//Hit effects
			if (isHeavy == false) { 
				lightatkeffects()
			} else {
				heavyatkeffects()
				hitstop(100);
			}
			
			if (OBJ_Player.image_xscale < 0) {
				other.Knockback = Knockback;
			} else {
				other.Knockback = -Knockback;
			}
			
			if (other.alarm[1] == -1) //if first hit in a combo, allow for followups until alloted time. then guard.
			{
				other.alarm[1] = 80;
			}
			
			
		} else 
		{ //is armored
			if (isUnblock == true && other.sprite_index != SPR_VinnyPhase2) //if guardbreaker move
			{
				other.isArmored = false
				
				
				other.CurrentHP -= (Damage / 10);
				other.State = "Hit";
				other.alarm[0] = StunLength;
				
				other.flashColor = c_yellow;
				other.flashAlpha = 1;
				hitstop(100);
				
				instance_create_depth(other.x, other.y-130, other.depth - 10, OBJ_GuardBreakEffect);
				audio_play_sound(SND_HitBroken, 10, false);
				audio_play_sound(SND_HitY1, 10, false);
				with (instance_create_depth(other.x, other.y-80, other.depth - 10, OBJ_HitEffect2)) {
					image_angle = irandom(360);
				}
				
				if (OBJ_Player.image_xscale < 0) {
				other.Knockback = Knockback;
				} else {
					other.Knockback = -Knockback;
				}
				
			} else 
			{
				other.CurrentHP -= (Damage / 10);
	
				//Hit effects
				audio_play_sound(SND_HitBlocked, 10, false);
				with (instance_create_depth(other.x-20, other.y-80, other.depth - 10, OBJ_HitEffect1)) {
					image_angle = irandom(360);
				}
				other.flashColor = c_white;
				other.flashAlpha = 1;
			}
		}
	} else
	{
		//other.State = "Guard";
		
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
			other.sprite_index = SPR_VinnyCounter
		}
	}
}

