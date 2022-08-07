if(sprite_is_on_frame(DMGFrame) && abs(depth - other.depth) <= LayerSize && abs(y - other.GroundY) <= LayerSize && Owner == "Enemy" && other.IsJumping == false){
     
	hit = 1;
	 
	if (other.IsParrying == true && isUnblock == false) { //if parried and is attack was not unblockable
	
		other.IsParrying = false;
		other.IsGuarding = false;
		other.IsSlip = true;
		other.SpeedMod = 1;
		other.sprite_index = SPR_SteaksSlip;
		other.image_index = 0;
		
		other.CurrentHP += 5;
		
		other.flashColor = c_blue;
		other.flashAlpha = 1;
		audio_play_sound(SND_Slip, 10, false);
		with (instance_create_depth(other.x-20, other.y-80, other.depth - 10, OBJ_ParryEffect)) {
			image_angle = irandom(360); 
		}
		hitstop(200);
		 
	} else //if not parried
	{
		other.IsParrying = false;
		
		if (other.IsGuarding == true && isUnblock == false) //if guarding and not blockable, nerf damage and stun length
		{
			Damage /= 10;
			StunLength /= 2;
		} else if (isUnblock == true) 
		{
			other.SpeedMod = 1;
			other.IsGuarding = false;
		}
	
	
	
		if (other.IsGuarding == false)
		{
			other.IsHit = true;
		} else
		{
			other.IsHitBlocked = true;
		}
	
	    other.CurrentHP -= Damage; 
	    other.alarm[3] = StunLength;
     
	 
		 //hit effects
		 
		 if (other.IsGuarding == true && isUnblock == false)
		 {
			 blockatkeffects();
		 } else
		 {
			 if (isHeavy == false) {
				 lightatkeffects();
			 } else
			 {
				 heavyatkeffects();
			 }
		 }
		 
		 if (isHeavy == true)
		 {
			 hitstop(100);
		 }
		 
		 if (OwnerID.image_xscale < 0) {
				other.Knockback = Knockback;
		 } else {
				other.Knockback = -Knockback;
		 }
	}
} 