/// @description Insert description here
// You can write your code in this editor


var offset_x = sprite_width /2;
var offset_y = sprite_height /2;

//sprite_width

var x_loc = x + offset_x;
var y_loc = y + offset_y;

show_debug_message(alarm_get(0));

show_debug_message("Alarm 0!");
alarm_set(0, 60);
//alarm_get(0);
		instance_create_layer(x_loc, y_loc, "Instances", obj_bullet_straight, {
		speed: 10,
		direction: (image_angle + 90)
	});	