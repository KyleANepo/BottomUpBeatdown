var MyAction = floor(random(100));
 
switch(State){
     
	case "Intro":
		if (image_index > image_number - 1)
		{
			State = "Idle";
		}
		break;
	
    case "Idle":
        if(MyAction <= 50){
                State = "PositionBehind";
            }else{
                State = "PositionFront";
            }
        break;
	
	case "Hit": //check if health is brought down a chunk, makes next attack a mortal wound
		break;
		
	case "PositionFront":
	case "PositionBehind":
	    if(instance_place(TargetX,TargetY,OBJ_Enemy) != noone && instance_place(TargetX,TargetY,OBJ_Enemy) != id){
		    if(State == "PositionFront"){
		        State = "PositionBehind";
		    }else{
		        State = "PositionFront";
		    }
		}
		break;
		
	case "Queueing":
		if(ds_list_size(OBJ_Player.EnemyList) < 2){
		    ds_list_add(OBJ_Player.EnemyList, id);
		    if(x < OBJ_Player.x){
		        State = "PositionBehind";
		    }else{
		        State = "PositionFront";
		    }
		}
		break;
		
}