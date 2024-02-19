draw_set_color(c_black)
draw_rectangle(0,0,width, currenttop, false);
draw_rectangle(width, height, -1, currentbottom, false);


if (currenttop < topheight)
	currenttop += 1;

if (currentbottom > bottomheight)
	currentbottom -= 1;

if (currentbottom <= bottomheight)
{
	draw_set_color(c_red)
	draw_set_halign(fa_middle)
	draw_text_ext_transformed(width/2, height - height/6, "You Died.", 12, 1000, 2, 2, 0);
}
