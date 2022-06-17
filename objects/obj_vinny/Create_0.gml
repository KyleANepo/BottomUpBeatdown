//Enemy

Speed = 5;
SpeedMod = 1;

IsHit = false;
Knockback = 0;

MaxHP = 80;
CurrentHP = MaxHP;

OnGround = true;
GroundY = y;

image_speed = .75;

SideMod = 1; //AI variable

flashAlpha = 0;
flashColor = c_white;

State = "Idle";
SightRange = 350; //probably wont need this

//aggro range
Aggressiveness = 0;
AttackRange = sprite_width/2+OBJ_Player.sprite_width/2;