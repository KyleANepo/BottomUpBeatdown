
if(CurrentHP > 0 && intro == 0){
	
	//health
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_rectangle(18,18,264,42,false);
 
	draw_set_color(c_maroon);
	draw_rectangle(20,20,262,40,false);
 
    draw_rectangle_colour(20,20,20+242*(CurrentHP/MaxHP),40,c_green,c_lime,c_lime,c_green,false);
	
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_rectangle(18,43,264,67,false);
 
	draw_set_color(c_black);
	draw_rectangle(20,45,262,65,false);

    draw_rectangle_colour(20,45,20+242*(SuperMeter/20),64,c_blue,c_aqua,c_aqua,c_blue,false);
	
}