/// frog_anim
sprite_index = sprite_array[state];
//mask_index = mask_array[state];

image_xscale = facing;


// switch animations depending on state player is in
switch(state) {
	// jumping animations
	case frog_states.JUMP:
		if image_index >= 2 {
			if vsp < 0 image_index = 2 else image_index = 3;
		}
	break;
}
