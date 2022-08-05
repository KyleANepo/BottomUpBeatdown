///Attack Event
if(OBJ_Player.CurrentHP > 0){
 
    AttackChance = random(100); 
	
	speed = 0;
	Aggressiveness = 0;
	State = "Attacking";
	
	sprite_index = SPR_MinionString1;
	image_index = 0;
    MyAttack = instance_create_layer(x,y,"Instances",ATK_MinionString1);
	with (MyAttack)
	{
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		image_speed = other.image_speed;	
		Owner = "Enemy"; 
		depth = depth;
	}
     
}