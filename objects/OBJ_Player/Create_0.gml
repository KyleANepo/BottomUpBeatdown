//Create Player
Speed = 5.5; //movement speed
SpeedMod = 1;
XSpeed = 0;
YSpeed = 0;
JumpSpeed = 10;
image_xscale = 2;
image_yscale = 2;

IsAttacking = false; //stops from moving if attacking, also prevents combos from being canceled prematurely
IsHit = false; //stops from moving if getting hit
IsJumping = false; //detects whether jump is manually pressed
IsParrying = false; //detects if in parry state
IsSlip = false;
IsGuarding = false; //negates damage, stops movement
AttackType = 0; //id of attack

MaxHP = 100;
CurrentHP = MaxHP;
MaxStamina = 100;
CurrentStamina = MaxStamina;

flashAlpha = 0;
flashColor = c_blue;

Knockback = 0;

OnGround = true;
GroundY = y;

image_speed = 1;

CommandList = ds_list_create();
