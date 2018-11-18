/// collision

if hsp == 0 hsp_decimal = 0;
if vsp == 0 vsp_decimal = 0;

// apply carried over decimals
hsp += hsp_decimal;
vsp += vsp_decimal;

// floor decimals
hsp_decimal = frac(hsp);
hsp -= hsp_decimal;
vsp_decimal = frac(vsp);
vsp -= vsp_decimal;

// horizontal collisions

var side;
if hsp > 0 side = bbox_right else side = bbox_left;

var t1 = tilemap_get_at_pixel(global.map, side + hsp, bbox_top);
var t2 = tilemap_get_at_pixel(global.map, side + hsp, bbox_bottom);


if ((t1 != VOID) and (t1 != PLATFORM)) or 
   ((t2 != VOID) and (t2 != PLATFORM)) {
	if hsp > 0 x = x - ( x mod global.tile_size) + global.tile_size - 1 - (side - x);
	else x = x - (x mod global.tile_size) - (side - x);
	hsp = 0;
}
x += hsp;


// vertical collisions
var side;
if vsp > 0 side = bbox_bottom else side = bbox_top;

var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + vsp);
var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + vsp);
var t3 = tilemap_get_at_pixel(global.map, bbox_left, bbox_bottom);
var t4 = tilemap_get_at_pixel(global.map, bbox_right, bbox_bottom);

if ((t1 != VOID and (((vsp > 0 or t1 != PLATFORM) and t3 != PLATFORM) or (t1 = SOLID and t3 = PLATFORM)))) or
   ((t2 != VOID and (((vsp > 0 or t2 != PLATFORM) and t4 != PLATFORM) or (t2 = SOLID and t4 = PLATFORM)))) {
	if vsp > 0 y = y - ( y mod global.tile_size) + global.tile_size - 1 - (side - y);
	else y = y - (y mod global.tile_size) - (side - y);
	vsp = 0;
}
y += vsp;
