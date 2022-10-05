x = OwnerID.x;
y = OwnerID.y;

if (OwnerID.IsHit == true || OwnerID.OnGround == true)
{
	instance_destroy();
}