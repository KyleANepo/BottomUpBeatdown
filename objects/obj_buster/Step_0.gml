//boundaries
x=clamp(x, 0, room_width);
y=clamp(y, 325, room_height);

CurrentHP = clamp(CurrentHP, 0, MaxHP);

//if hp greater than 0, do everything
if (CurrentHP > 0) {
	
	event_user(0);

	switch (State){
 
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
	
	case "Guard":
		event_user(3);
		speed = 0;
		break;
		
	case "BDash":
		event_user(3);
		x -= face*10;
		break;
		
	case "Attacking": //any special movement cases
		if (sprite_index == SPR_BusterString1 && (image_index > 3 && image_index < 20)) x += face*2;
		
		if (sprite_index  == SPR_BusterSpecial1Attack && image_index == 3) {
			audio_stop_sound(SND_BusterEngine); 
			audio_play_sound(SND_BusterTireScreech, 10, false)
			}
		
		if (sprite_index == SPR_BusterSpecial1Attack && (image_index > 3 && image_index <= 6)) x += face*60;
		else if (sprite_index == SPR_BusterSpecial1Attack && image_index == 7) Knockback = -face*30 
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

}

if(OnGround == true){
    GroundY = y;
}

if (image_xscale < 0) {
	face = -1; //facing left
} else { 
	face = 1; //facing right
}

if (flashAlpha > 0) { 
	flashAlpha -=.2;
}

depth = -1*GroundY;
