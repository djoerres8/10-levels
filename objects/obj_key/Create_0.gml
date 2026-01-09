base_y = y;          // Remember starting position
bob_timer = 0;       // Timer for animation

if (obj_game.moving_key){
	path_start(pth_key_1, 3, path_action_continue, 1);
}