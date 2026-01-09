/// @description Insert description here
// You can write your code in this editor
osc_time += osc_speed;
y = start_y + sin(osc_time) * amplitude;



if (!triggered) {
    // Loop between frame 1 and 2 (GameMaker frames are 0-indexed, so 0 and 1)
    if (image_index >= 2) {
        image_index = 0;
    }
}

