//get input
var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
select = keyboard_check_pressed(vk_space);


var _move = _down - _up;
if _move != 0 {
	//move the index
	index += _move;
	
	var _size = array_length_2d(menu, sub_menu);
	if index < 0 index = _size - 1;
	else if index >= _size index = 0;
}
	
if select {
	switch(sub_menu) {
		case 0: //main menu
			switch(index) {
				case 0:
					//Start
					sub_menu = 1;
					index = 0;
				break;
				case 1:
					//Options
				break;
				case 2:
					game_end();
				break;
		
			}
		break;
		case 1: //level select
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
					sub_menu = 0;
					index = 0;
				break;
		
			}
		break;
	}
}