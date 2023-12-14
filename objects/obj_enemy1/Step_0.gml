/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// GRAVIDADE
if(place_free(x,y+1)){
	y+=1;
}


// SISTEMA DE MOVIMENTACAO
if(dir == 1){
	if(place_free(x+1,y)){
		x+=1;
	}else{
		dir = -1;
		image_xscale = -1;
	}
}

if(dir == -1){
	if(place_free(x-1,y)){
		x-=1;
	}else{
		dir = 1;
		image_xscale = 1;
	}
}