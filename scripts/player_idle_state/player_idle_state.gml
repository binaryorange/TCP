/// player_idle_state
// get input
get_input();

// calculate movements
calc_movement();

// check state
if hsp != 0 state = states.WALK;

// apply movements
collision();

// apply animations
anim();