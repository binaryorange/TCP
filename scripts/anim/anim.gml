/// anim
sprite_index = sprites_array[state];
image_xscale = facing;


// switch animations depending on state player is in
switch(state) {
	// jumping animations
	case states.JUMP:
		if vsp < 0 image_index = 0 else image_index = 1;
	break;
	
	// attack animations
	case states.ATTACK:
		if !on_ground() {
			sprite_index = s_player_air_attack;
		} else {
			if hsp != 0 sprite_index = s_player_attack_walk;
			else sprite_index = s_player_attack;
		}
}
