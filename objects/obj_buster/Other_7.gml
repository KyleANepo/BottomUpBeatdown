if(isString == 0)
{
	if(State == "Attacking" && OnGround == true){
		isArmored = false;
	    State = "Idle";
	}
} else if (isString > 0)
{
	isString -= 1;	
}

if(State == "Phase2Transition" || State == "Phase3Transition")
{
	isArmored = false;
	State = "BDash";
}

if(State == "BDash")
{
	State = "Idle";
}

if(sprite_index == SPR_VinnyCounter)
{
	isCounter = false;
}

