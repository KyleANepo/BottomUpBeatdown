
//shadow

draw_set_alpha(.6);
draw_set_color(c_dkgray);
draw_ellipse(x-40,GroundY-8,x+40,GroundY+8,false);

//draw shadow	
draw_set_alpha(1);
draw_self();
