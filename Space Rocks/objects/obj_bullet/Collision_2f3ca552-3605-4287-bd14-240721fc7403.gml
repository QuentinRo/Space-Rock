/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
instance_destroy();
audio_play_sound(snd_die, 1, false);
with (other)
{
	instance_destroy();
	if (sprite_index == spr_asteroid_huge)
	{
		repeat(2)
		{
			var new_asteroid = instance_create_layer(x,y,"Instances",obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_med;
		}
	}else if (sprite_index == spr_asteroid_med)
	{
		repeat(2)
		{
			var new_asteroid = instance_create_layer(x,y,"Instances",obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_small;
		}
	}
	repeat(9)
	{
		instance_create_layer(x,y,"instances",obj_debris);
	}
	//score :
	score += 10;
}