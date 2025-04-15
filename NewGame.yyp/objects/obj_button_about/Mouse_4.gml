var info = instance_find(obj_info_box, 0);
audio_play_sound(snd_click_button, 1, false);
if (info != noone) {
    info.info_text = "Feito por Luís Henrique e Guilherme Vivian para o projeto da faculdade.";
    info.visible_box = true;
}