//Enemy

Speed = 7;
SpeedMod = 1;

Knockback = 0;

MaxHP = 2000;
CurrentHP = MaxHP;

OnGround = true;
GroundY = y;

image_speed = 1;

SideMod = 1; //AI variable

flashAlpha = 0;
flashColor = c_red;

Phase = 1;
State = "Intro";
face = 1;
alarm[9] = room_speed * 3;

isString = 0; //if move is start of a string
isArmored = false; //if move is armored
isCounter = false;
isRanged = false; //if moves should be ranged/projectiled
guardPoint = 3;

//aggro range
Aggressiveness = 0;
AttackRange = sprite_width/2+OBJ_Player.sprite_width/2;

TargetX = x;
TargetY = y;