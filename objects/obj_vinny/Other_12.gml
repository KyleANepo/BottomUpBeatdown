///Attack Event
if(OBJ_Player.CurrentHP > 0){
 
    AttackChance = random(100); 
 
    if(AttackChance>= 65){
 
        sprite_index = SPR_VinnyString1ATK1;
		image_index = 0;
		isString = 1;
        MyAttack = instance_create_layer(x,y,"Instances",ATK_VinnyString1ATK1);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;	
		    Owner = "Enemy"; 
			depth = depth;
		}
    }else if (AttackChance < 65 && AttackChance > 30) {
		
		sprite_index = SPR_VinnyString2ATK1;
		image_index = 0;
		isString = 1;
        MyAttack = instance_create_layer(x,y,"Instances",ATK_VinnyString2ATK1);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;	
		    Owner = "Enemy"; 
			depth = depth;
		}
		
	}else{
 
        sprite_index = SPR_VinnySpecial1;
		image_index = 0;
		isArmored = true;
        MyAttack = instance_create_layer(x,y,"Instances",ATK_VinnySpecial1);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;	
		    Owner = "Enemy"; 
			depth = depth;
		}
    }
     
	
	speed = 0;
	Aggressiveness = 0;
	State = "Attacking";
}