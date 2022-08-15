//get input
get_input();

var _up = input_up_pressed;
var _down = input_down_pressed;
var _left = input_left_pressed;
var _right = input_right_pressed;
var _right_held = input_right_check;
var _left_held = input_left_check; 
select = input_jump_pressed or input_dodge_pressed or input_start_pressed;

//holding key down
var _repeat_spd = 8;
var _repeat_delay = 25;

//holding right
if _right time_held_right = _repeat_delay;
if time_held_right > 0 {
	time_held_right--;
	if time_held_right == 0 and _right_held {
		_right = true;
		time_held_right = _repeat_spd;
	}
}
//holding left
if _left time_held_left = _repeat_delay;
if time_held_left > 0 {
	time_held_left--;
	if time_held_left == 0 and _left_held {
		_left = true;
		time_held_left = _repeat_spd;
	}
}

var _move = _down - _up;
var _hmove = _right - _left;
if _move != 0 {
	//move the index
	index += _move;
	
	var _size = array_length(menu[sub_menu]);
	if index < 0 index = _size - 1;
	else if index >= _size index = 0;
}
	
if select or (is_array(menu[sub_menu][index]) and (_hmove != 0)) {
	switch(sub_menu) {
		case MAIN: //main menu
			switch(index) {
				case 0:
					//Start
					sub_menu = LEVEL;
					index = 0;
				break;
				case 1:
					//Options
					sub_menu = SETTINGS;
					index = 0;
				break;
				case 2:
					game_end();
				break;
		
			}
		break;
		case LEVEL: //level select
			switch(index) {
				case 0:
					//Buster
					fadetoroom(r_buster, 10, c_black);
				break;
				case 1:
					//Vinny
					fadetoroom(r_vinny, 10, c_black);
				break;
				case 2:
					//Pork
					fadetoroom(r_pork, 10, c_black);
				break;
				case 3:
					sub_menu = MAIN;
					index = 0;
				break;
		
			}
		break;
		case SETTINGS: //level select
			switch(index) {
				case 0:
					//Sound
					change_menu(_hmove, "sound");
				break;
				case 1:
					//Music
					change_menu(_hmove, "music");
				break;
				case 2:
					//Difficulty
					change_menu(_hmove, "difficulty");
					global.difficulty = global.dsm_settings[? "difficulty"][0];
				break;
				case 3:
					sub_menu = MAIN;
					index = 0;
				break;
		
			}
		break;
	}
}

function change_menu(_move, _key) { 
	//@desc		change the ds map key entry by the move value passed
	//@_move	real	which way to move the selection
	//@_key		string	ds_map key for this selection
	
	//get the allowed limits for this selection
	//get map array
	var _map_arr = set[? _key];
	//get limits array
	var _limits_arr = _map_arr[1];
	
	//is the first entry in the limits an integer?
	if is_real(_limits_arr[0]) { 
		//limits are index position 0 and 1
		var _min = _limits_arr[0];
		var _max = _limits_arr[1];
	} else {
		var _min = 0;
		var _max = array_length(_limits_arr) - 1;
	}
	
	//move selection
	_map_arr[@ 0] = clamp(_move + _map_arr[0], _min, _max);
	
}