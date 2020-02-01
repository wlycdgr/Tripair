/// @description Insert description here
// You can write your code in this editor

draw_sprite(
	spr_title,
	0,
	gui_center_x - (sprite_get_width(spr_title) / 2),
	gui_third_y - (sprite_get_height(spr_title) / 2)
);

for (var i = 0; i < menu_item_count; i++) {
	if (i == selected_menu_item) {
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