/// @description Act on menu input
if (keyboard_check_pressed(vk_enter)) {
	if (selected_menu_item == 0) { // "PLAY"
		room_goto_next();
	}
}