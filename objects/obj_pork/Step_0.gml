//boundaries
x=clamp(x, 30, room_width-30);
y=clamp(y, 325, room_height-10);

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
	
	case "Guard":
		event_user(3);
		speed = 0;
		break;
		
	case "BDash":
		event_user(3);
		x -= face*10;
		break;
		
	case "Attacking": //any special movement cases
		if (sprite_index == SPR_PorkString3 && (image_index > 5 && image_index < 15)) x += face*3;
		if (sprite_index == SPR_PorkSpecial3 && (image_index > 1 && image_index < 11)) x += face*1;
		if (sprite_index == SPR_PorkSpecial3 && sprite_is_on_frame(15))
		{
			x = OBJ_Player.x - sign(face)*100
			y = OBJ_Player.GroundY
		}
		
		
		break;
		
	}
	
	//counter
	if (isCounter == true){ 
		isCounter = false;
		sprite_index = SPR_PorkSpecial1ATK2;
		image_index = 0;
		unblockEffects();
        MyAttack = instance_create_layer(x,y,"Instances",ATK_PorkSpecial1);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;	
			OwnerID = other.id;
		    Owner = "Enemy"; 
			depth = depth;
		}
		
	} 
	
	//bloodlust
	if (bloodLust)
	{
		image_speed = 1.5
		Speed = 11
	} else
	{
		image_speed = 1
		Speed = 9
	}
	
	//water effect
	if (curRoom == r_pork and sprite_index == SPR_PorkRun and (sprite_is_on_frame(2) || sprite_is_on_frame(5) ) )
	{
		instance_create_depth(x, y, depth, OBJ_WaterEffect);
	}
	
	//Knockback
	if (Knockback < 0) {
		x -= Knockback;
		Knockback -= -2;
	} else if (Knockback > 0) {
		x -= Knockback;
		Knockback -= 2;
	}

}else
{
	State = "Hit"
	fadetoroom(r_menu, 50, c_white);
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

