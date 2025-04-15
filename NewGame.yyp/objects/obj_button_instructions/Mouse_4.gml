var info = instance_find(obj_info_box, 0);
audio_play_sound(snd_click_button, 1, false);
if (info != noone) {
    info.info_text = "Use as setas para se mover e Z para atacar, não morra!";
    info.visible_box = true;
}

