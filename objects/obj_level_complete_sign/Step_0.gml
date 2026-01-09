/// @description Insert description here
// You can write your code in this editor



if (verticalSpd > -15 && notStop == 0){
	y-=verticalSpd;
	verticalSpd-=grav;
	alarm[1] = 60;
}
	
if (notStop){
	y-=verticalSpd;
	verticalSpd-=grav;
}

if (y > 1500){
	instance_destroy();	
}



//image_angle += rotationSpd;