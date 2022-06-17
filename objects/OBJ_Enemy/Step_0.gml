if(IsHit==true){
    sprite_index = SPR_EnemyHit;
}else{
    sprite_index = SPR_EnemyIdle;
}

x=clamp(x, 0, room_width);
y=clamp(y, 325, room_height);

if (Knockback < 0) {
	x -= Knockback;
	Knockback -= -2;
} else if (Knockback > 0) {
	x -= Knockback;
	Knockback -= 2;
}

if(OnGround == true){
    GroundY = y;
}
depth = -1*GroundY;
