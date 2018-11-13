/// player_idle_state
// get input
get_input();

// calculate movements
calc_movement();

// check state
if hsp != 0 state = states.WALK;

if attack {
	state = states.ATTACK;
	image_index = 0;
}

if jump {
	jumped();
}

if block {
	state = states.BLOCK;
	hsp = 0;
}

// apply movements
collision();

// apply animations
anim();