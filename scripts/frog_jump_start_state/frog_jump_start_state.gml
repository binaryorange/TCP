///frog_jump_start_state();
// get input

// calculate movement

// modify state
if image_index >= image_number - image_speed {
	state = frog_states.JUMP;
	vsp = jump_spd;
}

// apply movement
collision();

// animations
frog_anim();