///Attack Event
if(OBJ_Player.CurrentHP > 0){
 
    AttackChance = random(100); 
	
	speed = 0;
	Aggressiveness = 0;
	State = "Attacking";
	isArmored = true;
	
	if(Mortal > 0)
	{
		instance_create_depth(other.x, other.y-130, other.depth - 10, OBJ_DeadlyAttack);
		sprite_index = SPR_PorkSpecial3;
		image_index = 0;
		MyAttack = instance_create_layer(x,y,"Instances",ATK_PorkSpecial3);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;	
			OwnerID = other.id;
		    Owner = "Enemy"; 
			depth = depth;
		}
		Mortal = 0;
	} else if(AttackChance>= 80)
	{
 
        sprite_index = SPR_PorkString1ATK1;
		image_index = 0;
		isString = 1;
        MyAttack = instance_create_layer(x,y,"Instances",ATK_PorkString1ATK1);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;	
			OwnerID = other.id;
		    Owner = "Enemy"; 
			depth = depth;
		}
		
	} else if (AttackChance < 80 && AttackChance >= 60) {
		
		sprite_index = SPR_PorkString2ATK1;
		image_index = 0;
		isString = 2;
        MyAttack = instance_create_layer(x,y,"Instances",ATK_PorkString2ATK1);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;	
			OwnerID = other.id;
		    Owner = "Enemy"; 
			depth = depth;
		}
		
	} else if (AttackChance < 60 && AttackChance >= 40) {
		
		sprite_index = SPR_PorkString3;
		image_index = 0;
        MyAttack = instance_create_layer(x,y,"Instances",ATK_PorkString3);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;	
			OwnerID = other.id;
		    Owner = "Enemy"; 
			depth = depth;
		}
		
	} else if (AttackChance < 40 && AttackChance >= 20) {
		
		sprite_index = SPR_PorkSpecial1ATK1;
		image_index = 0;
        //MyAttack = instance_create_layer(x,y,"Instances",ATK_PorkSpecial1);
		//with (MyAttack)
		//{
		//    image_xscale = other.image_xscale;
		//	image_yscale = other.image_yscale;
		//    image_speed = other.image_speed;	
		//	OwnerID = other.id;
		//    Owner = "Enemy"; 
		//	depth = depth;
		//}
		
	} else {
		
		sprite_index = SPR_PorkSpecial2;
		image_index = 0;
		unblockEffects();
        MyAttack = instance_create_layer(x,y,"Instances",ATK_PorkSpecial2);
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
	
     
}