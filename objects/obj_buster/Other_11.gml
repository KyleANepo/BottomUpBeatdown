//@description - attack chances and aggression

if(OnGround == true){
	
	if(distance_to_object(OBJ_Player) <= AttackRange && abs(y-OBJ_Player.GroundY) < LayerSize){
	    Aggressiveness += (.02 + AggroMod); //increasing this means increasing rate of attack
	    if(random(1) < Aggressiveness*.05){ 
	        event_user(2);//Attack Event
	    }
	}
	
}