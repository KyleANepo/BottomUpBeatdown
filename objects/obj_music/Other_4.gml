
//switch music track for each room

switch (room) {
	case r_menu:
		if !audio_is_playing(SND_MenuMusic)
		{
			audio_play_sound(SND_MenuMusic, 10, true)
		}
		break;
	
	case r_buster:
		audio_play_sound(SND_BattleBegin, 10, false)
		sprite_index = SPR_TitleBuster;
		break;
		
	case r_vinny:
		audio_play_sound(SND_BattleBegin, 10, false)
		sprite_index = SPR_TitleVinny;
		break;
	
	case r_pork:
		audio_play_sound(SND_BattleBegin, 10, false)
		sprite_index = SPR_TitlePork;
		break;
	
	case r_busterwin:
		audio_play_sound(SND_WinMusic, 10, false)
		sprite_index = SPR_Win;
		break;
		
	case r_vinnywin:
		audio_play_sound(SND_WinMusic, 10, false)
		sprite_index = SPR_Win;
		break;
		
	case r_porkwin:
		audio_play_sound(SND_WinMusic, 10, false)
		sprite_index = SPR_Win;
		break;
	
}