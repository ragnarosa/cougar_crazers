if (global.menuOpen==1){

answer = global.solution[global.questionID];

pickedAnswer = "0";

if questionBox_execute(global.menuID,1,questionBox_font)=true {
pickedAnswer = "1";
} else 
if questionBox_execute(global.menuID,2,questionBox_font)=true {
pickedAnswer = "2";
} else
if questionBox_execute(global.menuID,3,questionBox_font)=true {
pickedAnswer = "3";
} else
if questionBox_execute(global.menuID,4,questionBox_font)=true {
pickedAnswer = "4";

}

if (pickedAnswer == answer){
global.scoreMul = global.scoreMul + 0.1;
show_message('Correct!');
} else {
global.scoreMul = 1;
show_message('Wrong!');
}
global.paused = 0;
enemy.speed=3;
player.speed=5;
exit;
}

