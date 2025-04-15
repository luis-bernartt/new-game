if (visible_box && mouse_check_button_pressed(mb_left)) {
    var close_button_x1 = 560 - 30; // Posição X do botão "X"
    var close_button_y1 = 80 + 10;  // Posição Y do botão "X"
    var close_button_x2 = close_button_x1 + 20; // Largura do botão
    var close_button_y2 = close_button_y1 + 20; // Altura do botão

    if (mouse_x >= close_button_x1 && mouse_x <= close_button_x2 &&
        mouse_y >= close_button_y1 && mouse_y <= close_button_y2) {
        visible_box = false;
    }
}
