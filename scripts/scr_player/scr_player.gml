
function death(){
	audio_play_sound(snd_death, 0, 0);
	sprite_index = spr_player_death;
	image_speed = 1;
	instance_create_layer(x, y, "Instances_player", obj_player_ghost);
	obj_death_counter.deaths++;
	load_level();
}


function respawn(){
	
	x = 64;
	y = 150;
	hsp = 0;
	vsp = 0;
	sprite_index = spr_player;
	//room_restart();
	instance_destroy(obj_bullet);
	
}