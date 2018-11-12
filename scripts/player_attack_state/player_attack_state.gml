///player_attack_state();
// get input
get_input();

// calculate movements
calc_movement();

// check state
if image_index >= image_number - image_speed {
	if hsp != 0 state = states.WALK else state = states.IDLE;
}
// apply movements
collision();

// apply animations
anim();