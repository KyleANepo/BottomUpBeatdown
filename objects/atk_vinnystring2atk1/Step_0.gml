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

if ((image_index == DMGFrame || image_index == DMGFrame+3 || image_index == DMGFrame+6) && hit < 1)
{
	hit = 0	
	audio_play_sound(SND_HitWhiff,10,false)
}