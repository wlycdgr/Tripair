animal = argument0;

with (animal) {
	draw_set_color(c_orange);
	draw_set_alpha(0.5);
	draw_rectangle(x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2, false);
	draw_set_alpha(1.0);
}