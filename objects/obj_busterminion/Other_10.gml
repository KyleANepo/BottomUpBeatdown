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
		
		
}