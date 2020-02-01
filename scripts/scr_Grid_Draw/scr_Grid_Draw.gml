grid = argument0;

with(grid) {
	draw_set_color(c_black);
	draw_set_alpha(0.2);

	//// draw verticcal grid lines
	//for (var i = 0; i <= cols; i++) {
	//	var this_x = x + (i * cell_width);
	//	draw_line(this_x, y, this_x, bottom_y);
	//}

	//// draw horizontal grid lines
	//for (var i = 0; i <= rows; i++) {
	//	var this_y = y + (i * cell_height);
	//	draw_line(x, this_y, right_x, this_y);
	//}
	
	draw_set_alpha(1.0);

	for (var i = 0; i < animal_count; i++) {
		if (selected_animal == i) {
			scr_Animal_DrawSelectionBox(animals[i]);
		}
		scr_Animal_DrawSprite(animals[i]);
	}
}