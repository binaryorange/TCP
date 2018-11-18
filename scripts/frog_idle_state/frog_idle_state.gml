///frog_idle_state();
// get input
breathing();

// calculate movement

// modify state
if jump_timer < 0 {
	jump_timer = jump_timer_initial;
	
	var _jump = random(1);
	if _jump > jump_chance {
		state = frog_states.JUMP_START;
		image_index = 0;
		image_speed = 1;
	}
} else {
	jump_timer--;
}


// apply movement

// animations
frog_anim();