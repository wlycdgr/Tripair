/// @description Set defaults
cell_width = 16;
cell_height = 16;

total_width = 576; // 640 - 2 * (2 * cell_width);
total_height = 328; // 360 - (2 * cell_height);

cols = total_width / cell_width;
rows = total_height / cell_height;

x = (room_width / 2) - (total_width / 2);
y = (room_height / 2) - (total_height / 2);
right_x = x + total_width;
bottom_y = y + total_height;

animal_count = 2;
selected_animal = 0;
