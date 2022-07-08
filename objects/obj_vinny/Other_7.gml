if(isString == 0)
{
	if(State == "Attacking" && OnGround == true){
 
	    State = "Idle";
 
	}
} else if (isString > 0)
{
	isString -= 1;	
}

if(sprite_index == SPR_VinnyString1ATK1)
{
	sprite_index = SPR_VinnyString1ATK2;
	image_index = 0;
	x += 60 * face;
    MyAttack = instance_create_layer(x,y,"Instances",ATK_VinnyString1ATK2);
	with (MyAttack)
	{
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		image_speed = other.image_speed;	
		Owner = "Enemy"; 
		depth = depth;
	}
}

if(sprite_index == SPR_VinnyString2ATK1)
{
	sprite_index = SPR_VinnyString2ATK2;
	image_index = 0;
    MyAttack = instance_create_layer(x,y,"Instances",ATK_VinnyString2ATK2);
	with (MyAttack)
	{
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		image_speed = other.image_speed;	
		Owner = "Enemy"; 
		depth = depth;
	}
}

if(sprite_index == SPR_VinnySpecial1)
{
	isArmored = false;
}

if(sprite_index == SPR_VinnyCounter)
{
	isArmored = false;
	isCounter = false;
}

if(sprite_index == SPR_VinnyPhase2)
{
	isArmored = false;
	State = "Idle";
}