///sc_grabar_datos(int: puntaje)
ini_open("datos.save");
    ini_write_real("puntaje","puntaje_maximo", argument0);
ini_close();
