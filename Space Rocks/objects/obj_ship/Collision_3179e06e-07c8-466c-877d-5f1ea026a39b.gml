/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
instance_destroy();
audio_play_sound(snd_die, 1, false);
repeat(15)
{
	instance_create_layer(x,y,"instances",obj_debris);
}
with (obj_game)
{
	alarm[1] = room_speed;
}
lives -=1;