switch(State){
 
	case "Intro":
		sprite_index = SPR_MinionIntro;
		break;
 
    case "Idle":
        sprite_index = SPR_MinionIdle;
        break;
         
    case "PositionFront":
    case "PositionBehind":
        if(point_distance(x,y,TargetX,TargetY) > 50){
			image_xscale = sign(TargetX-x);
	    }else{
	        image_xscale = sign(OBJ_Player.x-TargetX);
	    }
		
	    if(speed != 0){
	        sprite_index = SPR_MinionWalk;
	    }else{
	        sprite_index = SPR_MinionIdle;
	    }
	    break;
		
	case "Hit":
	    sprite_index = SPR_MinionHit;
	    break;
		
	case "Guard":
		sprite_index = SPR_BusterGuard;
		break;
		
	case "BDash":
		sprite_index = SPR_BusterBDash;
		break;
}