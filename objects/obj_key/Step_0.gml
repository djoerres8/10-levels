bob_timer += 0.07;  // Controls speed of bobbing (adjust if needed)
y = base_y + sin(bob_timer) * 3;  // 3 = bob height (amplitude)