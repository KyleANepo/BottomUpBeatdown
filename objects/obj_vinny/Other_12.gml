var MyAttack = 0;

///Attack Event
if(OBJ_Player.CurrentHP > 0){
 
    AttackChance = random(100); 
 
    if((Aggressiveness>.75 && AttackChance>= 90) || (Aggressiveness>1 && AttackChance>= 75)){
 
        sprite_index = SPR_VinnySpecial1;
		image_index = 0;
        MyAttack = instance_create_layer(x,y,"Instances",ATK_VinnySpecial1);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;	
			speed = 0;
			Aggressiveness = 0;
			
			State = "Attacking";
		    Owner = "Enemy"; 
			depth = depth;
			
		}
    }else{
 
        sprite_index = SPR_VinnySpecial1;
		image_index = 0;
        MyAttack = instance_create_layer(x,y,"Instances",ATK_VinnySpecial1);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;	
			speed = 0;
			Aggressiveness = 0;
			
			State = "Attacking";
		    Owner = "Enemy"; 
			depth = depth;
		}
    }
     
}