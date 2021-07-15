///sc_armar_arreglo_flote()
var contador = 0;
var num = 0;

arreglo_yflote = 0;
var i;
for( i = 0; contador < pi*2; i++ ){

    contador += pi/10;
    num[i] = contador;
    

}

for( var j = 0; j < i; j++ ){ arreglo_yflote[j] = sin(num[j]); }
