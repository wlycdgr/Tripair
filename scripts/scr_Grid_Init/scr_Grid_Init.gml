grid = argument0;

with (grid) {
	controller_id = argument1;

	switch(global.level) {
		case 1:
			animals[0] = inst_404CF1E1;
			animals[1] = inst_1BE19BA7;
			scr_Animal_Init(animals[0], id);
			scr_Animal_Init(animals[1], id);
			break;
		
		default:
			break;
	}
}