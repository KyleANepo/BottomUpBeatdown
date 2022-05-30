if(IsHit==true){
    sprite_index = SPR_EnemyHit;
}else{
    sprite_index = SPR_EnemyIdle;
}

if(OnGround == true){
    GroundY = y;
}
depth = -1*GroundY;
