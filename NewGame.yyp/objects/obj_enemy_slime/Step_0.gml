vsp += gravidade;
x += hsp * direction;
y += vsp;

// Verificação de colisão com o chão
if (place_meeting(x, y + 1, obj_ground)) {
    vsp = 0;
    while (place_meeting(x, y + 1, obj_ground)) {
        y -= 1;
    }
}

// Colisão com as paredes
if (place_meeting(x + direction * hsp, y, obj_wall)) {
    direction *= -1;

    // Corrige a posição após a colisão
    if (direction == 1) {
        while (place_meeting(x + hsp, y, obj_wall)) {
            x -= 1; // Move o inimigo para longe da parede
        }
    } else {
        while (place_meeting(x - hsp, y, obj_wall)) {
            x += 1; // Move o inimigo para longe da parede
        }
    }
}

// Corrigir limites da tela (evitar ultrapassar os limites da tela)
if (x < 0) {
    x = 0;
    direction = 1; // Garante que o inimigo vai para a direita
}

if (x > room_width - sprite_width) {
    x = room_width - sprite_width;
    direction = -1; // Garante que o inimigo vai para a esquerda
}
