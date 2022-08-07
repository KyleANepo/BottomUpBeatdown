if(IsAttacking == true){
    IsAttacking = false;
    SpeedMod = 1;
}

if(sprite_index == SPR_SteaksParry){
	IsParrying = false;
}

if(sprite_index == SPR_SteaksTaunt1){
	sprite_index = SPR_SteaksIdle;
}

if(sprite_index == SPR_SteaksSlip){
	sprite_index = SPR_SteaksIdle;
}

if (curRoom == r_pork and sprite_index == SPR_SteaksWalk)
{
	instance_create_depth(x, y, depth, OBJ_WaterEffect);
}