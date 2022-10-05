///FindTarget

if(point_distance(TargetX,TargetY,Target.x,Target.GroundY) > AttackRange || point_distance(TargetX,TargetY,Target.x,Target.GroundY) < 50 || abs(TargetY-Target.GroundY) > LayerSize || sign(TargetX-Target.x) != sign(SideMod)){
    TargetX = random_range(Target.x+100*SideMod, Target.x+100*SideMod);
    TargetY = Target.GroundY;
}