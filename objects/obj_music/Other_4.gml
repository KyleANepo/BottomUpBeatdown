
//switch music track for each room

switch (room) {
	case r_menu:
		audio_stop_all()
		audio_play_sound(SND_MenuMusic, 10, true)
		break;
	
	case r_buster:
		audio_stop_all()
		audio_play_sound(SND_BattleBegin, 10, false)
		sprite_index = SPR_TitleBuster;
		break;
		
	case r_vinny:
		audio_stop_all()
		audio_play_sound(SND_BattleBegin, 10, false)
		sprite_index = SPR_TitleVinny;
		break;
	
	case r_pork:
		audio_stop_all()
		audio_play_sound(SND_PorkMusic, 10, true)
		break;
		
	
}