grid = argument0;

with (grid) {
	controller_id = argument1;

	switch(global.level) {
		case 1:
			scr_Animal_Init(animals[0], id, FROG, 4, 10);
			scr_Animal_Init(animals[1], id, FROG, 14, 10);
			scr_Animal_Init(animals[2], id, FROG, 7, 4);
			break;
		
		default:
			break;
	}
}