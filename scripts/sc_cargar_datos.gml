///sc_cargar_datos()
ini_open("datos.save");
    g_puntaje_maximo = ini_read_real("puntaje","puntaje_maximo", 0);
ini_close();

