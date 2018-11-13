///player_block_state();

/// player_walk_state
// get input
get_input();

// calculate movements
calc_movement();

// check state
if attack {
	state = states.ATTACK;
	image_index = 0;
}

if block {
	hsp = 0;
} else {
	if hsp != 0 {
		if !on_ground() state = states.JUMP else state = states.WALK;
	} else {
		state = states.IDLE;
	}
}

if jump {
	state = states.JUMP;
	vsp = jump_spd;
}


// apply movements
collision();

// apply animations
anim();