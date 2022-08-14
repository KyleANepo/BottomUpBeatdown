// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_input(){
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
	
	input_guard_check = keyboard_check(ord("L")) or keyboard_check(vk_right) or gamepad_button_check(0,gp_shoulderl)
	input_guard_pressed = keyboard_check_pressed(ord("L")) or keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_shoulderl)
	input_guard_released = keyboard_check_released(ord("L")) or keyboard_check_released(vk_right) or gamepad_button_check_released(0,gp_shoulderl)
}