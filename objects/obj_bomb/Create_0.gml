/// @description Insert description here
// You can write your code in this editor
// Starting Y position
start_y = y;

// Amplitude: how far up/down to move (half of 100)
amplitude = 50;

// Speed of oscillation
osc_speed = 0.05; // smaller = slower, try 0.1 for faster

// Time tracker
osc_time = 0;

triggered = false;    // Whether we've touched the player
image_speed = 0.2;    // Adjust speed as needed