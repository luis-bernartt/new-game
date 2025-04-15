if (alpha > 0.01 && visible_box) {
    var box_x1 = 80;
    var box_y1 = 80;
    var box_x2 = 560;
    var box_y2 = 400;
    var max_width = box_x2 - box_x1 - 20;

    draw_set_alpha(alpha);
    draw_set_color(c_black);
    draw_rectangle_color(box_x1 + 4, box_y1 + 4, box_x2 + 4, box_y2 + 4, c_black, c_black, c_black, c_black, false);

    draw_set_color(make_color_rgb(30, 30, 30));
    draw_roundrect(box_x1, box_y1, box_x2, box_y2, 10);

    draw_set_color(c_white);
    draw_roundrect(box_x1, box_y1, box_x2, box_y2, 10);

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    draw_set_color(c_white);

    var line_height = 16;
    var start_y = box_y1 + 40;
    var words = string_split(info_text, " ");

    var current_line = "";
    var lines = [];

    for (var i = 0; i < array_length_1d(words); i++) {
        var word = words[i];
        var test_line = current_line + " " + word;

        if (string_width(test_line) <= max_width) {
            current_line = test_line;
        } else {
            lines[array_length_1d(lines)] = current_line;
            current_line = word;
        }
    }

    if (current_line != "") {
        lines[array_length_1d(lines)] = current_line;
    }

    for (var i = 0; i < array_length_1d(lines); i++) {
        draw_text(box_x1 + 10, start_y + i * line_height, lines[i]);
    }

    var close_button_x1 = box_x2 - 30;
    var close_button_y1 = box_y1 + 10;

    draw_set_color(c_red);
    draw_text(close_button_x1, close_button_y1, "X");

    draw_set_alpha(1);
}
