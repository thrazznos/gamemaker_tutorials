/// @description Insert description here
// You can write your code in this editor

var rotation = obj_player.phy_rotation

//var val = string("X" + rotation);

column1 = 10
column2 = 80

row_offset = 20

draw_text(column1, row_offset, "Angle");
draw_text(column2, row_offset, rotation);

draw_text(column1, row_offset*2, "Force X");
draw_text(column2, row_offset*2, obj_player.force_x);

draw_text(column1, row_offset*3, "Force Y");
draw_text(column2, row_offset*3, obj_player.force_y);

draw_text(column1, row_offset*4, "X POS");
draw_text(column2, row_offset*4, obj_player.phy_position_x);


draw_text(column1, row_offset*5, "Y POS");
draw_text(column2, row_offset*5, obj_player.phy_position_y);


draw_text(column1, row_offset*6, "display");
draw_text(column2, row_offset*6, display_get_height());

draw_text(column1, row_offset*7, "x pos");
draw_text(column2, row_offset*7, obj_player.x);


//draw_text(column1, row_offset*8, "pyh x");
//draw_text(column2, row_offset*8, obj_player.pyh_x);