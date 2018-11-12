/// @desc When Player Enters Room

// Speeds
hsp = 0;
vsp = 0;
max_hsp = 2;
walk_spd = 1.5;

// Friction
drag = .12;

// Facing Directions
facing = 1;

// movement
left = 0;
right = 0;
up = 0;
down = 0;

// states
enum states {
	IDLE, 
	WALK
}

state = states.IDLE;


