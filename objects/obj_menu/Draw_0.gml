/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_font(F_Menu);

//line spacing
var _gap = 40;

//draw items
for (var i = 0; i < array_length(menu[sub_menu]); ++i) {
	draw_set_color(c_white);
	if i == index draw_set_color(c_teal);
	
	//is this selectable menu item, or plaintext?
	if is_array(menu[sub_menu][i]) {
		//store menu array
		var _menu_arr = menu[sub_menu][i];
		
		//get map array
		var _map_arr = set[? _menu_arr[1]];
		
		//get the limit array, or choices array
		var _limits_arr = _map_arr[1];
		
		//do we show an integer or text?
		if is_real(_limits_arr[0]) {
			//integer
			var _str = _menu_arr[0] + string(_map_arr[0]);
		} else {
			//string
			var _str = _menu_arr[0] + _limits_arr[_map_arr[0]];
		}	
	} else {
		//draw string
		var _str = menu[sub_menu][i];
	}
	
	draw_text(room_width/2, room_height * .4 + _gap * i, _str);
}
