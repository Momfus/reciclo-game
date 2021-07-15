///sc_iniciar_juego()
if( room == rm_inicio ){

    if( audio_is_playing(music_principal) ){ audio_stop_sound(music_principal); }
    g_musica = audio_play_sound(music_principal, 10, true); 
    audio_sound_gain(g_musica, 0, 0);
    audio_sound_gain(g_musica, 0.7, 1000);

    
    randomize();

}
else{

    audio_sound_gain(music_principal, 1, 1000);
    instance_create( (room_width / 2) + (sprite_get_width(sp_listo_ya) / 2), 160, ob_listo_ya);

    sc_cargar_datos();
    
    g_puntaje_actual = 0;
    g_vel_general = 9;
    
    background_hspeed[0] = -(g_vel_general - 7);
    background_hspeed[1] = -(g_vel_general - 7);
    background_hspeed[2] = -g_vel_general;
    
    instance_create(0, 0, control_chunks);

}
