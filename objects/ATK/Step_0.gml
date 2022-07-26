switch (Owner)
{
	case "Player":
		if (OBJ_Player.IsHit == true)
		{
			instance_destroy();
		}
	break;
		
	case "Enemy":
		if (OBJ_Enemy.State == "Hit")
		{
			instance_destroy();
		}
	break;
}