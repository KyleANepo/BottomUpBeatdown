var MyAction = floor(random(100));
 
switch(State){
     
    case "Idle":
        if(MyAction <= 50){
                State = "PositionBehind";
            }else{
                State = "PositionFront";
            }
        break;
	
	case "Hit":
		if(CurrentHP <= (MaxHP/3)*2 && Phase < 2){
			State = "Phase2Transition"; 
		} else if (CurrentHP <= (MaxHP/3) && Phase == 2)
		{
			State = "Phase3Transition";
		}
		
}