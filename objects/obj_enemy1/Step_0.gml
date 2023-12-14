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

// SISTEMA DE COLISAO BULLET
var collision = instance_place(x,y,obj_bullet);	 
if(collision){
	
	with(collision){	// with eh tipo o . para camanar um "metodo"
		instance_destroy();
	}
	
	if(random(100) < 30){
		life--;
		show_debug_message("Inimigo perdendo vida");
		show_debug_message(string(life));
	}
	
	if(life == 0){
		instance_destroy();
	}
}