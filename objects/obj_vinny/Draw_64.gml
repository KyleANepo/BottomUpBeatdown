draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(58,58,314,92,false);
 
draw_set_color(c_maroon);
draw_rectangle(70,70,312,90,false);
 
if(CurrentHP > 0){
 
    draw_rectangle_colour(70,70,20+292*(CurrentHP/MaxHP),90,c_green,c_lime,c_lime,c_green,false);
 
}