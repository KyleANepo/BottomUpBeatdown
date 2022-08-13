///FindTarget

if(point_distance(TargetX,TargetY,OBJ_Player.x,OBJ_Player.GroundY) > AttackRange || point_distance(TargetX,TargetY,OBJ_Player.x,OBJ_Player.GroundY) < 50 || abs(TargetY-OBJ_Player.GroundY) > LayerSize || sign(TargetX-OBJ_Player.x) != sign(SideMod)){
    TargetX = random_range(OBJ_Player.x+100*SideMod, OBJ_Player.x+100*SideMod);
    TargetY = OBJ_Player.GroundY;
}