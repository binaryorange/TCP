///frog_jump_land_state();

// modify state
if image_index >= image_number - image_speed {
	state = frog_states.IDLE;
	image_index = 0;
	image_speed = 0;
}

// apply movement
collision();

// animations
frog_anim();