///sc_jugador_colision_enemigo(id:enemigo)

var enemy = argument0,
    sobre_enemigo = (y - 10) < ( enemy.y - enemy.mi_alto) + abs(vel_ver);

if( sobre_enemigo == true  ){

    y = yprevious;
    while( !place_meeting(x, y+1, enemy) ){ y++; }

    with(enemy){ instance_destroy(); }
    
    vel_ver = (vel_salto / 2); 
    
}
else{

    sc_jugador_pierde(); 
    
}

