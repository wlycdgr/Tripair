animal = argument0;

with(animal) {
	grid_id = argument1;
	type = argument2;
	
	switch(type) {
		case FROG:
			sprite_index = spr_Frog;
			break;
		
		default:
			break;
	}
	
	col = argument3;
	row = argument4;
	x = grid_id.x + (grid_id.cell_width * col) + (grid_id.cell_width / 2);
	y = grid_id.y + (grid_id.cell_height * row) + (grid_id.cell_height / 2);
	
	move_speed = START_SPEED;
	move_direction = choose(RIGHT, DOWN, LEFT, UP);
}