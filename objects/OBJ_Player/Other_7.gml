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

