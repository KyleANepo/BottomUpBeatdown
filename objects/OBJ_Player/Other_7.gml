if(IsAttacking == true){
    IsAttacking = false;
    SpeedMod = 1;
}

if(sprite_index == SPR_SteaksParry){
	IsParrying = false;
	if (keyboard_check(vk_right)) {
	IsGuarding = true;
	sprite_index = SPR_SteaksGuard;
	image_index = 0;
	}
}
