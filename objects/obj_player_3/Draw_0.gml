// if we're not dashing, draw ourselves normally
if (!is_dashing)
{
	// draw our sprites based on our movement inupts
	if (abs(_move_x) > 0 || abs(_move_y) > 0)
	{
		sprite_index = player_run_strip6;	
	} else
	{
		sprite_index = player_idle_strip4;	
	}

	// if we are hurt, flash our hurt sprite
	if (flashtime > 0)
	{
		sprite_index = player_run_hurt;
		flashtime--;
	}

	// flip the image if we need to
	if (_move_x > 0)
		image_xscale = 1;

	if (_move_x < 0)
		image_xscale = -1;
	
	draw_self();
}

// if we are dashing draw ourselves rotating
if (is_dashing)
{
	// draw the sprite at our position at our rotation
	draw_sprite_ext(player_idle_strip4, image_index, x, y, 1, 1, dash_draw_rot, c_white, 1);
}


