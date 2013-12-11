if (global.paused == 0){

if keyboard_check(vk_left) {
    speed = 5;
    direction = 180;
}
if keyboard_check(vk_right) {
    speed = 5;
    direction = 0;
}
if keyboard_check(vk_up) {
    speed = 5;
    direction = 90;
}
if keyboard_check(vk_down) {
    speed = 5;
    direction = 270;
}

if mouse_check_button_pressed(mb_left) {
    isSwipe = true;
    // store the location of the first mouse press
    x1 = mouse_x;
    y1 = mouse_y;        
}

if isSwipe {
    // store the location of the mouse release
    x2 = mouse_x;
    y2 = mouse_y;
    if mouse_check_button_released(mb_left) {
        squaredDistance = (x2 - x1)*(x2 - x1) + (y2 - y1)*(y2 - y1);
        distance = sqrt(squaredDistance);
        // 32 pixel is the minimum length of a swipe
        if (squaredDistance > 32*32) {
            isSwipe = false;
            speed = 5;
            sinTheta = (y2 - y1)/distance;
            cosTheta = (x2 - x1)/distance;
            oneOverRadicalTwo = 1/sqrt(2);
            if (sinTheta > -oneOverRadicalTwo) and (sinTheta < oneOverRadicalTwo) and (cosTheta > 0) { direction = 0; }
            if (sinTheta > -oneOverRadicalTwo) and (sinTheta < oneOverRadicalTwo) and (cosTheta < 0) { direction = 180; }
            if (cosTheta > -oneOverRadicalTwo) and (cosTheta < oneOverRadicalTwo) and (sinTheta > 0) { direction = 270; }
            if (cosTheta > -oneOverRadicalTwo) and (cosTheta < oneOverRadicalTwo) and (sinTheta < 0) { direction = 90; }
        }        
    }
}

}
