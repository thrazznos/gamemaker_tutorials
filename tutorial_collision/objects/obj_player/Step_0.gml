/// @description Insert description here
// You can write your code in this editor


var _right = keyboard_check(vk_right);
var _left = keyboard_check(vk_left);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);

if(_right)
{
	show_debug_message("Right");
}

if(_left)
{
	show_debug_message("Left");
}

if(_up)
{
	show_debug_message("Up");
}

if(_down)
{
	show_debug_message("Down");
}

var _xinput = _right - _left;
var _yinput = _down - _up;

move_and_collide(_xinput * my_speed, _yinput * my_speed, obj_wall);

move