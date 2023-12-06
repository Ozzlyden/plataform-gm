/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Aplicar movimentação horizontal
if(keyboard_check(ord("D")) && place_free(x+spd, y)){
	x+=spd;
	image_xscale = 1;
}else if(keyboard_check(ord("A")) && place_free(x-spd,y)){
	x-=spd;
	image_xscale = -1;
}

if(keyboard_check_pressed(vk_space)){
	if(!place_free(x,y+1)){
		jump = true;
	}
}

if(jump){
	if(jumpFrames < jumpHeight){	
		if(place_free(x,y-spd)){
			jumpFrames += spdJump;
			y-=spdJump;
		}else{
			jump = false;
			jumpFrames = 0; 
		}
	}else{
		jump = false;
		jumpFrames = 0; 
	}
}


// Queda
if(jump == false){
if(place_free(x,y+spdFall)){
	y+=spdFall;
	spdFall+=gravt;
	if(spdFall > maxSpdFall){
		spdFall = maxSpdFall;
	}
}else{
	spdFall = 2;
	while(place_free(x,y+1)){
		y++;
	}
}
}