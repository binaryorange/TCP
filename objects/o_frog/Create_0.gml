/// @description At start
//movement
hsp = 0;
max_hsp_initial = 2;
max_hsp = max_hsp_initial;
vsp = 0;
spd = 2;
jump_spd = -6;
hsp_decimal = 0;
vsp_decimal = 0;
facing = choose(-1, 1);

// breathing
breath_timer_initial = random_range(room_speed * 1.75, room_speed * 2.25);
breath_timer = breath_timer_initial;
image_speed = 0;

//jumping
jump_chance = 0.5;
jump_timer_initial = random_range(room_speed, room_speed * 1.5);
jump_timer = jump_timer_initial;


// states
enum frog_states {
	IDLE,
	JUMP_START,
	JUMP,
	JUMP_LAND
}

state = frog_states.IDLE;

// states array
states_array[frog_states.IDLE]			= frog_idle_state;
states_array[frog_states.JUMP_START]	= frog_jump_start_state;
states_array[frog_states.JUMP]			= frog_jump_state;
states_array[frog_states.JUMP_LAND]		= frog_land_state;

// sprite array
sprite_array[frog_states.IDLE]			= s_frog_idle;
sprite_array[frog_states.JUMP_START]	= s_frog_jump_start;
sprite_array[frog_states.JUMP]			= s_frog_jump;
sprite_array[frog_states.JUMP_LAND]		= s_frog_jump_land;
