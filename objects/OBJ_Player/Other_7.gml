if(IsAttacking == true){
    IsAttacking = false;
    SpeedMod = 1;
}

if(sprite_index == SPR_SteaksParry){
	IsParrying = false;
	
	if (keyboard_check(vk_right) || keyboard_check(ord("L"))) {
		IsGuarding = true;
	}
}

if(sprite_index == SPR_SteaksSlip){
	sprite_index = SPR_SteaksIdle;
}