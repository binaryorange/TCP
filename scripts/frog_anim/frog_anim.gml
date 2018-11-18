/// anim
sprite_index = sprite_array[state];
//mask_index = mask_array[state];

image_xscale = facing;


// switch animations depending on state player is in
switch(state) {
	// jumping animations
	case states.JUMP:
		if vsp < 0 image_index = 0 else image_index = 1;
	break;
}
