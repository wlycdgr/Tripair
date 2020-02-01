/// @description Insert description here
// You can write your code in this editor

draw_sprite(
	spr_title,
	0,
	gui_center_x - (sprite_get_width(spr_title) / 2),
	gui_third_y - (sprite_get_height(spr_title) / 2)
);


if (!in_level_select_menu) {
	for (var i = 0; i < menu_item_count; i++) {
		if (i == menu_selected_item) {
			draw_set_color(c_orange);
		}
		else {
			draw_set_color(c_gray);
		}
	
		var prev_font = draw_get_font();
		draw_set_font(f_Menu);
		draw_text(
			gui_center_x - (string_width(menu_items[i]) / 2),
			menu_y + 64 * i,
			menu_items[i]
		);
		draw_set_font(prev_font);
	}
}
else if (in_level_select_menu) {
	for (var i = 0; i < level_select_menu_item_count; i++) {
		if (i == level_select_menu_selected_item) {
			draw_set_color(c_orange);
		}
		else {
			draw_set_color(c_gray);
		}
		
		if (i == 0) { // level icons
			for (var j = 0; j < level_select_menu_level_count; j++) {
				draw_rectangle(300 + 64 * j, menu_y + 64 * i, 300 + 48 + 64 * j, menu_y + 48 + 64 * i, false);
				
				if (j == 0) {
					var prev_color = draw_get_color();
					draw_set_color(c_aqua);
					draw_rectangle(300 + 64 * j, menu_y + 64 * i, 300 + 48 + 64 * j, menu_y + 48 + 64 * i, false);
					draw_set_color(prev_color);
				}
			}

		}
		else {
			var prev_font = draw_get_font();
			draw_set_font(f_Menu);
			draw_text(
				gui_center_x - (string_width(level_select_menu_items[i]) / 2),
				menu_y + 64 * i,
				level_select_menu_items[i]
			);
			draw_set_font(prev_font);
		}
	}
}
			