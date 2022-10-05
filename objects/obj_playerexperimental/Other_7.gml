if(IsAttacking == true){
    IsAttacking = false;
    SpeedMod = 1;
}

if(IsAttackingAir == true){
    IsAttackingAir = false;
}

if(sprite_index == SPR_SteaksParry){
	IsParrying = false;
}

if(sprite_index == SPR_SteaksTaunt1 or sprite_index == SPR_SteaksTaunt2 or sprite_index == SPR_SteaksBloodlust){
	sprite_index = SPR_SteaksIdle;
}

if(sprite_index == SPR_SteaksSlip){
	sprite_index = SPR_SteaksIdle;
}

if(sprite_index == SPR_SteaksDodge){
	SpeedMod = 1
	IsDodging = false;
	sprite_index = SPR_SteaksIdle;
}