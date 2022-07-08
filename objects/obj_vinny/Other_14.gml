///FindTarget

if(point_distance(TargetX,TargetY,OBJ_Player.x,OBJ_Player.GroundY) > AttackRange || point_distance(TargetX,TargetY,OBJ_Player.x,OBJ_Player.GroundY) < 50 || abs(TargetY-OBJ_Player.GroundY) > LayerSize || sign(TargetX-OBJ_Player.x) != sign(SideMod)){
    TargetX = random_range(OBJ_Player.x+170*SideMod, OBJ_Player.x+180*SideMod);
    TargetY = random_range(OBJ_Player.GroundY-10, OBJ_Player.GroundY+10);
}