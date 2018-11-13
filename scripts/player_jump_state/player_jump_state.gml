///player_jump_state();
/// player_walk_state
// get input
get_input();

// calculate movements
calc_movement();

// check state
if on_ground() {
	if hsp != 0 state = states.WALK else state = states.IDLE;
}

if attack {
	state = states.ATTACK;
	image_index = 0;
}

// apply movements
collision();

// apply animations
anim();