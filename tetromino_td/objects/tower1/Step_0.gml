/// @description Insert description here
// You can write your code in this editor

//Make the tower shoot on a timer

var offset_x = sprite_width /2;
var offset_y = sprite_height /2;

//sprite_width

var x_loc = x + offset_x;
var y_loc = y + offset_y;

var steps = floor(get_timer() /  1000000);


//var x_loc = x;
//var y_loc = y;

//if mouse_check_button_pressed(mb_left)
//{
//	instance_create_layer(x_loc, y_loc, "Instances", obj_bullet, {
//		speed: 10,
//		direction: (image_angle + 90)
//	});	
	
//	//instance_create_layer(mouse_x, mouse_y, "Instances", obj_bullet);	
//}

//debug_event(steps);
//show_debug_message(steps);

show_debug_message(alarm_get(0));

//if(steps%30 <5)
//{
//		instance_create_layer(x_loc, y_loc, "Instances", obj_bullet, {
//		speed: 10,
//		direction: (image_angle + 90)
//	});	
//}