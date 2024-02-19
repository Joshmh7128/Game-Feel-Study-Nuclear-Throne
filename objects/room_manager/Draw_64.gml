draw_set_color(c_black)
draw_rectangle(0,0, width, topheight, false);
draw_rectangle(width, height, -1, bottomheight, false);

if (showtime > 0)
{
	draw_set_color(c_white)
	draw_set_halign(fa_middle)
	draw_text_ext_transformed(width/2, height - height/6, display_text, 12, 1000, 2, 2, 0);
}

if (showtime <= 0)
{
	if (topheight >= 0)
		topheight -= 5;
		
	if (bottomheight <= height)
		bottomheight += 5;
}

