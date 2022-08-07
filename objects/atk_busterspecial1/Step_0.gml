switch (Owner)
{
	case "Player":
		if (OwnerID.IsHit == true)
		{
			instance_destroy();
		}
	break;
		
	case "Enemy":
		if (OwnerID.State == "Hit")
		{
			instance_destroy();
		}
	break;
}

x = OBJ_Enemy.x;
y = OBJ_Enemy.y;
