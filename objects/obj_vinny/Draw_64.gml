draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(274,18,1350,42,false);
 
draw_set_color(c_maroon);
draw_rectangle(276,20,1348,40,false);
 
if(CurrentHP > 0){
 
    draw_rectangle_colour(276,20,20+1328*(CurrentHP/MaxHP),40,c_green,c_lime,c_lime,c_green,false);
 
}