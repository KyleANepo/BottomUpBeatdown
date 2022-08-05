///Attack Event
if(OBJ_Player.CurrentHP > 0){
 
    AttackChance = random(100); 
	
	speed = 0;
	Aggressiveness = 0;
	State = "Attacking";
	isArmored = true;
	
	if(Mortal > 0)
	{
		sprite_index = SPR_BusterSpecial1Transform;
		image_index = 0;
		audio_play_sound(SND_BusterEngine, 10, false)
		isString = 1;
		Mortal = 0;
	} else if (Summon > 0) {
		sprite_index = SPR_BusterString3;
		image_index = 0;
		Minion1 = instance_create_layer(x+100,y+50,"Instances",OBJ_BusterMinion);
		with (Minion1)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;	
		    Owner = "Enemy"; 
			depth = depth;
		}
		Minion2 = instance_create_layer(x-100,y-50,"Instances",OBJ_BusterMinion);
		with (Minion2)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;	
		    Owner = "Enemy"; 
			depth = depth;
		}
		Summon = 0;
	} else if(AttackChance>= 66){
 
        sprite_index = SPR_BusterString1;
		image_index = 0;
        MyAttack = instance_create_layer(x,y,"Instances",ATK_BusterString1ATK1);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;	
		    Owner = "Enemy"; 
			depth = depth;
		}
		
	} else if (AttackChance < 66 && AttackChance >= 33) {
		
		sprite_index = SPR_BusterString2ATK1;
		image_index = 0;
		isString = 1;
        MyAttack = instance_create_layer(x,y,"Instances",ATK_BusterString2ATK1);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;	
		    Owner = "Enemy"; 
			depth = depth;
		}
		
	} else {
		
		unblockEffects();
		sprite_index = SPR_BusterString3;
		image_index = 0;
        MyAttack = instance_create_layer(x,y,"Instances",ATK_BusterString3ATK1);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;	
		    Owner = "Enemy"; 
			depth = depth;
		}
		
	}
     
}