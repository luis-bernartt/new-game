audio_play_sound(snd_music_background, 1, true);
if (!instance_exists(obj_info_box)) {
    instance_create_layer(0, 0, "Instances", obj_info_box);
}