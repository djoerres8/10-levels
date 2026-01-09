
if (sprite_index == spr_player_death){
	
	
	
}else{
	

	// Horizontal input
	hsp = 0;
	if (keyboard_check(ord("A"))) hsp = -move_spd;
	if (keyboard_check(ord("D"))) hsp = move_spd;

	// Flip sprite
	if (hsp != 0) image_xscale = sign(hsp);

	// --- Jumping Logic ---
	
	// Check if player is on the ground
	if (place_meeting(x, y + 1, obj_solid)) {
	    coyote_timer = coyote_time; // Reset timer if grounded
	} else {
	    coyote_timer -= 1; // Count down while in air
	}

	// Start jump
	if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"))) {
	    if (coyote_timer > 0) {
			coyote_timer = 0; // Prevent double-jumping from coyote buffer
	        vsp = jmp_spd;
	        is_jumping = true;
	        jump_timer = 0;
			// Play the jump sound
			audio_play_sound(snd_jump, 0, false);
			audio_sound_pitch(snd_jump, 1); // Reset pitch at the start
	    }
	}

	// Continue jump while holding button
	if (is_jumping && keyboard_check(vk_space) || keyboard_check(ord("W"))) {
	    if (jump_timer < max_jump_time) {
	        vsp += jump_boost; // more upward push
	        jump_timer += 1;
			
			// Stretch the sound by reducing pitch as jump is held longer
	        var pitch = 1 - (jump_timer / max_jump_time) * 0.2; // Pitch decreases from 1.0 to 0.5
	        audio_sound_pitch(snd_jump, pitch);
		
	    } else {
	        is_jumping = false;
	    }
	}

	// Stop jump early if player releases the button
	if (keyboard_check_released(vk_space)  || keyboard_check_released(ord("W"))) {
		if (vsp < -4) vsp = -4; // Cap upward speed to shorten jump
	    is_jumping = false;
	}

	// Apply gravity and check terminal_velocity
	if (vsp < terminal_velocity){
		vsp += grv;
	}

	// Horizontal collision
	if (place_meeting(x + hsp, y, obj_solid)) {
	    while (!place_meeting(x + sign(hsp), y, obj_solid)) x += sign(hsp);
	    hsp = 0;
	}
	x += hsp;

	// Vertical collision
	if (place_meeting(x, y + vsp, obj_solid)) {
	    while (!place_meeting(x, y + sign(vsp), obj_solid)) y += sign(vsp);
	    vsp = 0;
	    //is_jumping = false; // reset jump when you land
	}
	y += vsp;

}