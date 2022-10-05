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

if(State == "Intro")
{
	sprite_index = SPR_PorkIdle	;
}

//for attack strings
if(sprite_index == SPR_PorkString1ATK1)
{
	sprite_index = SPR_PorkString1ATK2;
	image_index = 0;
	//x += 70 * face;
    MyAttack = instance_create_layer(x,y,"Instances",ATK_PorkString1ATK2);
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

if(sprite_index == SPR_PorkString2ATK2)
{
	sprite_index = SPR_PorkString2ATK3;
	image_index = 0;
    MyAttack = instance_create_layer(x,y,"Instances",ATK_PorkString2ATK3);
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

if(sprite_index == SPR_PorkString2ATK1)
{
	sprite_index = SPR_PorkString2ATK2;
	image_index = 0;
	x += 70 * face;
    MyAttack = instance_create_layer(x,y,"Instances",ATK_PorkString2ATK2);
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


if(State == "BDash")
{
	State = "Idle";
}

