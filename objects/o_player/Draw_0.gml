/// @description Insert description here
draw_self();
draw_set_color(c_lime);
draw_text(x-50, bbox_top-15, "GROUNDED = " + string(on_ground()));
draw_set_color(c_white);


//draw_set_alpha(0.3);
//draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_red, c_red, c_red, c_red, false);
//draw_set_alpha(1);