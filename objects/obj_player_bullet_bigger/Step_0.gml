if (place_meeting(x,y, par_wall))
{
	if (room != Room_6_BiggerBullets)
	{
		ourflash = instance_create_depth(x,y,depth-1,obj_flash)
		ourflash.play_death = true;
	}	
	instance_destroy(self);	
}

if (place_meeting(x,y,par_enemy))
{	
	if (room != Room_6_BiggerBullets)
	{
		ourflash = instance_create_depth(x,y,depth-1,obj_flash)
		ourflash.play_death = true;
	}	
	instance_place(x,y,par_enemy).hp -= 1;
	
	instance_destroy(self);	
}

image_angle = direction;

image_xscale = 1.25;
image_yscale = 1.25;