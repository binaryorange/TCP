///player_attack_state();
// get input
get_input();

// calculate movements
calc_movement();

// check state
if image_index >= image_number - image_speed {
	if !on_ground() state = states.JUMP else
	if hsp != 0 state = states.WALK else state = states.IDLE;
}

if jump {
	jumped();
	state = states.ATTACK;
}

// enable smaller jumps
if vsp < 0 and !jump_held vsp=  max(vsp, jump_spd/jump_dampener);

// apply movements
collision();

// apply animations
anim();