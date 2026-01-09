/// @description Insert description here
// You can write your code in this editor


time_text = string((obj_time.time div 3600) mod 60) + ":" +
           string((obj_time.time div 60) mod 60) + ":" +
           string( (obj_time.time) mod 60);