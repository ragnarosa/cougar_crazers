//This makes it so when you click on a menu option, it does something!
//Argument0=ID
//Argument1=Number of option
//Argument2=Font the Menu is using
c=argument0
num=argument1
font=argument2
draw_set_font(font)
//if (argument1>1){
if mouse_x>c.x and mouse_x<c.x+string_width(c.slot[num]) {
    if mouse_y>c.y+16*(num+2) and mouse_y<c.y+16*(num+2)+16 {
    questionBox_close(c)
    return true;
    }
    else {
    return false;
    }
} else {
    return false;
}
//}

