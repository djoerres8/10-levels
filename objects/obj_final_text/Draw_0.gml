// Set up font and color
draw_set_color(c_white);
draw_set_font(fnt_time);

// Define wrap width and screen center
var wrap_width = 900;
var screen_center_x = display_get_gui_width() / 2;
var draw_x = screen_center_x - (wrap_width / 2);

// Draw wrapped and centered text lines
draw_text_ext(draw_x, 100, "Congratulations!", -1, wrap_width);
draw_text_ext(draw_x, 150, "You Completed 1 Level!", -1, wrap_width);
draw_text_ext(draw_x, 250, "I bet you feel really amazing right now!", -1, wrap_width);
draw_text_ext(draw_x, 350, "Total Deaths: " + string(obj_death_counter.deaths), -1, wrap_width);
draw_text_ext(draw_x, 400, "Final Time: " + string(time_text), -1, wrap_width);
draw_text_ext(draw_x, 500, "I didn't have time to make a play again button so refresh to try again!", -1, wrap_width);
