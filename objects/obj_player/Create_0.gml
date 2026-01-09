hsp = 0;
vsp = 0;
grv = 0.35;
move_spd = 5;
jmp_spd = -9;       // Initial jump velocity
jump_boost = -0.7;      // Continued upward force while holding
max_jump_time = 10; // How long you can hold jump (in frames)
jump_timer = 0;     // Tracks how long you've been jumping
is_jumping = false;
terminal_velocity = 10;

coyote_time = 6;       // Max frames after leaving ground to still jump
coyote_timer = 0;      // Countdown after walking off a ledge


image_speed=0;