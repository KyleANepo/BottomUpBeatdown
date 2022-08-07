/// @description Insert description here
// You can write your code in this editor
#macro view view_camera[0]
camera_set_view_size(view,view_width,view_height);

if(instance_exists(OBJ_Player))
{
	var _x = clamp(OBJ_Player.x-view_width/2,0,room_width-view_width); 
	var _y = clamp(OBJ_Player.y-view_height/2,0,room_height-view_height);
	camera_set_view_pos(view,_x,_y);
	
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	var _spd = .1;
	camera_set_view_pos(view,
						lerp(_cur_x,_x,_spd),
						lerp(_cur_y,_y,_spd));
}