
if (State = "Hit" && OBJ_Player.IsAttacking == true)
{
	if (random(10) > 5)
	{
		State = "Guard";
		alarm[2] = 60;
	} else
	{
		State = "BDash";
	}
}
