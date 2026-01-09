
if(sprite_index == spr_player && obj_game.bombs == 1){
	death();
	other.triggered = true;
	other.image_index = 2;
}