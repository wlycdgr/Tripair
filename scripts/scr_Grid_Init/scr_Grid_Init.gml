grid = argument0;

with (grid) {
	controller_id = argument1;

	switch(global.level) {
		case 1:
			animals[0] = inst_404CF1E1;
			animals[1] = inst_1BE19BA7;
			animals[2] = inst_51D60FB6;
			animals[3] = inst_30BEB419;
			scr_Animal_Init(animals[0], id, FROG);
			scr_Animal_Init(animals[1], id, FROG);
			scr_Animal_Init(animals[2], id, CAT);
			scr_Animal_Init(animals[3], id, CAT);
			break;
		
		default:
			break;
	}
}