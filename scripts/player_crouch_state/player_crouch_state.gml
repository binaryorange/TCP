///player_crouch_state();
// get input
get_input();

// calculate movements
calc_movement();

// check state
if attack {
	state = states.ATTACK;
	image_index = 0;
}

if jump {
	jumped();
}

block_check();

// apply movements
collision();

// apply animations
anim();