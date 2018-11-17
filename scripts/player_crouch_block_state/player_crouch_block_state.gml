///player_crouch_block_state();
// get input
get_input();

// calculate movements
calc_movement();

// check state

block_check();

if attack {
	state = states.ATTACK;
	image_index = 0;
}

if jump {
	jumped();
}

// apply movements
collision();

// apply animations
anim();