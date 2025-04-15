// STEP EVENT DO PLAYER

hsp = 0;

if (keyboard_check(vk_left)) {
    hsp = -vel;
    facing = -1;
}
if (keyboard_check(vk_right)) {
    hsp = vel;
    facing = 1;
}

image_xscale = facing;

vsp += grv;

if (place_meeting(x, y + 1, obj_ground)) {
    vsp = 0;
    pulando = false;
    if (keyboard_check_pressed(vk_up)) {
        vsp = pulo;
        pulando = true;
    }
}

if (keyboard_check_pressed(ord("Z")) && pode_atacar) {
    pode_atacar = false;
    sprite_index = spr_player_attack;
    image_index = 0;

    with (instance_create_layer(x + (facing * 16), y, "Instances", obj_player_hitbox)) {
        direction = other.facing;
        other_ref = other.id;
    }

    alarm[0] = 15;
}

if (!pode_atacar) {

} else if (!place_meeting(x, y + 1, obj_ground)) {
    if (vsp < 0) {
        sprite_index = spr_player_jump;
    } else {
        sprite_index = spr_player_fall;
    }
} else if (hsp != 0) {
    sprite_index = spr_player_run;
} else {
    sprite_index = spr_player_idle;
}

x += hsp;
y += vsp;
