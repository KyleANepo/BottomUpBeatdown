x = OBJ_Player.x;
y = OBJ_Player.y;

if (OBJ_Player.IsHit == true || OBJ_Player.OnGround == true)
{
	instance_destroy();
}