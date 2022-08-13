if (State == "Guard" && isCounter == false)
{
	State = "BDash"
} else
{
	
	speed = 0;
	Aggressiveness = 0;
	State = "Attacking";
	isArmored = true;
	
	sprite_index = SPR_VinnyCounter;
	image_index = 0;
	isArmored = true; //and unblockable
	unblockEffects();
	flashColor = c_red;
	flashAlpha = 1;
    MyAttack = instance_create_layer(x,y,"Instances",ATK_VinnyCounter);
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