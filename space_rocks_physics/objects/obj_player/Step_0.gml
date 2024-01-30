/// @description Insert description here
// You can write your code in this editor
// You can write your code in this editor

//direction_facing = image_angle;



var forward_magnitude = 150;
var direction_facing = phy_rotation;
var rotation_speed = 5;

var max_height = 1000;
var max_width = 1000;

//wrapping functionality
    if (phy_position_x < 0) {
        phy_position_x = max_width;
    } else if (phy_position_x > max_width) {
        phy_position_x = 0;
    }

    if (phy_position_y < 0) {
        phy_position_y = max_height;
    } else if (phy_position_y > max_height) {
        phy_position_y = 0;
    }
	
	//experimenting with x instead of phy_position_x
	//if (x < 0) {
    //    phy_position_x = display_get_width();
    //} else if (x > display_get_width()) {
    //    phy_position_x = 0;
    //}

    //if (phy_position_y < 0) {
    //    phy_position_y = display_get_height();
    //} else if (phy_position_y > display_get_height()) {
    //    phy_position_y = 0;
    //}


force_x = lengthdir_x(forward_magnitude, direction_facing);
force_y = -lengthdir_y(forward_magnitude, direction_facing);

switch(keyboard_key)
{
	case vk_left:
	case ord("S"):
		phy_rotation -= rotation_speed;
	break;
	
	case vk_right:
	case ord("F"):
		phy_rotation += rotation_speed;
	break;
	
	case vk_up:
	case ord("E"):
		physics_apply_force(x, y, force_x, force_y);
	break;
	
	case vk_down:
	case ord("D"):
		physics_apply_force(x, y, -force_x, -force_y);
	break;
}