/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

move_wrap(true, true, 0);

if (keyboard_check(vk_left))
{
	image_angle = image_angle + 5;
}
if (keyboard_check(vk_right))
{
	image_angle = image_angle - 5;
}


if (keyboard_check(vk_up))
{
	motion_add(image_angle, 0.05);
}



// tir 
if (keyboard_check_pressed(vk_space))
{
	audio_play_sound(snd_zap, 1,false);
	var inst = instance_create_layer(x,y,"instances",obj_bullet);
	inst.direction = image_angle;
}