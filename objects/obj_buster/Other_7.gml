if(isString == 0)
{
	if(State == "Attacking" && OnGround == true){
		isArmored = false;
	    State = "Idle";
	}
} else if (isString > 0)
{
	isString -= 1;	
}

//for attack strings
if(sprite_index == SPR_BusterString2ATK1)
{
	sprite_index = SPR_BusterString2ATK2;
	image_index = 0;
	x += 70 * face;
    MyAttack = instance_create_layer(x,y,"Instances",ATK_BusterString2ATK2);
	with (MyAttack)
	{
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		image_speed = other.image_speed;	
		Owner = "Enemy"; 
		depth = depth;
	}
}

//for special 1
if(sprite_index == SPR_BusterSpecial1Transform)
{
	sprite_index = SPR_BusterSpecial1Attack;
	image_index = 0;
	
	//spawns him on either side of the battlefield depending on which way he's facing
	if (face == -1) x = 1270
	else if (face == 1) x = 10
	
	audio_play_sound(SND_BusterEngine, 10, false)
	instance_create_depth(x + face*40, y-80, depth - 10, OBJ_UnblockableEffect);
    MyAttack = instance_create_layer(x,y,"Instances",ATK_BusterSpecial1);
	with (MyAttack)
	{
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		image_speed = other.image_speed;	
		Owner = "Enemy"; 
		depth = depth;
	}
}


if(State == "BDash")
{
	State = "Idle";
}

