if (intro == 0)
{
AttackType = "";
ButtonCombo = "";
 
if(keyboard_check(vk_numpad4) || keyboard_check(ord("J")) || keyboard_check(vk_left)){
	ButtonCombo += "+LAtk";
}

if(keyboard_check(vk_numpad5) || keyboard_check(ord("K")) || keyboard_check(vk_up)){
    ButtonCombo += "+SAtk";
}

//Blocking
if(IsHit == false && CurrentHP > 0 && OnGround == true && IsAttacking == false && IsParrying == false){
	if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("L"))){
		sprite_index = SPR_SteaksParry;
		image_index = 0;
		IsParrying = true;
		IsGuarding = true;
		SpeedMod = 0;
	}
}

//Dodging
if(IsHit == false && CurrentHP > 0 && OnGround == true && IsAttacking == false && IsParrying == false && IsGuarding == false && sprite_index != SPR_SteaksDodge){
	if (keyboard_check(vk_space)){
		IsDodging = true;
		audio_play_sound(SND_Dodge,10,false)
		sprite_index = SPR_SteaksDodge;
		image_index = 0;
		Knockback -= 22*sign(image_xscale);
	}
}


ds_list_add(CommandList, string_delete(ButtonCombo,1,1));
alarm[0] = 20;

while(ds_list_size(CommandList) > 4){
    ds_list_delete(CommandList, 0);
}

//XXXY
//XXY
//XY
//XXX
//XX
//X
//Y

ButtonCombo = string_delete(ButtonCombo,1,1);

if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "SAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-2) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-3) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-4) == "LAtk"){
    AttackType = "XXXY";
	ds_list_clear(CommandList);
} else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "SAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-2) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-3) == "LAtk"){
    AttackType = "XXY";
	ds_list_clear(CommandList);
} else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "SAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-2) == "LAtk"){
    AttackType = "XY";
	ds_list_clear(CommandList);
}else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-2) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-3) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-4) == "LAtk"){
    ds_list_clear(CommandList);
}else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-2) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-3) == "LAtk"){
    AttackType = "XXX";
}else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "LAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-2) == "LAtk"){
    AttackType = "XX";
}else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "LAtk"){
    AttackType = "X";
}else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "SAtk"){
    AttackType = "Y";
}else if(ButtonCombo == "LAtk+SAtk"){
    AttackType = "Super1";
}

if(OnGround == true && IsGuarding == false && IsParrying == false){
    event_user(2);
}

if(OnGround == false && IsHit == false)
{
	event_user(3);
}
}