get_input()

if (input_start_pressed)
{
	if (room != r_menu)
	{
		sprite_index = 0;
		fadetoroom(r_menu, 30, c_white);
	}
}