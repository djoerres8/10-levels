// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_level(){
	show_debug_message("level complete");
	
	switch(obj_game.level){
		case 2:
			level2();
			break;
		case 3:
			level3();
			break;
		case 4:
			level4();
			break;
		case 5:
			level5();
			break;
		//case 6:
		//	level6();
		//	break;
		//case 7:
		//	leve7();
		//	break;
		//case 8:
		//	leve8();
		//	break;
		//case 9:
		//	level9();
		//	break;
		//case 10:
		//	level10();
		//	break;
		//case 11:
		//	level11();
		//	break;
		//case 12:
		//	level12();
		//	break;
		default: 
			room_goto(rm_won);
		
	}
}



function level2(){
	obj_game.spikes = 1;
	obj_game.wall_color = c_blue;
	key_door(608, 384);
	signage("Watch out for spikes.");
}

function level3(){
	obj_game.wall_color = c_red;
	key_door(608, 384);
	mouse_door(1120, 672);
	signage("Time to get Clicky.")
}

function level4(){
	obj_game.wall_color = c_green;
	obj_game.alarm[0] = 10; // start bullets
	key_door(608, 384);
	mouse_door(1120, 672);
	signage("Now the main menu makes sense right?");
}

function level5(){
	obj_game.wall_color = c_yellow;
	obj_game.moving_key = 1;
	key_door(608, 384);
	mouse_door(1120, 672);
	signage("Hey, come back here key!");
	
}

function level6(){
	instance_create_layer(1120, 672, "obsticles", obj_mouse_wall);
	instance_create_layer(608, 384, "obsticles", obj_key);
	instance_create_layer(1088, 672, "obsticles", obj_door);
}

function level7(){
	instance_create_layer(1120, 672, "obsticles", obj_mouse_wall);
	instance_create_layer(608, 384, "obsticles", obj_key);
	instance_create_layer(1088, 672, "obsticles", obj_door);
}

function level8(){
	instance_create_layer(1120, 672, "obsticles", obj_mouse_wall);
	instance_create_layer(608, 384, "obsticles", obj_key);
	instance_create_layer(1088, 672, "obsticles", obj_door);
}

function level9(){
	instance_create_layer(1120, 672, "obsticles", obj_mouse_wall);
	instance_create_layer(608, 384, "obsticles", obj_key);
	instance_create_layer(1088, 672, "obsticles", obj_door);
}

function level10(){
	instance_create_layer(1120, 672, "obsticles", obj_mouse_wall);
	instance_create_layer(608, 384, "obsticles", obj_key);
	instance_create_layer(1088, 672, "obsticles", obj_door);
}

function level11(){
	instance_create_layer(1120, 672, "obsticles", obj_mouse_wall);
	instance_create_layer(608, 384, "obsticles", obj_key);
	instance_create_layer(1088, 672, "obsticles", obj_door);
}

function level12(){
	instance_create_layer(1120, 672, "obsticles", obj_mouse_wall);
	instance_create_layer(608, 384, "obsticles", obj_key);
	instance_create_layer(1088, 672, "obsticles", obj_door);
}

function key_door(xx, yy){
	if (obj_game.key_collected || obj_game.new_level) {
		instance_create_layer(xx, yy, "obsticles", obj_key);
		obj_game.key_collected = false;
	}
	if (obj_game.door_opened || obj_game.new_level){
		instance_create_layer(1088, 672, "obsticles", obj_door);
		obj_game.door_opened = false;
	}
}

function signage(text){
	if (obj_game.new_level){
		obj_game.new_level = false;
		var sign1 = instance_create_layer(224, 1056, "Instances_bullets", obj_level_complete_sign);
		sign1.text = text;
	}
}

function mouse_door(xx, yy){
	instance_destroy(obj_mouse_wall);
	instance_create_layer(xx, yy, "obsticles", obj_mouse_wall);	
}