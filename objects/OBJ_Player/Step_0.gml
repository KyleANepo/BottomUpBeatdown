
x=clamp(x, 30, room_width-30);
if (OnGround == true) {
	y=clamp(y, 325, room_height);
} else
{
	y=clamp(y, 0, room_height);
}

CurrentHP = clamp(CurrentHP, 0, MaxHP);


//if alive
if (intro == 1) {
	
}
else if(CurrentHP > 0 && intro == 0){
	//left or right
	XSpeed = 0;
	if(keyboard_check(ord("A"))){
		XSpeed = -1*Speed;
	}else if(keyboard_check(ord("D"))){
		XSpeed = Speed;
	}
	
	//Checks if either the W or S buttons are pressed to make the player move Up or Down.
	YSpeed = 0;
	if(OnGround == true){
	    if(keyboard_check(ord("W"))){
	        YSpeed = -1*Speed/2;
	    }else if(keyboard_check(ord("S"))){
	        YSpeed = Speed/2;
	    }
	}
	
	//Knockback
	if (Knockback < 0) {
		x -= Knockback;
		Knockback -= -2;
	} else if (Knockback > 0) {
		x -= Knockback;
		Knockback -= 2;
	}
	
	//Movement
	if(IsAttacking == false && IsHit = false && IsParrying == false && IsGuarding == false){     
	    //If the player is on the ground move them with XSpeed and YSpeed, otherwise ignore YSpeed
	    if(OnGround == true){
			if(XSpeed != 0 && YSpeed != 0){
				x+=XSpeed*SpeedMod*.7;
				y+=YSpeed*SpeedMod*.7;
			}else if(XSpeed != 0 || YSpeed != 0){
				x+=XSpeed*SpeedMod;
				y+=YSpeed*SpeedMod;
			}
	
		}else if(OnGround == false) {
			x+=XSpeed*SpeedMod;
		}
	
	
	    //Change the direction of the Player's sprite based on the direction they're moving
	    if(XSpeed != 0){
			 image_xscale = sign(XSpeed*SpeedMod)*2;
		}
		
	    //Animate the Player based on what they're doing.
		//Animates the Player based on their speed
		if(XSpeed == 0 && YSpeed == 0 && OnGround == true && sprite_index!=SPR_SteaksSlip){
		    SpeedMod = 1;
		    sprite_index = SPR_SteaksIdle;
		}else if((XSpeed!=0 || YSpeed != 0) && sprite_index!=SPR_SteaksWalk && OnGround == true){
		    sprite_index = SPR_SteaksWalk;
		} 
	
		//Jumping
		if ((keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("M"))) && OnGround == true){
			OnGround = false;	
			IsJumping = true;
		
			sprite_index = SPR_SteaksJump;
			image_index = 0;
		}
	} else if(IsHit == true && IsGuarding == false){
		sprite_index = SPR_SteaksHit;
	} else if((IsGuarding == true && IsParrying == false && sprite_index != SPR_SteaksSlip) || (IsHitBlocked == true)) {
		sprite_index = SPR_SteaksGuard;
	}
}else{
	fadetoroom(r_menu, 50, c_black);
	//if hp 0, kill
}

//If the player is on the ground, this sets their GroundY variable to their current y position
if(OnGround == true){
    GroundY = y;
	reflecty = y;
} else if (IsJumping == true && OnGround == false) { //fake gravity
	y -= JumpSpeed;
	reflecty += JumpSpeed;
	JumpSpeed -= .5
	if (y >= GroundY)
	{
		OnGround = true;
		IsJumping = false;
		JumpSpeed = 10;
	}
}
 
//Sets the Players' depth based on their GroundY. We're using GroundY instead of y so that even when they're in the air, they will display in fornt of and behind the right objects.
depth = -1*GroundY;

if (flashAlpha > 0) { 
	flashAlpha -=.2;
}

