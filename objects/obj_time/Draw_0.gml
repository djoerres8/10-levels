
//draw text
draw_set_color(c_black); // Set text color
draw_set_font(fnt_time);

var tenths     = (time) mod 60;
var seconds    = (time div 60) mod 60;
var minutes    = (time div 3600) mod 60;

var text = string(minutes) + ":" +
           string(seconds) + ":" +
           string(tenths);

draw_text(x, y, text);