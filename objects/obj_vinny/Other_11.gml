if(OnGround == true){
	
	if (Phase == 1) {
	    if(distance_to_object(OBJ_Player) <= AttackRange && abs(y-OBJ_Player.GroundY) < LayerSize){
	        Aggressiveness += .02;
	        if(random(1) < Aggressiveness*.05){
	            event_user(2);//Attack Event
	        }
	    }
	}
	else if (Phase == 2) {
		if(distance_to_object(OBJ_Player) <= AttackRange && abs(y-OBJ_Player.GroundY) < LayerSize){
	        Aggressiveness += .02;
	        if(random(1) < Aggressiveness*.05){
				isRanged = false;
	            event_user(6);//Attack Event
	        }
	    } else
		{
			Aggressiveness += .02;
	        if(random(1) < Aggressiveness*.07){
				isRanged = true;
	            event_user(6);//Attack Event
	        }
		}
	}
}