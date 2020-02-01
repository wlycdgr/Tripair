animal = argument0;

with(animal) {
	grid_id = argument1;
	type = argument2;
	move_speed = START_SPEED;
	move_direction = NONE;
	
	if (type == FROG) {
		image_index = irandom(43);
	}
	else if (type == CAT) {
		image_index = irandom(5);
	}
}