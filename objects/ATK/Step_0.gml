

switch (Owner)
{
	case "Player":
		if (OwnerID.IsHit == true)
		{
			instance_destroy();
		}
	break;
		
	case "Enemy":
		x = OwnerID.x;
		y = OwnerID.y;
		if (OwnerID.State == "Hit")
		{
			instance_destroy();
		}
	break;
}

if (sprite_is_on_frame(DMGFrame+1) && hit < 1)
{
	hit = 0	
	audio_play_sound(SND_HitWhiff,10,false)
}


