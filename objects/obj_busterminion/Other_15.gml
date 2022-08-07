///Move Event
 
if(point_distance(x,y,TargetX,TargetY) >= Speed){
    move_towards_point(TargetX,TargetY,Speed);
}else{
    speed = 0;
}