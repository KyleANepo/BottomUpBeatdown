switch (Owner)
{
	case "Player":
		if (OBJ_Player.IsHit == true)
		{
			instance_destroy();
		}
	break;
		
	case "Enemy":
		if (OBJ_Vinny.State == "Hit")
		{
			instance_destroy();
		}
	break;
}