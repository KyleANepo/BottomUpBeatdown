var MyAttack = 0;

if(IsHit == false && CurrentHP > 0 ){
    if(AttackType == "X" && IsAttacking == false){
        sprite_index = SPR_SteaksPunch1;
		image_index = 0;
        MyAttack = instance_create_layer(x,y,"Instances",ATK_X)
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;
			OwnerID = other.id;
		    Owner = "Player"; 
		}
    }
	else if(AttackType == "Y" && IsAttacking == false) {
	    sprite_index = SPR_SteaksPunchY1;
		image_index = 0;
	    MyAttack = instance_create_layer(x,y,"Instances",ATK_Y);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;
			OwnerID = other.id;
		    Owner = "Player"; 
		}
	}
	else if(AttackType == "XX" && sprite_index == SPR_SteaksPunch1) {
	    sprite_index = SPR_SteaksPunch1A;
		image_index = 0;
	    MyAttack = instance_create_layer(x,y,"Instances",ATK_XX);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;
			OwnerID = other.id;
		    Owner = "Player"; 
		}
	}
	else if(AttackType == "XXX" && sprite_index == SPR_SteaksPunch1A) {
	    sprite_index = SPR_SteaksPunch2;
		image_index = 0;
	    MyAttack = instance_create_layer(x,y,"Instances",ATK_XXX);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;
			OwnerID = other.id;
		    Owner = "Player"; 
		}
	}
	else if(AttackType == "XY" && sprite_index == SPR_SteaksPunch1){
		sprite_index = SPR_SteaksPunchY2;
		image_index = 0;
		MyAttack = instance_create_layer(x,y,"Instances",ATK_XY);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;
			OwnerID = other.id;
		    Owner = "Player"; 
		}
	}
	else if(AttackType == "XXY" && sprite_index == SPR_SteaksPunch1A){
		sprite_index = SPR_SteaksPunchY3;
		image_index = 0;
		MyAttack = instance_create_layer(x,y,"Instances",ATK_XXY);
		with (MyAttack)
		{
		    image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		    image_speed = other.image_speed;
			OwnerID = other.id;
		    Owner = "Player"; 
		}
	}
	else if(AttackType == "XXXY" && sprite_index == SPR_SteaksPunch2){
		sprite_index = SPR_SteaksPunchY4;
		image_index = 0;
		MyAttack = instance_create_layer(x,y,"Instances",ATK_XXXY);
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
    SpeedMod = 0;
    IsAttacking = true;
} 
