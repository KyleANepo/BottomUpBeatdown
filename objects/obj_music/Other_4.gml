
//switch music track for each room

switch (room) {
	case r_menu:
		audio_stop_all()
		audio_play_sound(SND_MenuMusic, 10, true)
		break;
	
	case r_buster:
		audio_stop_all()
		audio_play_sound(SND_BusterMusic, 10, true)
		break;
		
	case r_vinny:
		audio_stop_all()
		audio_play_sound(SND_VinnyMusic, 10, true)
		break;
	
}