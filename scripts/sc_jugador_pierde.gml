///sc_jugador_pierde()
instance_create(x, y - 20, ob_efecto_humo);

sprite_index = sp_jugador_muere;

audio_stop_sound(sn_jug_salto);
audio_play_sound(sn_jugador_perder, 10, false);

audio_sound_gain(music_principal, 0.5, 1000);

while( y > 460 ){ y--; }
while( place_meeting( x, y , parent_plataforma) ){ x--; }


vel_hor = 0;
vel_ver = 0;

boton_salto = false;
boton_abajo = false;

control_chunks.chunk_mover = false;
background_hspeed[0] = 0;
background_hspeed[1] = 0;
background_hspeed[2] = 0;


with( ob_cartel_puntaje_actual ){ event_perform(ev_other, ev_user0) }

instance_create( (room_width / 2), 32, ob_gameover);

