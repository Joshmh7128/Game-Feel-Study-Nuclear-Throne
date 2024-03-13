if (count >= 8)
{
	if (play_death) 
	{
		var _player_dist = distance_to_object(obj_player_3)
		var _hearing_dist = _player_dist / max_hear_distance;
		if (_hearing_dist > 1) _hearing_dist = 1;
		
		audio_play_sound(shot_die, 99, false, _hearing_dist, 0-0.3, random_range(0.9, 1.2));
	}
	
	instance_destroy(self);	
}