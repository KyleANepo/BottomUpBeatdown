var MyAttack = 0;

if(IsHit == false && CurrentHP > 0){
	if((AttackType == "X" || AttackType == "Y") && IsAttackingAir == false) {
	    sprite_index = SPR_SteaksAirPunchY;
		image_index = 0;
	    MyAttack = instance_create_layer(x,y,"Instances",ATK_YAir);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;
			OwnerID = other.id;
		    Owner = "Player"; 
		}
	}
}

if(MyAttack != 0){
    IsAttackingAir = true;
} 
