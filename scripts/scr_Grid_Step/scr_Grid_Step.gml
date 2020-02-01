grid = argument0;

with (grid) {
	if (keyboard_check_pressed(vk_right)) {
		selected_animal = (selected_animal + 1) % animal_count;
	}
	if (keyboard_check_pressed(vk_left)) {
		selected_animal = (animal_count + (selected_animal - 1)) % animal_count;
	}
	
	var animal = animals[selected_animal];
	
	if (keyboard_check_pressed(ord("W"))) {
		if (animal.move_direction == UP) {
			animal.move_speed += SPEED_INCREMENT;
		}
		else {
			animal.move_direction = UP;
			animal.move_speed = SPEED_INCREMENT;
			animal.sprite_index = animal.sprite_walkUp;
		}
	}
	
	if (keyboard_check_pressed(ord("A"))) {
		if (animal.move_direction == LEFT) {
			animal.move_speed += SPEED_INCREMENT;
		}
		else {
			animal.move_direction = LEFT;
			animal.move_speed = SPEED_INCREMENT;
			animal.sprite_index = animal.sprite_walkLeft;
		}
	}
	
	if (keyboard_check_pressed(ord("S"))) {
		if (animal.move_direction == DOWN) {
			animal.move_speed += SPEED_INCREMENT;
		}
		else {
			animal.move_direction = DOWN;
			animal.move_speed = SPEED_INCREMENT;
			animal.sprite_index = animal.sprite_walkDown;
		}
	}
	
	if (keyboard_check_pressed(ord("D"))) {
		if (animal.move_direction == RIGHT) {
			animal.move_speed += SPEED_INCREMENT;
		}
		else {
			animal.move_direction = RIGHT;
			animal.move_speed = SPEED_INCREMENT;
			animal.sprite_index = animal.sprite_walkRight;
		}
	}
	
	animal.move_speed = min(animal.move_speed, MAX_SPEED);
	
	for (var i = 0; i < animal_count; i++) {
		var animal = animals[i];
		var prev_x = animal.x;
		var prev_y = animal.y;
		
		var new_x = prev_x;
		if (animal.move_direction == RIGHT) {
			new_x += animal.move_speed;
		}
		else if (animal.move_direction == LEFT) {
			new_x -= animal.move_speed;
		}
		
		var new_y = prev_y;
		if (animal.move_direction == DOWN) {
			new_y += animal.move_speed;
		}
		else if (animal.move_direction == UP) {
			new_y -= animal.move_speed;
		}
		
		animal.x = new_x;
		animal.y = new_y;
	}
}		