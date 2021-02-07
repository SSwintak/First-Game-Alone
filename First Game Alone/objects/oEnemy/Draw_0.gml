if (flash)
{
	if (image_index >= 1) flash = false;
	shader_set(shRed);
}

draw_self();
shader_reset();