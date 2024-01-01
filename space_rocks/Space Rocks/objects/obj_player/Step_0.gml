//sets move wrapping on
move_wrap(true, true, 0);


switch(keyboard_key)
{
	case vk_left:
	case ord("A"):
		image_angle += 4;
	break;
	
	case vk_right:
	case ord("D"):
		image_angle -= 4;
	break;
	
	case vk_up:
	case ord("W"):
		motion_add(image_angle, 0.1);
	break;
	
	case vk_down:
	case ord("S"):
		motion_add(image_angle, -0.1);
	break;
}

////arrow key movement
//if keyboard_check(vk_up)
//{
//	motion_add(image_angle, 0.1);
//}


//if keyboard_check(vk_left)
//{
//	image_angle += 4;
//}


//if keyboard_check(vk_right)
//{
//	image_angle -= 4;
//}


//if keyboard_check(vk_down)
//{
//	motion_add(image_angle, -0.1);
//}

//firing
if mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x, y, "Instances", obj_bullet)
}