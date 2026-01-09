// pulse logo
image_xscale = 1 + pulsingAmplitude * sin(pulsingSpeed * frame);
image_yscale = 1 + pulsingAmplitude * sin(pulsingSpeed * frame);

// Increment the frame counter
frame++;
