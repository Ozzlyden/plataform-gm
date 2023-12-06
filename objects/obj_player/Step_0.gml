/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Movimentacao Player
if(keyboard_check(vk_right)){
	x+=spd;
	image_xscale = 1;
}else if(keyboard_check(vk_left)){
	x-=spd;
	image_xscale = -1;
}

