/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
image_alpha = image_alpha - 0.01;
if (image_alpha <= 0)
{
	instance_destroy();
}
