//breathing
if breath_timer < 0 {
	image_speed = 1;
} else {
	breath_timer--;
}

if image_index >= image_number - image_speed {
	breath_timer = breath_timer_initial;
	image_index = 0;
	image_speed = 0;
}