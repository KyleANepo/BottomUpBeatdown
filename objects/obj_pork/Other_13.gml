switch(State){
 
    case "Idle":
        sprite_index = SPR_PorkIdle;
        break;
         
    case "PositionFront":
    case "PositionBehind":
        if(point_distance(x,y,TargetX,TargetY) > 50){
			image_xscale = sign(TargetX-x);
	    }else{
	        image_xscale = sign(OBJ_Player.x-TargetX);
	    }
		
	    if(speed != 0){
	        sprite_index = SPR_PorkRun;
	    }else{
	        sprite_index = SPR_PorkIdle;
	    }
	    break;
		
	case "Hit":
	    sprite_index = SPR_PorkHit;
	    break;
		
	case "Guard":
		sprite_index = SPR_PorkGuard;
		break;
		
	case "BDash":
		sprite_index = SPR_BusterBDash;
		break;
}