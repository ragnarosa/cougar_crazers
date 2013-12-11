//Don't remove this code - it draws the question menu!
if (global.menuOpen==1){

wide=0
width[0]=0
maxwide=0
for(i=1;i<=amount;i+=1) {
wide+=1
width[wide]=string_width(slot[i])
if width[wide]>maxwide {
maxwide=width[wide]
}
}
draw_set_color(c_white)
draw_rectangle(x-2,y+14,x+maxwide+2,y+16*amount+16+16,false)
draw_set_color(c_black)
draw_rectangle(x-2,y+14,x+maxwide+2,y+16*amount+16+16,true)
draw_text(x,y+16*1,slot[1])
draw_text(x,y+16*2,'')
for(i=2;i<=amount;i+=1) {
draw_text(x,y+16*(i+1),slot[i])
}
}
