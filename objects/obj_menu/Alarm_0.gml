// Pick a random edge to spawn from: 0=top, 1=right, 2=bottom, 3=left


var edge = irandom(3);
var spawnX, spawnY, dir;

show_debug_message(edge);

switch (edge) {
    case 0: // top
        spawnX = random_range(0, room_width);
        spawnY = -16;
        //dir = random_range(75, 105); // down-ish
		dir = random_range(255, 285); // up-ish
        break;

    case 1: // right
        spawnX = room_width + 16;
        spawnY = random_range(0, room_height);
        dir = random_range(165, 195); // left-ish
        break;

    case 2: // bottom
        spawnX = random_range(0, room_width);
        spawnY = room_height + 16;
        //dir = random_range(255, 285); // up-ish
		dir = random_range(75, 105); // down-ish
        break;

    case 3: // left
        spawnX = -16;
        spawnY = random_range(0, room_height);
        dir = random_range(-15, 15); // right-ish
        break;
}

var b = instance_create_layer(spawnX, spawnY, "Instances", obj_bullet);
b.direction = dir;
b.speed = 2;

// Reset alarm to fire again in 2 seconds (assuming 60 FPS)
alarm[0] = 8;