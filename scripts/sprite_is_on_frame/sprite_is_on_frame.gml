function sprite_is_on_frame(_frame) {
    var spd = sprite_get_speed(sprite_index);
    if (sprite_get_speed_type(sprite_index) == spritespeed_framespersecond)
        spd /= game_get_speed(gamespeed_fps);

    return image_index >= _frame &&
        image_index - image_speed * spd < _frame;
}