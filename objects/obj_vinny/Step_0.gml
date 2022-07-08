//boundaries
x=clamp(x, 0, room_width);
y=clamp(y, 325, room_height);

//if hp greater than 0, do everything
if (MaxHP > 0) {
	
	event_user(0);

	switch (State){
 
    case "Idle":
        event_user(3); 
        event_user(1);
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
		
		speed = 0;
		break;
	
	case "Guard":
		event_user(3);
		speed = 0;
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
	face = -1;
} else {
	face = 1;
}

if (flashAlpha > 0) { 
	flashAlpha -=.2;
}

depth = -1*GroundY;

