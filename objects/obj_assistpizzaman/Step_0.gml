if (sprite_is_on_frame(5))
{
	OwnerID.CurrentHP += 50
	OwnerID.flashColor = c_green;
	OwnerID.flashAlpha = 1;
	audio_play_sound(SND_Heal,10,false);
}