/// @description Act on menu input

// HANDLE SELECT ACTIOn
if (keyboard_check_pressed(vk_enter)) {
	if (!in_level_select_menu) {
		if (menu_selected_item == 0) { // "PLAY"
			room_goto_next(); // start from level 1
		}
		else if (menu_selected_item == 1) { // "LEVEL SELECT"
			in_level_select_menu = true;
		}
		else if (menu_selected_item == 2) { // "QUIT"
			game_end();
		}
	}
	else if (in_level_select_menu) {
		if (level_select_menu_selected_item == 0) { // "[LEVEL ICONS]"
			switch(level_select_menu_selected_level) {
				case 0:
					room_goto(r_Level1);
					break;
				case 1:
					room_goto(r_Level1);
					break;
				case 2:
					room_goto(r_Level1);
					break;
			}
		}
		else if (level_select_menu_selected_item == 1) { // "RESET PROGRESS"
			global.level1_locked = false;
			global.level2_locked = true;
			global.level3_locked = true;
		}
		else if (level_select_menu_selected_item == 2) { // "BACK"
			in_level_select_menu = false;
		}
	}
}

// HANDLE SCROLL DOWN ACTION
if (keyboard_check_pressed(vk_down)) {
	if (!in_level_select_menu) {
		menu_selected_item = (menu_selected_item + 1) % menu_item_count;
	}
	else if (in_level_select_menu) {
		level_select_menu_selected_item =
			(level_select_menu_selected_item + 1) % level_select_menu_item_count;
	}
}

// HANDLE SCROLL UP ACTION
if (keyboard_check_pressed(vk_up)) {
	if (!in_level_select_menu) {
		menu_selected_item = (menu_item_count + (menu_selected_item - 1)) % menu_item_count;
	}
	else if (in_level_select_menu) {
			level_select_menu_selected_item =
				(level_select_menu_item_count + (level_select_menu_selected_item - 1)) % menu_item_count;
	}
}

// HANDLE SCROLL LEFT ACTION
// TODO

// HANDDLE SCROLL RIGHT ACTION
// TODO