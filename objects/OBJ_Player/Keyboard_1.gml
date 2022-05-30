//Blocking
if(IsHit == false && CurrentHP > 0 && OnGround == true){
	if (keyboard_check(vk_right)){
		sprite_index = SPR_SteaksGuard;
		IsGuarding = true;
		SpeedMod = 0;
	}
	else
	{
		IsGuarding = false;
		SpeedMod = 1;
	}
}
