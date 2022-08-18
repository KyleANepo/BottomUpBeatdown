
SuperMeter = clamp(SuperMeter,0,20)
x=clamp(x, 30, room_width-30);
if (OnGround == true) {
	y=clamp(y, 325, room_height);
} else
{
	y=clamp(y, 0, room_height);
}

CurrentHP = clamp(CurrentHP, 0, MaxHP);



get_input();

//if alive
if (intro == 1) {
	
}
else if(CurrentHP > 0 && intro == 0){
	//left or right
	XSpeed = 0;
	if(input_left_check){
		XSpeed = -1*Speed;
	}else if(input_right_check){
		XSpeed = Speed;
	}
	
	//Checks if either the W or S buttons are pressed to make the player move Up or Down.
	YSpeed = 0;
	if(OnGround == true){
	    if(input_up_check){
	        YSpeed = -1*Speed/2;
	    }else if(input_down_check){
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
	
	if (curRoom == r_pork and sprite_index == SPR_SteaksWalk and (sprite_is_on_frame(1) || sprite_is_on_frame(3) || sprite_is_on_frame(5) || sprite_is_on_frame(7)))
	{
		instance_create_depth(x, y, depth, OBJ_WaterEffect);
	}
	
	if(sprite_is_on_frame(3) && sprite_index == SPR_SteaksDodge || sprite_index != SPR_SteaksDodge){
		IsDodging = false;
	}
	
	
	//Dodging
	if(IsHit == false && OnGround == true && IsParrying == false && IsGuarding == false && sprite_index != SPR_SteaksDodge && sprite_index != SPR_SteaksBloodlust && sprite_index != SPR_SteaksTaunt2 && ((bloodLust == false && IsAttacking == false) || (bloodLust == true)) ){
		if (input_dodge_pressed){
			IsDodging = true;
			audio_play_sound(SND_Dodge,10,false)
			sprite_index = SPR_SteaksDodge;
			image_index = 0;
			Knockback -= 22*sign(image_xscale);
		}
	}
	
	//Blocking
	if(IsHit == false && CurrentHP > 0 && OnGround == true && IsAttacking == false && IsParrying == false && sprite_index != SPR_SteaksBloodlust && sprite_index != SPR_SteaksTaunt2){
		if (input_guard_pressed){
			sprite_index = SPR_SteaksParry;
			image_index = 0;
			IsParrying = true;
			IsGuarding = true;
			SpeedMod = 0;
		}
	}
	
	if (input_guard_released){
		IsGuarding = false;
		SpeedMod = 1;
	}

	
	//Attacking
	
	AttackType = "";
	ButtonCombo = "";
 
	if(input_light_pressed){
		ButtonCombo += "+LAtk";
	}

	if(input_heavy_pressed){
	    ButtonCombo += "+SAtk";
	}
	
	
	if (input_light_pressed or input_heavy_pressed) {
		ds_list_add(CommandList, string_delete(ButtonCombo,1,1));
		alarm[0] = 20;

		while(ds_list_size(CommandList) > 4){
		    ds_list_delete(CommandList, 0);
		}
	
		//XXXY
		//XXY
		//XY
		//XXX
		//XX
		//X
		//Y

		ButtonCombo = string_delete(ButtonCombo,1,1);
		
		if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "SAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-2) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-3) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-4) == "LAtk"){
	    AttackType = "XXXY";
		ds_list_clear(CommandList);
		} else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "SAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-2) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-3) == "LAtk"){
		    AttackType = "XXY";
			ds_list_clear(CommandList);
		} else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "SAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-2) == "LAtk"){
		    AttackType = "XY";
			ds_list_clear(CommandList);
		}else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-2) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-3) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-4) == "LAtk"){
		    ds_list_clear(CommandList);
		}else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-2) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-3) == "LAtk"){
		    AttackType = "XXX";
		}else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-2) == "LAtk"){
		    AttackType = "XX";
		}else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "LAtk"){
		    AttackType = "X";
		}else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "SAtk"){
		    AttackType = "Y";
		}else if(ButtonCombo == "LAtk+SAtk"){
		    AttackType = "Super1";
		}

		if(OnGround == true && IsGuarding == false && IsParrying == false && sprite_index != SPR_SteaksBloodlust && sprite_index != SPR_SteaksTaunt2){
		    event_user(2);
		}

		if(OnGround == false && IsHit == false && sprite_index != SPR_SteaksTaunt2)
		{
			event_user(3);
		}
		
	}

	//bloodlust
	if(SuperMeter >= 20)
	{	
		if(input_bl_pressed && bloodLust == false && IsGuarding == false && IsParrying == false && IsHit = false)
		{
			bloodLust = true;
			flashColor = c_white;
			flashAlpha = 1;
			global.shake = true;
			audio_play_sound(SND_UnblockableSnd, 10, false);
			instance_create_depth(x, y-130, depth - 10, OBJ_UnblockableEffect);
			sprite_index = SPR_SteaksBloodlust;
			image_index = 0;
		}
	}
	
	if(bloodLust && SuperMeter > 0)
	{
		Speed = 7;
		image_speed = 1.5;
		SuperMeter -= .07
	} else
	{
		bloodLust = false;
		Speed = 5.5;
		image_speed = 1;
	}
	
	//taunting
	if (input_taunt_pressed && IsAttacking == false && IsHit = false && IsParrying == false && IsGuarding == false && sprite_index != SPR_SteaksDodge && sprite_index != SPR_SteaksBloodlust)
	{
		sprite_index = SPR_SteaksTaunt2;
		image_index = 0;
	}
	
	if (sprite_index == SPR_SteaksTaunt2 and sprite_is_on_frame(8))
	{
		SuperMeter += 3;
	}
	
	//Movement
	if(IsAttacking == false && IsHit = false && IsParrying == false && IsGuarding == false && sprite_index != SPR_SteaksDodge && sprite_index != SPR_SteaksBloodlust && sprite_index != SPR_SteaksTaunt2){     
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
		if ((input_jump_pressed) && OnGround == true){
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
	
	switch (sprite_index)
	{
		case SPR_SteaksPunchSuper1:
			if (sprite_is_on_frame(4))
			{
				x += 70*sign(image_xscale)
			}
			break;
			
		case SPR_SteaksPunchSuper2:
			if (image_index >= 4 && image_index <= 10)
			{
				x += 8*sign(image_xscale)
			}
			break;
	}
	
	
}else{
	fadetoroom(r_menu, 50, c_white);
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

