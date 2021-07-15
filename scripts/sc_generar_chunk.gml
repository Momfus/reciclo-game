#define sc_generar_chunk
///sc_generar_chunk(x_inicial, bool:chunk_plano, bool:mas_vel)

var x_inicial = argument0,
    y_inicial = room_height - 64,
    chunk_plano = argument1,
    mas_vel = argument2;

if( aumentar_velocidad == true ){

    g_vel_general++;
    background_hspeed[0] = -(g_vel_general - 7);
    background_hspeed[1] = -(g_vel_general - 7);
    background_hspeed[2] = -g_vel_general;
    
    ob_jugador.vel_sprite += 0.005
    
    aumentar_velocidad = false;
    
    instance_create( (room_width / 2) + (sprite_get_width(sp_mas_rapido) / 2), 160, ob_efecto_velocidad);

}

    
if( chunk_plano == false ){

    var tipo_chunk = irandom(5);
    
    switch(zona){
    
        case 1:{ sc_generar_chunk_zona1(tipo_chunk, x_inicial, y_inicial); break; }
        case 2:{ sc_generar_chunk_zona2(tipo_chunk, x_inicial, y_inicial); break; }
        case 3:{ sc_generar_chunk_zona3(tipo_chunk, x_inicial, y_inicial); break; }
        case 4:{ sc_generar_chunk_zona4(tipo_chunk, x_inicial, y_inicial); break; }
    
    }
    
    chunk_creados++;

}
else{ sc_generar_chunk_plano(x_inicial, y_inicial, mas_vel); }







#define sc_generar_chunk_zona1
///sc_generar_chunk_zona1(int: tipo_chunk, x_inicial, y_inicial)
var mi_chunk = argument0,
    x_ini = argument1,
    y_ini = argument2;

switch(mi_chunk){

    case 0:{
    
        instance_create(x_ini, y_ini, ob_plataforma_suelo_completa);
        
        var tipo_basura = irandom(1);
        var xb = 0;
        var yb = y_ini - 100;
        
        switch(tipo_basura){
            
            case 0:{
                xb = x_ini + 16;
                repeat(4){
                    instance_create(xb, y_ini - 8, ob_basura);
                    xb += 80;
                }
                
                xb += 120;
                repeat(4){
                    instance_create(xb, yb, ob_basura);
                    xb += 80;
                }
            
                break;
            
            }
                
            case 1:{
            
                xb = x_ini + 16;
                var yb = y_ini - 100;
                
                repeat(4){
                
                    instance_create(xb, yb, ob_basura);
                    xb += 60;
                
                }
                
                xb += 10;
                repeat(4){
                
                    instance_create(xb, y_ini - 8, ob_basura);
                    xb += 60;
                
                }
                
                xb += 10;
                repeat(4){
                
                    instance_create(xb, yb, ob_basura);
                    xb += 60;
                
                }
            
                break;
            
            }
            
            
        }
        
        break;
    }
    
    case 1:{
    
        var xx = x_ini;
        xx += instance_create(x_ini, y_ini, ob_plataforma_suelo_mediana).mi_ancho;
        
        instance_create(xx + 150, y_ini, ob_plataforma_suelo_mediana);
    
        var tipo_basura = irandom(1);
        var xb = 0;
        var yb = y_ini - 100;
        
        switch(tipo_basura){
            
            case 0:{
                xb = x_ini + 16;
                repeat(4){
                    instance_create(xb, yb, ob_basura);
                    xb += 60;
                }
                
                xb += 288;
                repeat(4){
                    instance_create(xb, y_ini - 8, ob_basura);
                    xb += 60;
                }
            
                break;
            
            }
            
            case 1:{
            
                xb = x_ini + 265;
                
                instance_create(xb, y_ini - 50, ob_basura);
                
                xb += 50;
                repeat(4){
                    instance_create(xb, yb, ob_basura);
                    xb += 50;
                }
                
                instance_create(xb, y_ini - 50, ob_basura);
                
            
                break;
            
            }
        }
        
        
        break;
    
    }
    
    case 2:{
    
        instance_create(x_ini, y_ini, ob_plataforma_suelo_completa);
        instance_create(x_ini + 275, 300, ob_plataforma_flotante_mediana);
        
        var tipo_basura = irandom(1);
        var xb = x_ini;
        var yb = 290;
        
        switch(tipo_basura){
           
            case 0:{
                xb += 275;

                repeat(6){
                    instance_create(xb, y_ini - 8, ob_basura);
                    instance_create(xb, yb, ob_basura);
                    xb += 50;
                }
                
                break;
            
            }
            
            case 1:{
                xb += 16;
                repeat(5){ instance_create(xb, y_ini - 8, ob_basura); xb += 50;}
                xb += 324;
                yb -= 80;
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 50;}
                
                break;
            
            }
        }
        
        break;
    
    }
    
    case 3:{
    
        instance_create(x_ini, y_ini, ob_plataforma_suelo_completa);
        instance_create(x_ini + 336, y_ini - 96, ob_plataforma_tocon);
        
        var tipo_basura = irandom(1);
        var xb = x_ini + 16;
        var yb = y_ini - 150;
        
        switch(tipo_basura){
           
            case 0:{

                repeat(5){ instance_create(xb, y_ini - 8, ob_basura); xb += 60; }
                xb += 20;
                repeat(3){ instance_create(xb, yb, ob_basura); xb += 50;}
                xb += 60;
                repeat(4){ instance_create(xb, y_ini - 8, ob_basura); xb += 60; }
                
                break;
            
            }
            
            case 1:{
              
                xb += 20;
                yb += 50;
                repeat(5){ instance_create(xb, yb, ob_basura); xb += 60; }
                xb += 148;
                repeat(5){ instance_create(xb, yb, ob_basura); xb += 60; }
                
                break;
            
            }
        }
        
        break;
    
    }
    
    case 4:{
    
        var xx = x_ini;
        instance_create(xx, y_ini, ob_plataforma_suelo_completa);
        
        var yy = 300;
        xx += instance_create(xx, yy, ob_plataforma_flotante_mediana).mi_ancho + 125;
        
        yy -= 100;
        instance_create(xx, yy, ob_plataforma_flotante_mediana)
     
        var tipo_basura = irandom(1);
        var xb = x_ini + 15;
        var yb = 290;
        
        switch(tipo_basura){
           
            case 0:{

                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70; }
                xb += 145;
                yb -= 100
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70;}
                
                break;
            
            }
            
            case 1:{
              
                xb += 200;
                repeat(6){ instance_create(xb, y_ini - 8, ob_basura); xb += 80; }
                
                xb = x_ini + 440;
                yb -= 100
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70;}
                
                break;
            
            }
        }
        
        break;
              
    }
    
    case 5:{
        
    
        instance_create(x_ini, y_ini, ob_plataforma_suelo_completa);
        instance_create(x_ini + 10, y_ini - 96, ob_plataforma_tocon);
        instance_create(x_ini + room_width - 130, y_ini - 96, ob_plataforma_tocon);
    
        var tipo_basura = irandom(1);
        var xb = x_ini + 230;
        
        switch(tipo_basura){
           
            case 0:{

                repeat(5){ instance_create(xb, y_ini - 8, ob_basura); xb += 80; }
                
                break;
            
            }
            
            case 1:{
              
                var yb = y_ini - 150;
                repeat(5){ instance_create(xb, yb, ob_basura); xb += 80; }
                break;
            
            }
        }
        
        break;
    
    }
    
   

}

#define sc_generar_chunk_zona2
///sc_generar_chunk_zona2(int: tipo_chunk, x_inicial, y_inicial)
var mi_chunk = argument0,
    x_ini = argument1,
    y_ini = argument2;

switch(mi_chunk){

    case 0:{
    
        instance_create(x_ini, y_ini, ob_plataforma_suelo_completa);
        instance_create(x_ini + 200, y_ini, ob_enemigo_baba); 
        instance_create( x_ini + room_width - 252, y_ini, ob_enemigo_baba);
        
        var tipo_basura = irandom(1);
        var xb = 0;
        var yb = y_ini - 50;
        
        switch(tipo_basura){
            
            case 0:{
                xb = x_ini + 50;
                instance_create(xb, y_ini - 8, ob_basura);
                xb += 162;
                instance_create(xb, yb, ob_basura);
                xb += 120 ;
                instance_create(xb, y_ini - 8, ob_basura);
               
                xb = x_ini + room_width - 380;
                instance_create(xb, y_ini , ob_basura);
                xb += 145;
                instance_create(xb, yb, ob_basura);
                xb += 130 ;
                instance_create(xb, y_ini, ob_basura);
                
                break;
            
            }
               
            case 1:{
            
                xb = x_ini + 300;
                repeat(4){
                    instance_create(xb, y_ini - 8, ob_basura);
                    xb += 60;
                }
            
                break;
            
            }
            
            
        }
        
        break;
    }
    
    case 1:{
        
        var xx = x_ini;
        xx += instance_create(xx, y_ini, ob_plataforma_suelo_mediana).mi_ancho;
        xx += 150;
        instance_create(xx, y_ini, ob_plataforma_suelo_mediana);
        
        var yy = 300;
        xx = x_ini;
        xx += instance_create(xx, yy, ob_plataforma_flotante_mediana).mi_ancho + 125;
        
        yy -= 100;
        instance_create(xx, yy, ob_plataforma_flotante_mediana)
     
        instance_create(x_ini + 100, y_ini, ob_cartel);
        
        var tipo_basura = irandom(1);
        var xb = x_ini + 15;
        var yb = 290;
        
        switch(tipo_basura){
           
            case 0:{

                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70; }
                xb += 145;
                yb -= 100
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70;}
                
                break;
            
            }
            
            case 1:{
              
                xb += 16;
                repeat(4){ instance_create(xb, y_ini - 8, ob_basura); xb += 70; }
                
                xb = x_ini + 440;
                yb -= 100
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70;}
                
                break;
            
            }
        }
    
        break;
    
    }
    
    case 2:{
    
        var xx = x_ini;
        xx += instance_create(xx, y_ini, ob_plataforma_suelo_chica).mi_ancho;
        xx += 100;
        xx += instance_create(xx, y_ini, ob_plataforma_suelo_chica).mi_ancho;
        xx += 100;
        instance_create(xx, y_ini, ob_plataforma_suelo_chica)
    
        var yy = 300;
        instance_create(x_ini + 239, yy, ob_plataforma_flotante_mediana)
        
        var tipo_basura = irandom(1);
        var xb = x_ini;
        var yb = yy - 10;
        
        switch(tipo_basura){
           
            case 0:{

                instance_create(x_ini + 340, y_ini, ob_enemigo_baba_grande);

                xb += 240
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 80;}
                                
                break;
            
            }
            
            case 1:{
              
                instance_create(x_ini + 365, yy, ob_enemigo_baba_grande);
                
                xb += 305;
                repeat(3){ instance_create(xb, y_ini - 8, ob_basura); xb += 70;}
                
                break;
            
            }
        }
        
        break;
    
    }
    
    case 3:{
        
        var xx = x_ini;
        var yy = 200;
        
        xx += instance_create(x_ini, y_ini, ob_plataforma_suelo_mediana).mi_ancho;
        instance_create(xx + 150, y_ini, ob_plataforma_suelo_mediana);
        
        xx = x_ini + 20;
        xx += instance_create(xx, yy, ob_plataforma_flotante_mediana).mi_ancho + 150;
        instance_create(xx, yy, ob_plataforma_flotante_mediana);
        
        var tipo_basura = irandom(1);
        var xb = x_ini + 20;
        var yb = y_ini;
        
        switch(tipo_basura){
           
            case 0:{

                instance_create(x_ini + 150, y_ini, ob_enemigo_baba);
            
                xb += 25;
                yb = yy - 10;
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70; }
                xb += 145;
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70;}
                
                break;
            
            }
            
            case 1:{
              
                instance_create(x_ini + 150, yy, ob_enemigo_baba);
                instance_create(x_ini + room_width - 150, yy, ob_enemigo_baba);
            
                xb = x_ini + 265;
                yb -= 100
                instance_create(xb, y_ini - 50, ob_basura);
                
                xb += 50;
                repeat(4){
                    instance_create(xb, yb, ob_basura);
                    xb += 50;
                }
                
                instance_create(xb, y_ini - 50, ob_basura);
                
            
                break;
                
                break;
            
            }
        }
        
    
        break;
    
    }
    
    case 4:{
    
        instance_create(x_ini, y_ini, ob_plataforma_suelo_completa);
        instance_create(x_ini + 336, y_ini - 96, ob_plataforma_tocon);
        
        var tipo_basura = irandom(1);
        var xb = x_ini + 16;
        var yb = y_ini - 150;
        
        switch(tipo_basura){
           
            case 0:{

                repeat(5){ instance_create(xb, y_ini - 8, ob_basura); xb += 60; }
                xb += 20;
                repeat(3){ instance_create(xb, yb, ob_basura); xb += 50;}
                xb += 60;
                repeat(4){ instance_create(xb, y_ini - 8, ob_basura); xb += 60; }
                
                break;
            
            }
            
            case 1:{
              
                xb += 20;
                yb += 50;
                repeat(5){ instance_create(xb, yb, ob_basura); xb += 60; }
                xb += 148;
                repeat(5){ instance_create(xb, yb, ob_basura); xb += 60; }
                
                break;
            
            }
        }
        
        break;
          
    }
    
    case 5:{
        
        instance_create(x_ini, y_ini, ob_plataforma_suelo_completa);
        instance_create(x_ini + 30, y_ini - 96, ob_plataforma_tocon);
        instance_create(x_ini + room_width - 130, y_ini - 96, ob_plataforma_tocon);
    
        var tipo_basura = irandom(1);
        var xb = x_ini + 230;
        
        switch(tipo_basura){
           
            case 0:{

                repeat(5){ instance_create(xb, y_ini - 8, ob_basura); xb += 80; }
                
                break;
            
            }
            
            case 1:{
              
                var yb = y_ini - 150;
                repeat(5){ instance_create(xb, yb, ob_basura); xb += 80; }
                break;
            
            }
        }
        
        break;
      
    }
    
   

}

#define sc_generar_chunk_zona3
///sc_generar_chunk_zona3(int: tipo_chunk, x_inicial, y_inicial)
var mi_chunk = argument0,
    x_ini = argument1,
    y_ini = argument2;

switch(mi_chunk){

    case 0:{
    
        instance_create(x_ini, y_ini, ob_plataforma_suelo_completa);
        instance_create(x_ini + 200, y_ini, ob_enemigo_baba_grande); 
        instance_create( x_ini + room_width - 252, y_ini, ob_enemigo_baba_grande);
        
        var tipo_basura = irandom(1);
        var xb = 0;
        var yb = y_ini - 50;
        
        switch(tipo_basura){
            
            case 0:{
                xb = x_ini + 50;
                instance_create(xb, y_ini - 8, ob_basura);
                xb += 162;
                instance_create(xb, yb, ob_basura);
                xb += 120 ;
                instance_create(xb, y_ini - 8, ob_basura);
               
                xb = x_ini + room_width - 380;
                instance_create(xb, y_ini - 8, ob_basura);
                xb += 145;
                instance_create(xb, yb, ob_basura);
                xb += 130 ;
                instance_create(xb, y_ini - 8, ob_basura);
                
                break;
            
            }
               
            case 1:{
            
                xb = x_ini + 300;
                repeat(4){
                    instance_create(xb, y_ini - 8, ob_basura);
                    xb += 60;
                }
            
                break;
            
            }
            
            
        }
        
        break;
    }
    
    case 1:{
        
        var xx = x_ini;
        xx += instance_create(xx, y_ini, ob_plataforma_suelo_mediana).mi_ancho;
        xx += 150;
        instance_create(xx, y_ini, ob_plataforma_suelo_mediana);
        
        var yy = 300;
        xx = x_ini;
        xx += instance_create(xx, yy, ob_plataforma_flotante_mediana).mi_ancho + 125;
        
        yy -= 100;
        instance_create(xx, yy, ob_plataforma_flotante_mediana)
     
        var tipo_basura = irandom(1);
        var xb = x_ini + 15;
        var yb = 290;
        
        switch(tipo_basura){
           
            case 0:{

                instance_create(x_ini + 100, y_ini, ob_enemigo_baba);
                
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70; }
                xb += 145;
                yb -= 100
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70;}
                
                break;
            
            }
            
            case 1:{
              
                instance_create(x_ini + 100, 300, ob_enemigo_baba);
            
                xb += 16;
                repeat(4){ instance_create(xb, y_ini - 8, ob_basura); xb += 70; }
                
                xb = x_ini + 440;
                yb -= 100
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70;}
                
                break;
            
            }
        }
    
        break;
    
    }
    
    case 2:{
    
        var xx = x_ini;
        xx += instance_create(xx, y_ini, ob_plataforma_suelo_chica).mi_ancho;
        xx += 100;
        xx += instance_create(xx, y_ini, ob_plataforma_suelo_chica).mi_ancho;
        xx += 100;
        instance_create(xx, y_ini, ob_plataforma_suelo_chica)
        instance_create(xx + 100, y_ini, ob_cartel);
        
        var yy = 300;
        instance_create(x_ini + 239, yy, ob_plataforma_flotante_mediana)
        
        
        
        var tipo_basura = irandom(1);
        var xb = x_ini;
        var yb = yy - 10;
        
        switch(tipo_basura){
           
            case 0:{

                instance_create(x_ini + 355, y_ini, ob_enemigo_baba_enorme);

                xb += 240
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 80;}
                                
                break;
            
            }
            
            case 1:{
              
                instance_create(x_ini + 355, yy, ob_enemigo_baba_enorme);
                
                xb += 305;
                repeat(3){ instance_create(xb, y_ini - 8, ob_basura); xb += 70;}
                
                break;
            
            }
        }
        
        break;
    
    }
    
    case 3:{
        
        var xx = x_ini;
        var yy = 200;
        
        xx += instance_create(x_ini, y_ini, ob_plataforma_suelo_mediana).mi_ancho;
        instance_create(xx + 150, y_ini, ob_plataforma_suelo_mediana);
        
        xx = x_ini + 20;
        xx += instance_create(xx, yy, ob_plataforma_flotante_mediana).mi_ancho + 150;
        instance_create(xx, yy, ob_plataforma_flotante_mediana);
        
        var tipo_basura = irandom(1);
        var xb = x_ini + 20;
        var yb = y_ini;
        
        switch(tipo_basura){
           
            case 0:{

                instance_create(x_ini + 150, y_ini, ob_enemigo_baba_grande);
            
                xb += 25;
                yb = yy - 10;
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70; }
                xb += 145;
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70;}
                
                break;
            
            }
            
            case 1:{
              
                instance_create(x_ini + 135, yy, ob_enemigo_baba_grande);
                instance_create(x_ini + room_width - 160, yy, ob_enemigo_baba_grande);
            
                xb = x_ini + 265;
                yb -= 100
                instance_create(xb, y_ini - 50, ob_basura);
                
                xb += 50;
                repeat(4){
                    instance_create(xb, yb, ob_basura);
                    xb += 50;
                }
                
                instance_create(xb, y_ini - 50, ob_basura);
                
            
                break;
                
                break;
            
            }
        }
        
    
        break;
    
    }
    
    case 4:{
    
        instance_create(x_ini, y_ini, ob_plataforma_suelo_completa);
        instance_create(x_ini + 336, y_ini - 96, ob_plataforma_tocon);
        
        instance_create(x_ini + 100, y_ini, ob_enemigo_baba);
        instance_create(x_ini + room_width - 200, y_ini, ob_enemigo_baba);
        
        var tipo_basura = irandom(1);
        var xb = x_ini + 16;
        var yb = y_ini - 150;
        
        switch(tipo_basura){
           
            case 0:{

                
                xb += 320;
                repeat(3){ instance_create(xb, yb, ob_basura); xb += 50;}
                
                break;
            
            }
            
            case 1:{
              
                xb += 20;
                yb += 50;
                repeat(5){ instance_create(xb, yb, ob_basura); xb += 60; }
                xb += 148;
                repeat(5){ instance_create(xb, yb, ob_basura); xb += 60; }
                
                break;
            
            }
        }
        
        break;
          
    }
    
    case 5:{
        
        instance_create(x_ini, y_ini, ob_plataforma_suelo_completa);
        instance_create(x_ini + 30, y_ini - 96, ob_plataforma_tocon);
        instance_create(x_ini + room_width - 130, y_ini - 96, ob_plataforma_tocon);
    
        var tipo_basura = irandom(1);
        var xb = x_ini;
        var yb = y_ini;
        
        switch(tipo_basura){
           
            case 0:{

                instance_create(x_ini + 374 , y_ini, ob_enemigo_baba);
            
                yb -= 100;
                xb += 30;
                repeat(3){ instance_create(xb, yb, ob_basura); xb += 40; }
                
                xb = x_ini + room_width - 124;
                repeat(3){ instance_create(xb, yb, ob_basura); xb += 40; }
                
                break;
            
            }
            
            case 1:{
              
                instance_create(x_ini + 365 , y_ini, ob_enemigo_baba_grande);
            
                xb += 230;
                yb -= 150;
                repeat(5){ instance_create(xb, yb, ob_basura); xb += 80; }
                break;
            
            }
        }
        
        break;
    
      
    }
    
   

}

#define sc_generar_chunk_zona4
///sc_generar_chunk_zona4(int: tipo_chunk, x_inicial, y_inicial)
var mi_chunk = argument0,
    x_ini = argument1,
    y_ini = argument2;

switch(mi_chunk){

    case 0:{
    
        instance_create(x_ini, y_ini, ob_plataforma_suelo_completa);
        instance_create(x_ini + 190, y_ini, ob_enemigo_baba_enorme); 
        instance_create( x_ini + room_width - 260, y_ini, ob_enemigo_baba_enorme);
        
        var tipo_basura = irandom(1);
        var xb = 0;
        var yb = y_ini - 90;
        
        switch(tipo_basura){
            
            case 0:{
                xb = x_ini + 50;
                instance_create(xb, y_ini - 8, ob_basura);
                xb += 166;
                instance_create(xb, yb, ob_basura);
                xb += 120 ;
                instance_create(xb, y_ini - 8, ob_basura);
               
                xb = x_ini + room_width - 380;
                instance_create(xb, y_ini - 8, ob_basura);
                xb += 149;
                instance_create(xb, yb, ob_basura);
                xb += 130 ;
                instance_create(xb, y_ini - 8, ob_basura);
                
                break;
            
            }
               
            case 1:{
            
                xb = x_ini + 320;
                repeat(3){
                    instance_create(xb, y_ini - 8, ob_basura);
                    xb += 60;
                }
            
                break;
            
            }
            
            
        }
        
        break;
    }
    
    case 1:{
        
        var xx = x_ini;
        xx += instance_create(xx, y_ini, ob_plataforma_suelo_mediana).mi_ancho;
        xx += 150;
        instance_create(xx, y_ini, ob_plataforma_suelo_mediana);
        
        var yy = 300;
        xx = x_ini;
        xx += instance_create(xx, yy, ob_plataforma_flotante_mediana).mi_ancho + 125;
        
        yy -= 100;
        instance_create(xx, yy, ob_plataforma_flotante_mediana)
     
        var tipo_basura = irandom(1);
        var xb = x_ini + 15;
        var yb = 290;
        
        switch(tipo_basura){
           
            case 0:{

                instance_create(x_ini + 90, y_ini, ob_enemigo_baba_grande);
                
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70; }
                xb += 145;
                yb -= 100
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70;}
                
                break;
            
            }
            
            case 1:{
              
                instance_create(x_ini + 90, 300, ob_enemigo_baba_grande);
            
                xb += 16;
                repeat(4){ instance_create(xb, y_ini - 8, ob_basura); xb += 70; }
                
                xb = x_ini + 440;
                yb -= 100
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70;}
                
                break;
            
            }
        }
    
        break;
    
    }
    
    case 2:{
    
        var xx = x_ini;
        xx += instance_create(xx, y_ini, ob_plataforma_suelo_chica).mi_ancho;
        xx += 100;
        xx += instance_create(xx, y_ini, ob_plataforma_suelo_chica).mi_ancho;
        xx += 100;
        instance_create(xx, y_ini, ob_plataforma_suelo_chica)
    
        var yy = 300;
        instance_create(x_ini + 239, yy, ob_plataforma_flotante_mediana)
        
        var tipo_basura = irandom(1);
        var xb = x_ini;
        var yb = yy - 10;
        
        switch(tipo_basura){
           
            case 0:{

                instance_create(x_ini + 355, y_ini, ob_enemigo_baba_enorme);

                xb += 240
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 80;}
                                
                break;
            
            }
            
            case 1:{
              
                instance_create(x_ini + 355, yy, ob_enemigo_baba_enorme);
                
                xb += 305;
                repeat(3){ instance_create(xb, y_ini - 8, ob_basura); xb += 70;}
                
                break;
            
            }
        }
        
        break;
    
    }
    
    case 3:{
        
        var xx = x_ini;
        var yy = 200;
        
        xx += instance_create(x_ini, y_ini, ob_plataforma_suelo_mediana).mi_ancho;
        instance_create(xx + 150, y_ini, ob_plataforma_suelo_mediana);
        
        xx = x_ini + 20;
        xx += instance_create(xx, yy, ob_plataforma_flotante_mediana).mi_ancho + 150;
        instance_create(xx, yy, ob_plataforma_flotante_mediana);
        
        var tipo_basura = irandom(1);
        var xb = x_ini + 20;
        var yb = y_ini;
        
        switch(tipo_basura){
           
            case 0:{

                instance_create(x_ini + 140, y_ini, ob_enemigo_baba_grande);
            
                xb += 25;
                yb = yy - 10;
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70; }
                xb += 145;
                repeat(4){ instance_create(xb, yb, ob_basura); xb += 70;}
                
                break;
            
            }
            
            case 1:{
              
                instance_create(x_ini + 125, yy, ob_enemigo_baba_enorme);
                instance_create(x_ini + room_width - 170, yy, ob_enemigo_baba_enorme);
            
                xb = x_ini + 265;
                yb -= 100
                instance_create(xb, y_ini - 50, ob_basura);
                
                xb += 50;
                repeat(4){
                    instance_create(xb, yb, ob_basura);
                    xb += 50;
                }
                
                instance_create(xb, y_ini - 50, ob_basura);
                
            
                break;
                
                break;
            
            }
        }
        
    
        break;
    
    }
    
    case 4:{
    
        instance_create(x_ini, y_ini, ob_plataforma_suelo_completa);
        instance_create(x_ini + 336, y_ini - 96, ob_plataforma_tocon);
        
        instance_create(x_ini + 100, y_ini, ob_enemigo_baba_grande);
        instance_create(x_ini + room_width - 200, y_ini, ob_enemigo_baba_grande);
        
        var tipo_basura = irandom(1);
        var xb = x_ini + 16;
        var yb = y_ini - 150;
        
        switch(tipo_basura){
           
            case 0:{

                
                xb += 320;
                repeat(3){ instance_create(xb, yb, ob_basura); xb += 50;}
                
                break;
            
            }
            
            case 1:{
              
                xb += 20;
                yb += 50;
                repeat(5){ instance_create(xb, yb, ob_basura); xb += 60; }
                xb += 148;
                repeat(5){ instance_create(xb, yb, ob_basura); xb += 60; }
                
                break;
            
            }
        }
        
        break;
    
        break;
          
    }
    
    case 5:{
        
        instance_create(x_ini, y_ini, ob_plataforma_suelo_completa);
        instance_create(x_ini + 30, y_ini - 96, ob_plataforma_tocon);
        instance_create(x_ini + room_width - 130, y_ini - 96, ob_plataforma_tocon);
        instance_create(x_ini + 550, y_ini, ob_cartel);
        
        var tipo_basura = irandom(1);
        var xb = x_ini;
        var yb = y_ini;
        
        switch(tipo_basura){
           
            case 0:{

                instance_create(x_ini + 365 , y_ini, ob_enemigo_baba_grande);
            
                yb -= 100;
                xb += 30;
                repeat(3){ instance_create(xb, yb, ob_basura); xb += 40; }
                
                xb = x_ini + room_width - 124;
                repeat(3){ instance_create(xb, yb, ob_basura); xb += 40; }
                
                break;
            
            }
            
            case 1:{
              
                instance_create(x_ini + 355 , y_ini, ob_enemigo_baba_enorme);
            
                xb += 230;
                yb -= 150;
                repeat(5){ instance_create(xb, yb, ob_basura); xb += 80; }
                break;
            
            }
        }
        
        break;
    
      
    }
    
   

}

#define sc_generar_chunk_plano
///sc_generar_chunk_plano(x_inicial, y_inicial, bool:vel_aumentar)
var x_ini = argument0,
    y_ini = argument1,
    vel_aumentar = argument2;
    
instance_create(x_ini, y_ini, ob_plataforma_suelo_completa);
instance_create(x_ini + room_width - 100, y_ini, ob_cartel);

var xb = x_ini + 64,
    yb = y_ini - 8;

repeat(8){
    instance_create(xb, yb, ob_basura);
    xb += 80;
}

if( vel_aumentar == true ){ aumentar_velocidad = true; }
        