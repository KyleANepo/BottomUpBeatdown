// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_input(){
	input_left_check = keyboard_check(ord("A")) or gamepad_button_check(0,gp_padl) or (gamepad_axis_value(0, gp_axislh) < -.2)
	input_left_pressed = keyboard_check_pressed(ord("A")) or gamepad_button_check_pressed(0,gp_padl)
	input_left_released = keyboard_check_released(ord("A")) or gamepad_button_check_released(0,gp_padl)
	
	input_right_check = keyboard_check(ord("D")) or gamepad_button_check(0,gp_padr) or (gamepad_axis_value(0, gp_axislh) > .2)
	input_right_pressed = keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(0,gp_padr)
	input_right_released = keyboard_check_released(ord("D")) or gamepad_button_check_released(0,gp_padr)
	
	input_up_check = keyboard_check(ord("W")) or gamepad_button_check(0,gp_padu) or (gamepad_axis_value(0, gp_axislv) < -.2)
	input_up_pressed = keyboard_check_pressed(ord("W")) or gamepad_button_check_pressed(0,gp_padu)
	input_up_released = keyboard_check_released(ord("W")) or gamepad_button_check_released(0,gp_padu)
	
	input_down_check = keyboard_check(ord("S")) or gamepad_button_check(0,gp_padd) or (gamepad_axis_value(0, gp_axislv) > .2)
	input_down_pressed = keyboard_check_pressed(ord("S")) or gamepad_button_check_pressed(0,gp_padd)
	input_down_released = keyboard_check_released(ord("S")) or gamepad_button_check_released(0,gp_padd)
	
	input_jump_check = keyboard_check(ord("M")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_face1)
	input_jump_pressed = keyboard_check_pressed(ord("M")) or keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_face1)
	input_jump_released = keyboard_check_released(ord("M")) or keyboard_check_released(vk_down) or gamepad_button_check_released(0,gp_face1)
	
	input_dodge_check = keyboard_check(vk_space) or gamepad_button_check(0,gp_face2)
	input_dodge_pressed = keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0,gp_face2)
	input_dodge_released = keyboard_check_released(vk_space) or gamepad_button_check_released(0,gp_face2)
	
	input_light_check = keyboard_check(ord("J")) or keyboard_check(vk_left) or gamepad_button_check(0,gp_face3)
	input_light_pressed = keyboard_check_pressed(ord("J")) or keyboard_check_pressed(vk_left) or gamepad_button_check_pressed(0,gp_face3)
	input_light_released = keyboard_check_released(ord("J")) or keyboard_check_released(vk_left) or gamepad_button_check_released(0,gp_face3)
	
	input_heavy_check = keyboard_check(ord("K")) or keyboard_check(vk_up) or gamepad_button_check(0,gp_face4)
	input_heavy_pressed = keyboard_check_pressed(ord("K")) or keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_face4)
	input_heavy_released = keyboard_check_released(ord("K")) or keyboard_check_released(vk_up) or gamepad_button_check_released(0,gp_face4)
	
	input_guard_check = keyboard_check(ord("L")) or keyboard_check(vk_right) or gamepad_button_check(0,gp_shoulderr)
	input_guard_pressed = keyboard_check_pressed(ord("L")) or keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_shoulderr)
	input_guard_released = keyboard_check_released(ord("L")) or keyboard_check_released(vk_right) or gamepad_button_check_released(0,gp_shoulderr)
	
	input_start_check = keyboard_check(vk_enter) or gamepad_button_check(0,gp_start)
	input_start_pressed = keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_start)
	input_start_released = keyboard_check_released(vk_enter) or gamepad_button_check_released(0,gp_start)
}