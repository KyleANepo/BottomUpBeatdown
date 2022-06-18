switch(State){
 
    case "Idle":
        sprite_index = SPR_VinnyIdle;
        break;
         
    case "PositionFront":
    case "PositionBehind":
        if(point_distance(x,y,TargetX,TargetY) > 50){
			image_xscale = sign(TargetX-x);
	    }else{
	        image_xscale = sign(OBJ_Player.x-TargetX);
	    }
		
	    if(speed != 0){
	        sprite_index = SPR_VinnyWalking;
	    }else{
	        sprite_index = SPR_VinnyIdle;
	    }
	    break;
		
	case "Hit":
	    sprite_index = SPR_VinnyHit;
	    break;
}