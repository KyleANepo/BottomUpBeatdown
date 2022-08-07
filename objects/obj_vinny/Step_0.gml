//boundaries
x=clamp(x, 0, room_width);
y=clamp(y, 325, room_height);

CurrentHP = clamp(CurrentHP, 0, MaxHP);

//if hp greater than 0, do everything
if (CurrentHP > 0) {
	
	event_user(0);

	switch (State){
	
	case "Intro":
		image_xscale = -1;
		break;
	
    case "Idle":
        event_user(3); 
        event_user(1);
		isArmored = false;
        break;
 
    case "PositionFront":
        SideMod = 1;
        event_user(4);
        event_user(5);
        event_user(3); 
        event_user(1);
        break;
 
    case "PositionBehind":
        SideMod = -1;
        event_user(4);
        event_user(5);
        event_user(3);
        event_user(1);
        break;
		
	case "Hit":
	    event_user(3);//Animate the Enemy
		speed = 0;
	    break;
		
	case "Phase2Transition":
		Phase = 2;
		event_user(3);
		Speed = 3.5;
		speed = 0;
		break;
		
	case "Phase3Transition":
		Phase = 3;
		event_user(3);
		Speed = 2;
		speed = 0;
		break;
	
	case "Guard":
		event_user(3);
		speed = 0;
		break;
		
	case "BDash":
		event_user(3);
		if (Phase == 1) {
			x -= face*10;
			} else {
			x -= face*20;
			}
		break;
		
	}
	
	//Knockback
	if (Knockback < 0) {
		x -= Knockback;
		Knockback -= -2;
	} else if (Knockback > 0) {
		x -= Knockback;
		Knockback -= 2;
	}
	
	
	//special 4
	if (sprite_index == SPR_VinnySpecial4)
	{
		if (sprite_is_on_frame(6)|| sprite_is_on_frame(12)) 
		{
			audio_play_sound(SND_HitWhiff,10,false)
			MyAttack = instance_create_layer(OBJ_Player.x,OBJ_Player.GroundY,"Instances",ATK_VinnySpecial4);
			with (MyAttack)
			{
				image_xscale = other.image_xscale;
				image_yscale = other.image_yscale;
				image_speed = other.image_speed;	
				OwnerID = other.id;
				Owner = "Enemy"; 
				depth = depth;
			}
		} else if (sprite_is_on_frame(9)) {
			audio_play_sound(SND_HitWhiff,10,false)
			MyAttack = instance_create_layer(OBJ_Player.x,OBJ_Player.GroundY,"Instances",ATK_VinnySpecial4);
			with (MyAttack)
			{
				image_xscale = other.image_xscale*-1;
				image_yscale = other.image_yscale;
				image_speed = other.image_speed;	
				OwnerID = other.id;
				Owner = "Enemy"; 
				depth = depth;
			}
		}
	}

} else
{
	fadetoroom(r_menu, 50, c_white);
}

if(OnGround == true){
    GroundY = y;
}

if (image_xscale < 0) {
	face = -1;
} else {
	face = 1;
}

if (OBJ_Player.image_xscale < 0) {
	bface = -1;
} else {
	bface = 1;
}


if (flashAlpha > 0) { 
	flashAlpha -=.2;
}

depth = -1*GroundY;

