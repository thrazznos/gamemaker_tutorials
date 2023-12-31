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
var _indicator = 100;
for(var _i = 0; _i < array_length(obj_game.thresholds); _i+= 1)
{
	if obj_game.points >= obj_game.thresholds[_i]
	{
		_indicator = obj_game.thresholds[_i];
	}
}

//BUGBUG: The comparison here isnt working for some reason, possible issue with
//switch statements and number comparisons?
switch(_indicator)
{
	case 100.0:
		obj_game.flavor_text = "Doing well";
	case 500.0:
		obj_game.flavor_text = "Making Progress!";
	case 800:
		obj_game.flavor_text = "Masterful";
	case 1000:
		obj_game.flavor_text = "Unexpected!";
	case 1500:
		obj_game.flavor_text = "INCREDIBLE!";
	case 2000:
		obj_game.flavor_text = "LEGENDARY";
	default:
		obj_game.flavor_text = _indicator
}
