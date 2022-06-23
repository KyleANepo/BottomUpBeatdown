///FindTarget
 
if(point_distance(TargetX,TargetY,OBJ_Player.x,OBJ_Player.y) > AttackRange || point_distance(TargetX,TargetY,OBJ_Player.x,OBJ_Player.y) < 50 || abs(TargetY-OBJ_Player.y) > LayerSize || sign(TargetX-OBJ_Player.x) != sign(SideMod)){
    TargetX = random_range(OBJ_Player.x+150*SideMod, OBJ_Player.x+180*SideMod);
    TargetY = random_range(OBJ_Player.y-10, OBJ_Player.y+10);
}