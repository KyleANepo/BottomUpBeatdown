switch (room) {
	
	case r_buster:
		Enemy = "Buster"
		break;
		
	case r_vinny:
		audio_stop_all()
		audio_play_sound(SND_BattleBegin, 10, false)
		sprite_index = SPR_TitleVinny;
		break;
	
	case r_pork:
		audio_stop_all()
		audio_play_sound(SND_BattleBegin, 10, false)
		sprite_index = SPR_TitlePork;
		break;
		
	
}