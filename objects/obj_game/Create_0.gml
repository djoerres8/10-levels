// Create or Room Start event

level = 1;
bullets = 0;
spikes = 0;
mines = 0;
walls = 0;
keys = 1;
moving_key = 0;
mouse_wall = 0;
bombs = 1;

wall_color = c_white;

key_collected = false;
door_opened = false;
mouse_wall_broken = false;

new_level = false;

random_set_seed(123); // Just don't use randomize()

if (bullets == 1){
	alarm[0] = 10;
}

if (!audio_is_playing(snd_theme)) {
    audio_play_sound(snd_theme, 0, 1);
}