// move vector
if (knockbacktime == 0)
{
	_move_x = 0;
	_move_y = 0;
	
	// movement
	if (keyboard_check(ord("W")))
		_move_y = -1 * move_speed;
	if (keyboard_check(ord("S")))
		_move_y = 1 * move_speed;
	if (keyboard_check(ord("A")))
		_move_x = -1 * move_speed;
	if (keyboard_check(ord("D")))
		_move_x = 1 * move_speed;
		
	// our movement cannot be 0 if we're dashing!
	if (is_dashing)
	{
		
		_move_x = last_move_x;
		_move_y = last_move_y;
	}
		
		
	last_move_x = _move_x;
	last_move_y = _move_y;
		
	// multiply by our dash
	_move_x *= c_dash_multiplier;
	_move_y *= c_dash_multiplier;
}
	
if (keyboard_check_pressed(vk_space))
{
	is_dashing = true;
	alarm_set(0, 45);
}

if (is_dashing)
{
	// set the multiplier
	c_dash_multiplier = dash_multiplier;
	
	// rotation set
	if (dash_draw_rot < 360)
	{
		dash_draw_rot = dash_draw_rot + dash_draw_rot_rate;	
	} else
	{
		dash_draw_rot = 0;
	}
}
	

if (!is_dashing)
{
	// set the multiplier
	c_dash_multiplier = 1;
}
	
if (check_free(_move_x + knock_move_x, _move_y + knock_move_y))
{
	// application of movement
	x += _move_x + knock_move_x;
	y += _move_y + knock_move_y;
}

// reduce our knockback time
if (knockbacktime > 0)
	knockbacktime--;

	knockbacktime = 0;
	
// slow our knockback x movements
if (knock_move_x > 0)
	knock_move_x -= 0.1;
	
if (knock_move_x < 0)
	knock_move_x += 0.1;
	
// slow our knockback y movements
if (knock_move_y > 0)
	knock_move_y -= 0.1;

if (knock_move_y < 0)
	knock_move_y += 0.1;
	
	
// set our position
global.player_x = x
global.player_y = y


show_debug_message(last_move_x)
show_debug_message(last_move_y)