/// @desc Our Step Event
if vsp > 0 {
	falling = true;
} else {
	falling = false;
}

script_execute(states_array[state]);
