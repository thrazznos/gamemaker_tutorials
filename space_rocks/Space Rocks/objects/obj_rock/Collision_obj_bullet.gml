/// @description Insert description here
// You can write your code in this editor


instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

direction = random(360);

if sprite_index == spr_rock_small
{
	obj_game.points += 10;
}
else
{
	obj_game.points += 50;
}

if sprite_index == spr_rock_big
{
	sprite_index = spr_rock_small;
	instance_copy(true);
}
else if instance_number(obj_rock) < 12
{
	sprite_index = spr_rock_big;
	x = -100;
}
else
{
	instance_destroy();
}

//obj_game.thresholds.
//set the indicator variable to lowest valuable switch value	
var _indicator = 0;
for(var _i = 0; _i < array_length(obj_game.thresholds); _i+= 1)
{
	if obj_game.points >= obj_game.thresholds[_i]
	{
		_indicator = obj_game.thresholds[_i];
	}
}

//This doesnt work but it would be so freaking cool if it did
//switch(_indicator)
//{
//	for(var _i = 0; _i < array_length(obj+game.thresholds); _i += 1)
//	{
//		case obj_game.thresholds[_i]:
//			obj_game.flavor_text = obj_game.messages[_i];
//			break;
//	}
//}

switch(_indicator)
{
	case obj_game.thresholds[0]:
		break;
	case obj_game.thresholds[1]:
		obj_game.flavor_text = obj_game.messages[1];
		break;
	case obj_game.thresholds[2]:
		obj_game.flavor_text = obj_game.messages[2];
		break;
	case obj_game.thresholds[3]:
		obj_game.flavor_text = obj_game.messages[3];
		break;
	case obj_game.thresholds[4]:
		obj_game.flavor_text = obj_game.messages[4];
		break;
	case obj_game.thresholds[5]:
		obj_game.flavor_text = obj_game.messages[5];
		break;
	case obj_game.thresholds[6]:
		obj_game.flavor_text = obj_game.messages[6];
		break;
	
	default:
		obj_game.flavor_text = string(_indicator) + " Broken Message";
}