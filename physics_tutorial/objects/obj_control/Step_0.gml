/// @description Insert description here
// You can write your code in this editor


if (mouse_check_button(mb_left) && (alarm[0] < 0))
	    {
	    instance_create_layer(mouse_x, mouse_y, layer, choose(obj_Block, obj_circle, obj_triangle));
	    alarm[0] = 5;
	    }