//Enemy

Speed = 5;
SpeedMod = 1;

Knockback = 0;

MaxHP = 80;
CurrentHP = MaxHP;

OnGround = true;
GroundY = y;

image_speed = 1;

SideMod = 1; //AI variable

flashAlpha = 0;
flashColor = c_red;

State = "Idle";
isString = 0;
face = 1;

//aggro range
Aggressiveness = 0;
AttackRange = sprite_width/2+OBJ_Player.sprite_width/2;

TargetX = x;
TargetY = y;