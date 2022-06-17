//boundaries
x=clamp(x, 0, room_width);
y=clamp(y, 325, room_height);

//if hp greater than 0, do everything
if (MaxHP > 0) {

	var MyAction = floor(random(100)); //will generate a random probability if there are multiple actions that can be done

	event_user(0);

	switch (State){
 
    case "Idle":
        if (MyAction <= 50) {
			State = "PositionBehind";
		} else {
			State =	"PositionFront";
		}
        break;
 
    case "PositionFront":
        SideMod = 1;
        //Find Target position
        //Move there
        event_user(3); 
        event_user(1);
        break;
 
    case "PositionBehind":
        SideMod = -1;
        //Find Target position
        //Move there
        event_user(3);
        event_user(1);
        break;
	}

	if(IsHit==true){
    sprite_index = SPR_VinnyHit;
	}else{
    sprite_index = SPR_VinnyIdle;
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

depth = -1*GroundY;

