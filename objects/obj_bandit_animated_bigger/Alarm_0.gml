var _sx = irandom_range(-2, 1);
if (_sx == 0) _sx = 1;

var _sy = irandom_range(-2, 1);
if (_sy == 0) _sy = 1;

// set the move direction to be somewhere near the player
var _target_x = global.player_x + random_range(128, 256) * sign(_sx);
var _target_y = global.player_y + random_range(128, 256) * sign(_sy);

// set our movement direction
move_direction = point_direction(x,y,_target_x,_target_y);

// reset this function
alarm_set(0, random_range(0, 60));