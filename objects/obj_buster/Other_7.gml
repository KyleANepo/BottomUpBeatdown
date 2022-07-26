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

if(State == "BDash")
{
	State = "Idle";
}

