/// @description Insert description here
// You can write your code in this editor

gui_center_x = display_get_gui_width() / 2;
gui_third_y = display_get_gui_height() / 3;

in_level_select_menu = false;

menu_item_count = 3;
menu_selected_item = 0;
menu_items[0] = "PLAY";
menu_items[1] = "LEVEL SELECT";
menu_items[2] = "QUIT";
menu_y = 2 * (display_get_gui_height() / 3);

level_select_menu_level_count = 3;
level_select_menu_selected_level = 0;
level_select_menu_item_count = 3;
level_select_menu_selected_item = 0;
level_select_menu_items[0] = "[LEVEL ICONS]";
level_select_menu_items[1] = "RESET PROGRESS";
level_select_menu_items[2] = "BACK";
