/// @description Insert description here
draw_self();
//draw_text(bbox_right+15, bbox_top-15, "HSP " + string(hsp) + " / State = " + string(state));
draw_set_alpha(0.3);
draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_red, c_red, c_red, c_red, false);
draw_set_alpha(1);