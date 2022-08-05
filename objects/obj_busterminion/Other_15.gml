///Move Event
 
if(point_distance(x,y,TargetX,TargetY) >= Speed){
    move_towards_point(TargetX,TargetY,Speed);
}else{
    speed = 0;
}

if(point_distance(x,y,TargetX,TargetY) < 200 && ds_list_size(OBJ_Player.EnemyList) < 2 && ds_list_find_index(OBJ_Player.EnemyList,id) == -1){
     
    ds_list_add(OBJ_Player.EnemyList, id);
     
}